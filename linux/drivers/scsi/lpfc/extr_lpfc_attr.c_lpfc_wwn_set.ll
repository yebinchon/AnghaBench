; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_wwn_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_wwn_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@WWN_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*)* @lpfc_wwn_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_wwn_set(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %11, 1
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %50, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %24, 18
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 17
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 120
  br i1 %34, label %50, label %35

35:                                               ; preds = %29, %26
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %36, 18
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 48
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 120
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38, %29, %23, %20
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %4, align 8
  br label %142

53:                                               ; preds = %44, %35
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @WWN_SZ, align 4
  %56 = call i32 @memset(i8* %54, i32 0, i32 %55)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %138, %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp ult i32 %58, 16
  br i1 %59, label %60, label %141

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sge i32 %63, 97
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 102
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 4
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 97
  %78 = add nsw i32 %77, 10
  %79 = or i32 %72, %78
  store i32 %79, i32* %9, align 4
  br label %124

80:                                               ; preds = %65, %60
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sge i32 %83, 65
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 70
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = shl i32 %91, 4
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  %95 = load i8, i8* %93, align 1
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, 65
  %98 = add nsw i32 %97, 10
  %99 = or i32 %92, %98
  store i32 %99, i32* %9, align 4
  br label %123

100:                                              ; preds = %85, %80
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp sge i32 %103, 48
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sle i32 %108, 57
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  %112 = shl i32 %111, 4
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  %115 = load i8, i8* %113, align 1
  %116 = sext i8 %115 to i32
  %117 = sub nsw i32 %116, 48
  %118 = or i32 %112, %117
  store i32 %118, i32* %9, align 4
  br label %122

119:                                              ; preds = %105, %100
  %120 = load i64, i64* @EINVAL, align 8
  %121 = sub i64 0, %120
  store i64 %121, i64* %4, align 8
  br label %142

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %90
  br label %124

124:                                              ; preds = %123, %70
  %125 = load i32, i32* %8, align 4
  %126 = urem i32 %125, 2
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 255
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = udiv i32 %133, 2
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 %131, i8* %136, align 1
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %128, %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %57

141:                                              ; preds = %57
  store i64 0, i64* %4, align 8
  br label %142

142:                                              ; preds = %141, %119, %50
  %143 = load i64, i64* %4, align 8
  ret i64 %143
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
