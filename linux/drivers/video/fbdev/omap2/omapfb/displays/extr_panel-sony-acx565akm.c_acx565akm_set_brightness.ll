; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_acx565akm_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_acx565akm_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32 }

@MIPID_CMD_WRITE_DISP_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panel_drv_data*, i32)* @acx565akm_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acx565akm_set_brightness(%struct.panel_drv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = or i32 %6, 256
  store i32 %7, i32* %5, align 4
  %8 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %9 = load i32, i32* @MIPID_CMD_WRITE_DISP_BRIGHTNESS, align 4
  %10 = call i32 @acx565akm_write(%struct.panel_drv_data* %8, i32 %9, i32* %5, i32 2)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %15 = call i32 @enable_backlight_ctrl(%struct.panel_drv_data* %14, i32 1)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %18 = call i32 @enable_backlight_ctrl(%struct.panel_drv_data* %17, i32 0)
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @acx565akm_write(%struct.panel_drv_data*, i32, i32*, i32) #1

declare dso_local i32 @enable_backlight_ctrl(%struct.panel_drv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
