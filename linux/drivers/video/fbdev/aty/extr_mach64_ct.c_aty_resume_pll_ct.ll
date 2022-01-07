; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_ct.c_aty_resume_pll_ct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_ct.c_aty_resume_pll_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.atyfb_par* }
%struct.atyfb_par = type { i64, i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@SCLK_FB_DIV = common dso_local global i32 0, align 4
@SPLL_CNTL2 = common dso_local global i32 0, align 4
@PLL_REF_DIV = common dso_local global i32 0, align 4
@PLL_GEN_CNTL = common dso_local global i32 0, align 4
@MCLK_FB_DIV = common dso_local global i32 0, align 4
@PLL_EXT_CNTL = common dso_local global i32 0, align 4
@EXT_VPLL_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %union.aty_pll*)* @aty_resume_pll_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_resume_pll_ct(%struct.fb_info* %0, %union.aty_pll* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %union.aty_pll*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %union.aty_pll* %1, %union.aty_pll** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.atyfb_par*, %struct.atyfb_par** %7, align 8
  store %struct.atyfb_par* %8, %struct.atyfb_par** %5, align 8
  %9 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %10 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %13 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @SCLK_FB_DIV, align 4
  %18 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %19 = bitcast %union.aty_pll* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %23 = call i32 @aty_st_pll_ct(i32 %17, i32 %21, %struct.atyfb_par* %22)
  %24 = load i32, i32* @SPLL_CNTL2, align 4
  %25 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %26 = bitcast %union.aty_pll* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %30 = call i32 @aty_st_pll_ct(i32 %24, i32 %28, %struct.atyfb_par* %29)
  %31 = call i32 @mdelay(i32 5)
  br label %32

32:                                               ; preds = %16, %2
  %33 = load i32, i32* @PLL_REF_DIV, align 4
  %34 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %35 = bitcast %union.aty_pll* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %39 = call i32 @aty_st_pll_ct(i32 %33, i32 %37, %struct.atyfb_par* %38)
  %40 = load i32, i32* @PLL_GEN_CNTL, align 4
  %41 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %42 = bitcast %union.aty_pll* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %46 = call i32 @aty_st_pll_ct(i32 %40, i32 %44, %struct.atyfb_par* %45)
  %47 = load i32, i32* @MCLK_FB_DIV, align 4
  %48 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %49 = bitcast %union.aty_pll* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %53 = call i32 @aty_st_pll_ct(i32 %47, i32 %51, %struct.atyfb_par* %52)
  %54 = load i32, i32* @PLL_EXT_CNTL, align 4
  %55 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %56 = bitcast %union.aty_pll* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %60 = call i32 @aty_st_pll_ct(i32 %54, i32 %58, %struct.atyfb_par* %59)
  %61 = load i32, i32* @EXT_VPLL_CNTL, align 4
  %62 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %63 = bitcast %union.aty_pll* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %67 = call i32 @aty_st_pll_ct(i32 %61, i32 %65, %struct.atyfb_par* %66)
  ret void
}

declare dso_local i32 @aty_st_pll_ct(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
