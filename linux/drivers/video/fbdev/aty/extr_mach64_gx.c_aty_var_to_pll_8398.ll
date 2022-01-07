; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_var_to_pll_8398.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_var_to_pll_8398.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@MIN_FREQ_2595 = common dso_local global i32 0, align 4
@MAX_FREQ_2595 = common dso_local global i32 0, align 4
@REF_FREQ_2595 = common dso_local global i32 0, align 4
@MIN_M = common dso_local global i32 0, align 4
@MAX_M = common dso_local global i32 0, align 4
@MIN_N = common dso_local global i32 0, align 4
@MAX_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i32, %union.aty_pll*)* @aty_var_to_pll_8398 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_var_to_pll_8398(%struct.fb_info* %0, i32 %1, i32 %2, %union.aty_pll* %3) #0 {
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.aty_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.aty_pll* %3, %union.aty_pll** %8, align 8
  store i32 0, i32* %22, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 100000000, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @MIN_FREQ_2595, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* @MAX_FREQ_2595, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* @REF_FREQ_2595, align 4
  store i32 %30, i32* %19, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 224, i32* %16, align 4
  br label %123

34:                                               ; preds = %4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 %47, 256
  %49 = sdiv i32 %48, 100
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %55, %46
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %17, align 4
  %53 = shl i32 %52, 3
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* %15, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %22, align 4
  br label %50

60:                                               ; preds = %50
  %61 = load i32, i32* %22, align 4
  %62 = shl i32 1, %61
  store i32 %62, i32* %25, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %63 = load i32, i32* @MIN_M, align 4
  store i32 %63, i32* %20, align 4
  br label %64

64:                                               ; preds = %112, %60
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* @MAX_M, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %64
  %69 = load i32, i32* @MIN_N, align 4
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %108, %68
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* @MAX_N, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  store i32 938356, i32* %9, align 4
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 %75, 8
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %25, align 4
  %80 = mul nsw i32 %79, 256
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %81, 2
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %74
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %13, align 4
  br label %99

95:                                               ; preds = %74
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %20, align 4
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %21, align 4
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %21, align 4
  br label %70

111:                                              ; preds = %70
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %20, align 4
  br label %64

115:                                              ; preds = %64
  %116 = load i32, i32* %22, align 4
  %117 = shl i32 %116, 6
  %118 = load i32, i32* %23, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %24, align 4
  %121 = shl i32 %120, 8
  %122 = add nsw i32 %119, %121
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %115, %33
  %124 = load i32, i32* %16, align 4
  %125 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %126 = bitcast %union.aty_pll* %125 to %struct.TYPE_2__*
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %129 = bitcast %union.aty_pll* %128 to %struct.TYPE_2__*
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %132 = bitcast %union.aty_pll* %131 to %struct.TYPE_2__*
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %136 = bitcast %union.aty_pll* %135 to %struct.TYPE_2__*
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
