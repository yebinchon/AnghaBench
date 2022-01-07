; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_ct.c_aty_var_to_pll_ct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_ct.c_aty_var_to_pll_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { i32 }
%struct.atyfb_par = type { i32 }

@GTB_DSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i32, %union.aty_pll*)* @aty_var_to_pll_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_var_to_pll_ct(%struct.fb_info* %0, i32 %1, i32 %2, %union.aty_pll* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.aty_pll*, align 8
  %10 = alloca %struct.atyfb_par*, align 8
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.aty_pll* %3, %union.aty_pll** %9, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.atyfb_par*
  store %struct.atyfb_par* %15, %struct.atyfb_par** %10, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %union.aty_pll*, %union.aty_pll** %9, align 8
  %19 = bitcast %union.aty_pll* %18 to i32*
  %20 = call i32 @aty_valid_pll_ct(%struct.fb_info* %16, i32 %17, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %38

24:                                               ; preds = %4
  %25 = load i32, i32* @GTB_DSP, align 4
  %26 = call i64 @M64_HAS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %union.aty_pll*, %union.aty_pll** %9, align 8
  %32 = bitcast %union.aty_pll* %31 to i32*
  %33 = call i32 @aty_dsp_gt(%struct.fb_info* %29, i32 %30, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %28, %24
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %35, %22
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @aty_valid_pll_ct(%struct.fb_info*, i32, i32*) #1

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @aty_dsp_gt(%struct.fb_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
