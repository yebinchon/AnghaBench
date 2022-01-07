; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_pll_8398.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_gx.c_aty_set_pll_8398.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%union.aty_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atyfb_par = type { i32 }

@CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@DAC_CNTL = common dso_local global i64 0, align 8
@DAC_EXT_SEL_RS2 = common dso_local global i8 0, align 1
@DAC_EXT_SEL_RS3 = common dso_local global i8 0, align 1
@DAC_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %union.aty_pll*)* @aty_set_pll_8398 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_set_pll_8398(%struct.fb_info* %0, %union.aty_pll* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %union.aty_pll*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %union.aty_pll* %1, %union.aty_pll** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.atyfb_par*
  store %struct.atyfb_par* %13, %struct.atyfb_par** %5, align 8
  %14 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %15 = add nsw i64 %14, 3
  %16 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %17 = call signext i8 @aty_ld_8(i64 %15, %struct.atyfb_par* %16)
  store i8 %17, i8* %8, align 1
  %18 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %19 = add nsw i64 %18, 3
  %20 = load i8, i8* %8, align 1
  %21 = sext i8 %20 to i32
  %22 = load i32, i32* @CRTC_EXT_DISP_EN, align 4
  %23 = ashr i32 %22, 24
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i8
  %26 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %27 = call i32 @aty_st_8(i64 %19, i8 signext %25, %struct.atyfb_par* %26)
  %28 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %29 = bitcast %union.aty_pll* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %union.aty_pll*, %union.aty_pll** %4, align 8
  %33 = bitcast %union.aty_pll* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* @DAC_CNTL, align 8
  %37 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %38 = call signext i8 @aty_ld_8(i64 %36, %struct.atyfb_par* %37)
  store i8 %38, i8* %9, align 1
  %39 = load i64, i64* @DAC_CNTL, align 8
  %40 = load i8, i8* %9, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @DAC_EXT_SEL_RS2, align 1
  %43 = sext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = load i8, i8* @DAC_EXT_SEL_RS3, align 1
  %46 = sext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = trunc i32 %47 to i8
  %49 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %50 = call i32 @aty_st_8(i64 %39, i8 signext %48, %struct.atyfb_par* %49)
  %51 = load i64, i64* @DAC_REGS, align 8
  %52 = load i32, i32* %7, align 4
  %53 = trunc i32 %52 to i8
  %54 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %55 = call i32 @aty_st_8(i64 %51, i8 signext %53, %struct.atyfb_par* %54)
  %56 = load i64, i64* @DAC_REGS, align 8
  %57 = add nsw i64 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 65280
  %60 = ashr i32 %59, 8
  %61 = trunc i32 %60 to i8
  %62 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %63 = call i32 @aty_st_8(i64 %57, i8 signext %61, %struct.atyfb_par* %62)
  %64 = load i64, i64* @DAC_REGS, align 8
  %65 = add nsw i64 %64, 1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %70 = call i32 @aty_st_8(i64 %65, i8 signext %68, %struct.atyfb_par* %69)
  %71 = load i64, i64* @DAC_CNTL, align 8
  %72 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %73 = call signext i8 @aty_ld_8(i64 %71, %struct.atyfb_par* %72)
  store i8 %73, i8* %9, align 1
  %74 = load i64, i64* @DAC_CNTL, align 8
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @DAC_EXT_SEL_RS2, align 1
  %78 = sext i8 %77 to i32
  %79 = xor i32 %78, -1
  %80 = and i32 %76, %79
  %81 = load i8, i8* @DAC_EXT_SEL_RS3, align 1
  %82 = sext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = trunc i32 %83 to i8
  %85 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %86 = call i32 @aty_st_8(i64 %74, i8 signext %84, %struct.atyfb_par* %85)
  %87 = load i64, i64* @DAC_REGS, align 8
  %88 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %89 = call signext i8 @aty_ld_8(i64 %87, %struct.atyfb_par* %88)
  %90 = load i64, i64* @CRTC_GEN_CNTL, align 8
  %91 = add nsw i64 %90, 3
  %92 = load i8, i8* %8, align 1
  %93 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %94 = call i32 @aty_st_8(i64 %91, i8 signext %92, %struct.atyfb_par* %93)
  ret void
}

declare dso_local signext i8 @aty_ld_8(i64, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_8(i64, i8 signext, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
