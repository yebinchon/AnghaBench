; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_var_to_pll_408.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_var_to_pll_408.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i16, i32, i64 }

@MIN_FREQ_2595 = common dso_local global i32 0, align 4
@MAX_FREQ_2595 = common dso_local global i32 0, align 4
@REF_FREQ_2595 = common dso_local global i32 0, align 4
@MIN_N_408 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i32, %union.aty_pll*)* @aty_var_to_pll_408 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_var_to_pll_408(%struct.fb_info* %0, i32 %1, i32 %2, %union.aty_pll* %3) #0 {
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
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.aty_pll* %3, %union.aty_pll** %8, align 8
  store i16 0, i16* %18, align 2
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 100000000, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @MIN_FREQ_2595, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @MAX_FREQ_2595, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @REF_FREQ_2595, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 255, i32* %10, align 4
  br label %115

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %46, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 3
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load i16, i16* %18, align 2
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, 64
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %18, align 2
  br label %41

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @MIN_N_408, align 4
  %57 = add nsw i32 %56, 2
  %58 = mul nsw i32 %55, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 %59, 1
  %61 = trunc i32 %60 to i16
  %62 = sext i16 %61 to i32
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @MIN_N_408, align 4
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %19, align 2
  store i32 65535, i32* %17, align 4
  br label %67

67:                                               ; preds = %108, %53
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = srem i32 %69, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = and i32 %75, 65535
  %77 = icmp sle i32 %76, 255
  br i1 %77, label %78, label %102

78:                                               ; preds = %67
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %17, align 4
  %84 = load i16, i16* %18, align 2
  %85 = sext i16 %84 to i32
  %86 = and i32 %85, -64
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %18, align 2
  %88 = load i16, i16* %19, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* %18, align 2
  %91 = sext i16 %90 to i32
  %92 = or i32 %91, %89
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %18, align 2
  %94 = load i16, i16* %18, align 2
  %95 = sext i16 %94 to i32
  %96 = and i32 %95, 255
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, 255
  %99 = shl i32 %98, 8
  %100 = add nsw i32 %96, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %18, align 2
  br label %102

102:                                              ; preds = %82, %78, %67
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %14, align 4
  %106 = load i16, i16* %19, align 2
  %107 = add i16 %106, 1
  store i16 %107, i16* %19, align 2
  br label %108

108:                                              ; preds = %102
  %109 = load i16, i16* %19, align 2
  %110 = sext i16 %109 to i32
  %111 = icmp sle i32 %110, 32
  br i1 %111, label %67, label %112

112:                                              ; preds = %108
  %113 = load i16, i16* %18, align 2
  %114 = sext i16 %113 to i32
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %112, %27
  %116 = load i32, i32* %10, align 4
  %117 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %118 = bitcast %union.aty_pll* %117 to %struct.TYPE_2__*
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %121 = bitcast %union.aty_pll* %120 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load i16, i16* %18, align 2
  %124 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %125 = bitcast %union.aty_pll* %124 to %struct.TYPE_2__*
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i16 %123, i16* %126, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %union.aty_pll*, %union.aty_pll** %8, align 8
  %129 = bitcast %union.aty_pll* %128 to %struct.TYPE_2__*
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
