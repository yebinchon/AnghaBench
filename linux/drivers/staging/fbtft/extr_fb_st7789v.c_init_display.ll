; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_st7789v.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_st7789v.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32 }

@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_16BIT = common dso_local global i32 0, align 4
@PORCTRL = common dso_local global i32 0, align 4
@GCTRL = common dso_local global i32 0, align 4
@VDVVRHEN = common dso_local global i32 0, align 4
@VRHS = common dso_local global i32 0, align 4
@VDVS = common dso_local global i32 0, align 4
@VCOMS = common dso_local global i32 0, align 4
@VCMOFSET = common dso_local global i32 0, align 4
@PWCTRL1 = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %5 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %3, i32 %4)
  %6 = call i32 @mdelay(i32 120)
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %9 = load i32, i32* @MIPI_DCS_PIXEL_FMT_16BIT, align 4
  %10 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %7, i32 %8, i32 %9)
  %11 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %12 = load i32, i32* @PORCTRL, align 4
  %13 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %11, i32 %12, i32 8, i32 8, i32 0, i32 34, i32 34)
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = load i32, i32* @GCTRL, align 4
  %16 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %14, i32 %15, i32 53)
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %18 = load i32, i32* @VDVVRHEN, align 4
  %19 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %17, i32 %18, i32 1, i32 255)
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %21 = load i32, i32* @VRHS, align 4
  %22 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %20, i32 %21, i32 11)
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %24 = load i32, i32* @VDVS, align 4
  %25 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %23, i32 %24, i32 32)
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = load i32, i32* @VCOMS, align 4
  %28 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %26, i32 %27, i32 32)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %30 = load i32, i32* @VCMOFSET, align 4
  %31 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %29, i32 %30, i32 32)
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = load i32, i32* @PWCTRL1, align 4
  %34 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %32, i32 %33, i32 164, i32 161)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %37 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %35, i32 %36)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
