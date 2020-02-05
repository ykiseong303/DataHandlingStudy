#벡터 생성
vector1 <- c(1,2,3)
vector1

#벡터의 구조 확인
str(vector1)

#숫자 1과 벡터c(1)의 비교
# > 결과 true
item <- 1
vec_item <-c(1)
identical(item,vec_item)

# 벡터의 타입 확인
mode(vector1)

# 범주형 데이터 
과일 <- c("사과","오렌지","딸기","딸기","사과","오렌지","사과","오렌지")
과일_범주 <- factor(과일)
print(과일_범주)
str(과일_범주)

# 범주형 데이터를 문자 벡터로 변환
과일_범주1 <- as.character(과일_범주)
과일_범주1
# 범주형 데이터를 숫자 벡터로 변환
과일_범주2 <- as.numeric(과일_범주)
과일_범주2
# 문자로 변환할 때는 Levels에 매칭된 문자열, 숫자는 내부 코드 값으로 변환


# 범주를 직접 지정
# Levels에 지정한 순서대로 범주로 들어감
과일_범주3 <- factor(과일_범주,levels=c("딸기","사과"))
과일_범주3

# 서열척도
서열 <-c("하","중","상")
서열_범주 <- factor(서열,ordered=T)
서열_범주
# 서열을 직접 지정하기 위해서 levels옵션에 직접 넣으면 됨
서열_범주2 <- factor(서열, levels=c("하","중","상"),ordered=T)
서열_범주2

# 벡터 합치기
vec1 <- c(1:5)
vec1 <- c(vec1,6:10)
vec1

# 벡터 중간에 값 넣기
vec2 <- append(vec1,c(100:103),2)
vec2

# 데이터 프레임
a <- c(1:5)
b <- c(2:6)
c <- c(3:7)
d <- c("안","녕","하","세","요")
e <- data.frame(d,a,b,c)
e

# 데이터 프레임 생성시 문자는 default로 factor로 지정
str(e)
# stingAsFactors 옵션을 사용하면 char형태로 지정 가능
e <- data.frame(d,a,b,c, stringsAsFactors = FALSE)
str(e)

# 데이터의 접근
want <- head(iris,10)
print(want[c(1:5),c(1:2)])
# 추출 칼럼이 하나인 경우 자동으로 벡터로 변환
print(want[c(1:5),c(1)])
# drop 옵션 사용하면 df 유지
print(want[c(1:5),c(1),drop=FALSE])

# 열에 접근하기 : $
# 벡터로 지정됨
want$Sepal.Length

# subset 함수로 조건 검색
want2 <- subset(want,subset = Sepal.Length > 4.9)
want2
# 특정 조건 or 조건에서 걸러진 확장영역 선택
want3 <- subset(want, subset=Sepal.Length > 4.9,Species)
want3
# subset에서는 열 접근 $필요 없음
# 다만 값의 변경이 불가
# []는 접근도되고 변경도 되지만, $사용해야함

want <- want[,1:2]
want

# 정렬 
o_want<- order(want$Sepal.Length)
o_want <- want[order(want$Sepal.Length),]
o_want

# 정렬된 순번 넣기
o_want <- data.frame(want,order = order(o_want$Sepal.Length))
o_want