; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_get_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_get_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { i64 }
%struct.crtc = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CRTC_H_TOTAL_DISP = common dso_local global i32 0, align 4
@CRTC_H_SYNC_STRT_WID = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_DISP = common dso_local global i32 0, align 4
@CRTC_V_SYNC_STRT_WID = common dso_local global i32 0, align 4
@CRTC_VLINE_CRNT_VLINE = common dso_local global i32 0, align 4
@CRTC_OFF_PITCH = common dso_local global i32 0, align 4
@CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@CNFG_PANEL = common dso_local global i32 0, align 4
@CRTC_RW_SELECT = common dso_local global i32 0, align 4
@EXT_VERT_STRETCH = common dso_local global i32 0, align 4
@HORZ_STRETCHING = common dso_local global i32 0, align 4
@LCD_GEN_CNTL = common dso_local global i32 0, align 4
@LCD_INDEX = common dso_local global i32 0, align 4
@LT_LCD_REGS = common dso_local global i32 0, align 4
@SHADOW_EN = common dso_local global i32 0, align 4
@SHADOW_RW_EN = common dso_local global i32 0, align 4
@VERT_STRETCHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atyfb_par*, %struct.crtc*)* @aty_get_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty_get_crtc(%struct.atyfb_par* %0, %struct.crtc* %1) #0 {
  %3 = alloca %struct.atyfb_par*, align 8
  %4 = alloca %struct.crtc*, align 8
  store %struct.atyfb_par* %0, %struct.atyfb_par** %3, align 8
  store %struct.crtc* %1, %struct.crtc** %4, align 8
  %5 = load i32, i32* @CRTC_H_TOTAL_DISP, align 4
  %6 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %7 = call i8* @aty_ld_le32(i32 %5, %struct.atyfb_par* %6)
  %8 = load %struct.crtc*, %struct.crtc** %4, align 8
  %9 = getelementptr inbounds %struct.crtc, %struct.crtc* %8, i32 0, i32 12
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @CRTC_H_SYNC_STRT_WID, align 4
  %11 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %12 = call i8* @aty_ld_le32(i32 %10, %struct.atyfb_par* %11)
  %13 = load %struct.crtc*, %struct.crtc** %4, align 8
  %14 = getelementptr inbounds %struct.crtc, %struct.crtc* %13, i32 0, i32 11
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @CRTC_V_TOTAL_DISP, align 4
  %16 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %17 = call i8* @aty_ld_le32(i32 %15, %struct.atyfb_par* %16)
  %18 = load %struct.crtc*, %struct.crtc** %4, align 8
  %19 = getelementptr inbounds %struct.crtc, %struct.crtc* %18, i32 0, i32 10
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @CRTC_V_SYNC_STRT_WID, align 4
  %21 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %22 = call i8* @aty_ld_le32(i32 %20, %struct.atyfb_par* %21)
  %23 = load %struct.crtc*, %struct.crtc** %4, align 8
  %24 = getelementptr inbounds %struct.crtc, %struct.crtc* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @CRTC_VLINE_CRNT_VLINE, align 4
  %26 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %27 = call i8* @aty_ld_le32(i32 %25, %struct.atyfb_par* %26)
  %28 = load %struct.crtc*, %struct.crtc** %4, align 8
  %29 = getelementptr inbounds %struct.crtc, %struct.crtc* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @CRTC_OFF_PITCH, align 4
  %31 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %32 = call i8* @aty_ld_le32(i32 %30, %struct.atyfb_par* %31)
  %33 = load %struct.crtc*, %struct.crtc** %4, align 8
  %34 = getelementptr inbounds %struct.crtc, %struct.crtc* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %36 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %37 = call i8* @aty_ld_le32(i32 %35, %struct.atyfb_par* %36)
  %38 = load %struct.crtc*, %struct.crtc** %4, align 8
  %39 = getelementptr inbounds %struct.crtc, %struct.crtc* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i8* @aty_ld_le32(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
