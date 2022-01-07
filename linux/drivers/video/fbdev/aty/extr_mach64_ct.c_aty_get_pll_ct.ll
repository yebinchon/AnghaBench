; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_ct.c_aty_get_pll_ct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_ct.c_aty_get_pll_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.atyfb_par = type { i32 }

@CLOCK_CNTL = common dso_local global i32 0, align 4
@VCLK_POST_DIV = common dso_local global i64 0, align 8
@PLL_EXT_CNTL = common dso_local global i64 0, align 8
@VCLK0_FB_DIV = common dso_local global i64 0, align 8
@PLL_REF_DIV = common dso_local global i64 0, align 8
@MCLK_FB_DIV = common dso_local global i64 0, align 8
@PLL_GEN_CNTL = common dso_local global i64 0, align 8
@PLL_VCLK_CNTL = common dso_local global i64 0, align 8
@GTB_DSP = common dso_local global i32 0, align 4
@DSP_CONFIG = common dso_local global i32 0, align 4
@DSP_ON_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %union.aty_pll*)* @aty_get_pll_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_get_pll_ct(%struct.fb_info* %0, %union.aty_pll* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %union.aty_pll*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %union.aty_pll* %1, %union.aty_pll** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.atyfb_par*
  store %struct.atyfb_par* %11, %struct.atyfb_par** %5, align 8
  %12 = load i32, i32* @CLOCK_CNTL, align 4
  %13 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %14 = call i32 @aty_ld_8(i32 %12, %struct.atyfb_par* %13)
  %15 = and i32 %14, 3
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @VCLK_POST_DIV, align 8
  %19 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %20 = call i32 @aty_ld_pll_ct(i64 %18, %struct.atyfb_par* %19)
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %20, %21
  %23 = and i32 %22, 3
  %24 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %25 = bitcast %union.aty_pll* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i64, i64* @PLL_EXT_CNTL, align 8
  %28 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %29 = call i32 @aty_ld_pll_ct(i64 %27, %struct.atyfb_par* %28)
  %30 = and i32 %29, 15
  %31 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %32 = bitcast %union.aty_pll* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i64, i64* @VCLK0_FB_DIV, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %39 = call i32 @aty_ld_pll_ct(i64 %37, %struct.atyfb_par* %38)
  %40 = and i32 %39, 255
  %41 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %42 = bitcast %union.aty_pll* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load i64, i64* @PLL_REF_DIV, align 8
  %45 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %46 = call i32 @aty_ld_pll_ct(i64 %44, %struct.atyfb_par* %45)
  %47 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %48 = bitcast %union.aty_pll* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* @MCLK_FB_DIV, align 8
  %51 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %52 = call i32 @aty_ld_pll_ct(i64 %50, %struct.atyfb_par* %51)
  %53 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %54 = bitcast %union.aty_pll* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 8
  %56 = load i64, i64* @PLL_GEN_CNTL, align 8
  %57 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %58 = call i32 @aty_ld_pll_ct(i64 %56, %struct.atyfb_par* %57)
  %59 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %60 = bitcast %union.aty_pll* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load i64, i64* @PLL_VCLK_CNTL, align 8
  %63 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %64 = call i32 @aty_ld_pll_ct(i64 %62, %struct.atyfb_par* %63)
  %65 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %66 = bitcast %union.aty_pll* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @GTB_DSP, align 4
  %69 = call i64 @M64_HAS(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %2
  %72 = load i32, i32* @DSP_CONFIG, align 4
  %73 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %74 = call i8* @aty_ld_le32(i32 %72, %struct.atyfb_par* %73)
  %75 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %76 = bitcast %union.aty_pll* %75 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 8
  store i8* %74, i8** %77, align 8
  %78 = load i32, i32* @DSP_ON_OFF, align 4
  %79 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %80 = call i8* @aty_ld_le32(i32 %78, %struct.atyfb_par* %79)
  %81 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %82 = bitcast %union.aty_pll* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 7
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %71, %2
  ret void
}

declare dso_local i32 @aty_ld_8(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_ld_pll_ct(i64, %struct.atyfb_par*) #1

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i8* @aty_ld_le32(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
