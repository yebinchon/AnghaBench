; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_check_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_check_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"conn_write: too long\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"conn_write: invalid character %02x\0A\00", align 1
@iucvMagic_ascii = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*)* @netiucv_check_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netiucv_check_user(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 46)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 26
  br i1 %18, label %41, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = icmp sgt i64 %24, 8
  br i1 %25, label %41, label %26

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8*, i8** %10, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = icmp sgt i64 %33, 18
  br i1 %34, label %41, label %35

35:                                               ; preds = %26, %4
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %39, 9
  br i1 %40, label %41, label %46

41:                                               ; preds = %38, %26, %19, %16
  %42 = load i32, i32* @setup, align 4
  %43 = call i32 @IUCV_DBF_TEXT(i32 %42, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %173

46:                                               ; preds = %38, %35
  store i32 0, i32* %11, align 4
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %94, %46
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 46
  br label %61

61:                                               ; preds = %56, %51, %48
  %62 = phi i1 [ false, %51 ], [ false, %48 ], [ %60, %56 ]
  br i1 %62, label %63, label %99

63:                                               ; preds = %61
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isalnum(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 36
  br i1 %72, label %73, label %81

73:                                               ; preds = %68, %63
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call signext i8 @toupper(i8 signext %75)
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  br label %94

81:                                               ; preds = %68
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %99

87:                                               ; preds = %81
  %88 = load i32, i32* @setup, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @IUCV_DBF_TEXT_(i32 %88, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 signext %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %173

94:                                               ; preds = %73
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  br label %48

99:                                               ; preds = %86, %61
  br label %100

100:                                              ; preds = %103, %99
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 32, i8* %108, align 1
  br label %100

109:                                              ; preds = %100
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 8
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 46
  br i1 %115, label %116, label %164

116:                                              ; preds = %109
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %143, %116
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %122, %119
  %128 = phi i1 [ false, %119 ], [ %126, %122 ]
  br i1 %128, label %129, label %148

129:                                              ; preds = %127
  %130 = load i8*, i8** %10, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %148

135:                                              ; preds = %129
  %136 = load i8*, i8** %10, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call signext i8 @toupper(i8 signext %137)
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 %138, i8* %142, align 1
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = load i8*, i8** %10, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %10, align 8
  br label %119

148:                                              ; preds = %134, %127
  br label %149

149:                                              ; preds = %157, %148
  %150 = load i32, i32* %11, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %153, 16
  br label %155

155:                                              ; preds = %152, %149
  %156 = phi i1 [ false, %149 ], [ %154, %152 ]
  br i1 %156, label %157, label %163

157:                                              ; preds = %155
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 32, i8* %162, align 1
  br label %149

163:                                              ; preds = %155
  br label %168

164:                                              ; preds = %109
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* @iucvMagic_ascii, align 4
  %167 = call i32 @memcpy(i8* %165, i32 %166, i32 16)
  br label %168

168:                                              ; preds = %164, %163
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 16
  store i8 0, i8* %170, align 1
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @ASCEBC(i8* %171, i32 16)
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %168, %87, %41
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @IUCV_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @IUCV_DBF_TEXT_(i32, i32, i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
