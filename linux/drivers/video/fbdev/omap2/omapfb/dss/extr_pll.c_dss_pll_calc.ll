; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_pll.c_dss_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { %struct.dss_pll_hw* }
%struct.dss_pll_hw = type { i64, i64, i64, i32, i32 }

@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_calc(%struct.dss_pll* %0, i64 %1, i64 %2, i64 %3, i64 (i32, i32, i64, i64, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dss_pll*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64 (i32, i32, i64, i64, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dss_pll_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.dss_pll* %0, %struct.dss_pll** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 (i32, i32, i64, i64, i8*)* %4, i64 (i32, i32, i64, i64, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %26 = load %struct.dss_pll*, %struct.dss_pll** %8, align 8
  %27 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %26, i32 0, i32 0
  %28 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %27, align 8
  store %struct.dss_pll_hw* %28, %struct.dss_pll_hw** %14, align 8
  %29 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %30 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %23, align 8
  %32 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %33 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %24, align 8
  %35 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %36 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %25, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %25, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @DIV_ROUND_UP(i64 %38, i32 %40)
  %42 = call i32 @max(i64 %41, i64 1)
  store i32 %42, i32* %16, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %24, align 8
  %45 = udiv i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %48 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @min(i32 %46, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %6
  %54 = load i64, i64* %11, align 8
  br label %57

55:                                               ; preds = %6
  %56 = load i64, i64* @ULONG_MAX, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  store i64 %58, i64* %11, align 8
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %114, %57
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %117

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %65, %67
  store i64 %68, i64* %21, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %21, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i64 @DIV_ROUND_UP(i64 %69, i32 %71)
  %73 = call i64 @DIV_ROUND_UP(i64 %72, i32 2)
  %74 = call i32 @max(i64 %73, i64 1)
  store i32 %74, i32* %19, align 4
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %21, align 8
  %77 = udiv i64 %75, %76
  %78 = udiv i64 %77, 2
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %23, align 8
  %81 = load i64, i64* %21, align 8
  %82 = udiv i64 %80, %81
  %83 = udiv i64 %82, 2
  %84 = trunc i64 %83 to i32
  %85 = load %struct.dss_pll_hw*, %struct.dss_pll_hw** %14, align 8
  %86 = getelementptr inbounds %struct.dss_pll_hw, %struct.dss_pll_hw* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @min3(i32 %79, i32 %84, i32 %87)
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %19, align 4
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %110, %64
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load i32, i32* %18, align 4
  %96 = mul nsw i32 2, %95
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %21, align 8
  %99 = mul i64 %97, %98
  store i64 %99, i64* %22, align 8
  %100 = load i64 (i32, i32, i64, i64, i8*)*, i64 (i32, i32, i64, i64, i8*)** %12, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i64, i64* %21, align 8
  %104 = load i64, i64* %22, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 %100(i32 %101, i32 %102, i64 %103, i64 %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  store i32 1, i32* %7, align 4
  br label %118

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  br label %90

113:                                              ; preds = %90
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %60

117:                                              ; preds = %60
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %108
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @max(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @min3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
