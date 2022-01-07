; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8357d.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8357d.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@MIPI_DCS_SOFT_RESET = common dso_local global i32 0, align 4
@HX8357D_SETC = common dso_local global i32 0, align 4
@HX8357_SETRGB = common dso_local global i32 0, align 4
@HX8357D_SETCOM = common dso_local global i32 0, align 4
@HX8357_SETOSC = common dso_local global i32 0, align 4
@HX8357_SETPANEL = common dso_local global i32 0, align 4
@HX8357_SETPWR1 = common dso_local global i32 0, align 4
@HX8357D_SETSTBA = common dso_local global i32 0, align 4
@HX8357D_SETCYC = common dso_local global i32 0, align 4
@HX8357D_SETGAMMA = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_TEAR_ON = common dso_local global i32 0, align 4
@MIPI_DCS_SET_TEAR_SCANLINE = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = load i32, i32* @MIPI_DCS_SOFT_RESET, align 4
  %12 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %10, i32 %11)
  %13 = call i32 @usleep_range(i32 5000, i32 7000)
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = load i32, i32* @HX8357D_SETC, align 4
  %16 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %14, i32 %15, i32 255, i32 131, i32 87)
  %17 = call i32 @msleep(i32 150)
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = load i32, i32* @HX8357_SETRGB, align 4
  %20 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %18, i32 %19, i32 0, i32 0, i32 6, i32 6)
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = load i32, i32* @HX8357D_SETCOM, align 4
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %21, i32 %22, i32 37)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = load i32, i32* @HX8357_SETOSC, align 4
  %26 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %24, i32 %25, i32 104)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = load i32, i32* @HX8357_SETPANEL, align 4
  %29 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %27, i32 %28, i32 5)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = load i32, i32* @HX8357_SETPWR1, align 4
  %32 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %30, i32 %31, i32 0, i32 21, i32 28, i32 28, i32 131, i32 170)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %34 = load i32, i32* @HX8357D_SETSTBA, align 4
  %35 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %33, i32 %34, i32 80, i32 80, i32 1, i32 60, i32 30, i32 8)
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = load i32, i32* @HX8357D_SETCYC, align 4
  %38 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %36, i32 %37, i32 2, i32 64, i32 0, i32 42, i32 42, i32 13, i32 120)
  %39 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %40 = load i32, i32* @HX8357D_SETGAMMA, align 4
  %41 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %39, i32 %40, i32 2, i32 10, i32 17, i32 29, i32 35, i32 53, i32 65, i32 75, i32 75, i32 66, i32 58, i32 39, i32 27, i32 8, i32 9, i32 3, i32 2, i32 10, i32 17, i32 29, i32 35, i32 53, i32 65, i32 75, i32 75, i32 66, i32 58, i32 39, i32 27, i32 8, i32 9, i32 3, i32 0, i32 1)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %44 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %42, i32 %43, i32 85)
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %47 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %45, i32 %46, i32 192)
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %49 = load i32, i32* @MIPI_DCS_SET_TEAR_ON, align 4
  %50 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %48, i32 %49, i32 0)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %52 = load i32, i32* @MIPI_DCS_SET_TEAR_SCANLINE, align 4
  %53 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %51, i32 %52, i32 0, i32 2)
  %54 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %55 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %56 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %54, i32 %55)
  %57 = call i32 @msleep(i32 150)
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %59 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %60 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %58, i32 %59)
  %61 = call i32 @usleep_range(i32 5000, i32 7000)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
