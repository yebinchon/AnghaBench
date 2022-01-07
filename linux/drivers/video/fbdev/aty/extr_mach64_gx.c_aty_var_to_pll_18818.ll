; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_var_to_pll_18818.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_var_to_pll_18818.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@MAX_FREQ_2595 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ABS_MIN_FREQ_2595 = common dso_local global i32 0, align 4
@MIN_FREQ_2595 = common dso_local global i32 0, align 4
@REF_DIV_2595 = common dso_local global i32 0, align 4
@REF_FREQ_2595 = common dso_local global i32 0, align 4
@N_ADJ_2595 = common dso_local global i32 0, align 4
@STOP_BITS_2595 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i32, %union.aty_pll*)* @aty_var_to_pll_18818 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_var_to_pll_18818(%struct.fb_info* %0, i32 %1, i32 %2, %union.aty_pll* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.aty_pll*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.aty_pll* %3, %union.aty_pll** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 100000000, %13
  store i32 %14, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MAX_FREQ_2595, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @MAX_FREQ_2595, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %91

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @ABS_MIN_FREQ_2595, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %91

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MIN_FREQ_2595, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %12, align 4
  br label %30

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 1000
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @REF_DIV_2595, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @REF_FREQ_2595, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 500
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sdiv i32 %51, 1000
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %72

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @N_ADJ_2595, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %70 [
    i32 1, label %60
    i32 2, label %63
    i32 4, label %66
    i32 8, label %69
  ]

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, 1536
  store i32 %62, i32* %11, align 4
  br label %71

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, 1024
  store i32 %65, i32* %11, align 4
  br label %71

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, 512
  store i32 %68, i32* %11, align 4
  br label %71

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %55, %69
  br label %71

71:                                               ; preds = %70, %66, %63, %60
  br label %72

72:                                               ; preds = %71, %41
  %73 = load i32, i32* @STOP_BITS_2595, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %union.aty_pll*, %union.aty_pll** %9, align 8
  %78 = bitcast %union.aty_pll* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %union.aty_pll*, %union.aty_pll** %9, align 8
  %81 = bitcast %union.aty_pll* %80 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %union.aty_pll*, %union.aty_pll** %9, align 8
  %85 = bitcast %union.aty_pll* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %union.aty_pll*, %union.aty_pll** %9, align 8
  %89 = bitcast %union.aty_pll* %88 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %72, %26, %18
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
