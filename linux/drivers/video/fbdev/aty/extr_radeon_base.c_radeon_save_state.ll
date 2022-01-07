; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32 }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@CRTC_MORE_CNTL = common dso_local global i32 0, align 4
@DAC_CNTL = common dso_local global i32 0, align 4
@CRTC_H_TOTAL_DISP = common dso_local global i32 0, align 4
@CRTC_H_SYNC_STRT_WID = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_DISP = common dso_local global i32 0, align 4
@CRTC_V_SYNC_STRT_WID = common dso_local global i32 0, align 4
@CRTC_PITCH = common dso_local global i32 0, align 4
@SURFACE_CNTL = common dso_local global i32 0, align 4
@FP_CRTC_H_TOTAL_DISP = common dso_local global i32 0, align 4
@FP_CRTC_V_TOTAL_DISP = common dso_local global i32 0, align 4
@FP_GEN_CNTL = common dso_local global i32 0, align 4
@FP_H_SYNC_STRT_WID = common dso_local global i32 0, align 4
@FP_HORZ_STRETCH = common dso_local global i32 0, align 4
@FP_V_SYNC_STRT_WID = common dso_local global i32 0, align 4
@FP_VERT_STRETCH = common dso_local global i32 0, align 4
@LVDS_GEN_CNTL = common dso_local global i32 0, align 4
@LVDS_PLL_CNTL = common dso_local global i32 0, align 4
@TMDS_CRC = common dso_local global i32 0, align 4
@TMDS_TRANSMITTER_CNTL = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL = common dso_local global i32 0, align 4
@CLOCK_CNTL_INDEX = common dso_local global i32 0, align 4
@PPLL_DIV_3 = common dso_local global i32 0, align 4
@PPLL_REF_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*, %struct.radeon_regs*)* @radeon_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_save_state(%struct.radeonfb_info* %0, %struct.radeon_regs* %1) #0 {
  %3 = alloca %struct.radeonfb_info*, align 8
  %4 = alloca %struct.radeon_regs*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %3, align 8
  store %struct.radeon_regs* %1, %struct.radeon_regs** %4, align 8
  %5 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %6 = call i32 @INREG(i32 %5)
  %7 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %8 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @CRTC_EXT_CNTL, align 4
  %10 = call i32 @INREG(i32 %9)
  %11 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @CRTC_MORE_CNTL, align 4
  %14 = call i32 @INREG(i32 %13)
  %15 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @DAC_CNTL, align 4
  %18 = call i32 @INREG(i32 %17)
  %19 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @CRTC_H_TOTAL_DISP, align 4
  %22 = call i32 @INREG(i32 %21)
  %23 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @CRTC_H_SYNC_STRT_WID, align 4
  %26 = call i32 @INREG(i32 %25)
  %27 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CRTC_V_TOTAL_DISP, align 4
  %30 = call i32 @INREG(i32 %29)
  %31 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @CRTC_V_SYNC_STRT_WID, align 4
  %34 = call i32 @INREG(i32 %33)
  %35 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @CRTC_PITCH, align 4
  %38 = call i32 @INREG(i32 %37)
  %39 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @SURFACE_CNTL, align 4
  %42 = call i32 @INREG(i32 %41)
  %43 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @FP_CRTC_H_TOTAL_DISP, align 4
  %46 = call i32 @INREG(i32 %45)
  %47 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %48 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @FP_CRTC_V_TOTAL_DISP, align 4
  %50 = call i32 @INREG(i32 %49)
  %51 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @FP_GEN_CNTL, align 4
  %54 = call i32 @INREG(i32 %53)
  %55 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %56 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @FP_H_SYNC_STRT_WID, align 4
  %58 = call i32 @INREG(i32 %57)
  %59 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @FP_HORZ_STRETCH, align 4
  %62 = call i32 @INREG(i32 %61)
  %63 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %64 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @FP_V_SYNC_STRT_WID, align 4
  %66 = call i32 @INREG(i32 %65)
  %67 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %68 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @FP_VERT_STRETCH, align 4
  %70 = call i32 @INREG(i32 %69)
  %71 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %71, i32 0, i32 16
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @LVDS_GEN_CNTL, align 4
  %74 = call i32 @INREG(i32 %73)
  %75 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %76 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %75, i32 0, i32 17
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @LVDS_PLL_CNTL, align 4
  %78 = call i32 @INREG(i32 %77)
  %79 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %80 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %79, i32 0, i32 18
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @TMDS_CRC, align 4
  %82 = call i32 @INREG(i32 %81)
  %83 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %84 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %83, i32 0, i32 19
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @TMDS_TRANSMITTER_CNTL, align 4
  %86 = call i32 @INREG(i32 %85)
  %87 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %87, i32 0, i32 20
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %90 = call i8* @INPLL(i32 %89)
  %91 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %92 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %91, i32 0, i32 24
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @CLOCK_CNTL_INDEX, align 4
  %94 = call i32 @INREG(i32 %93)
  %95 = and i32 %94, -64
  %96 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %97 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %96, i32 0, i32 21
  store i32 %95, i32* %97, align 4
  %98 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %99 = call i32 @radeon_pll_errata_after_index(%struct.radeonfb_info* %98)
  %100 = load i32, i32* @PPLL_DIV_3, align 4
  %101 = call i8* @INPLL(i32 %100)
  %102 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %103 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %102, i32 0, i32 23
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @PPLL_REF_DIV, align 4
  %105 = call i8* @INPLL(i32 %104)
  %106 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %107 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %106, i32 0, i32 22
  store i8* %105, i8** %107, align 8
  ret void
}

declare dso_local i32 @INREG(i32) #1

declare dso_local i8* @INPLL(i32) #1

declare dso_local i32 @radeon_pll_errata_after_index(%struct.radeonfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
