; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9341.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9341.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@MIPI_DCS_SOFT_RESET = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_OFF = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_SET_GAMMA_CURVE = common dso_local global i32 0, align 4
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
  %13 = call i32 @mdelay(i32 5)
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = load i32, i32* @MIPI_DCS_SET_DISPLAY_OFF, align 4
  %16 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %14, i32 %15)
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %18 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %17, i32 207, i32 0, i32 131, i32 48)
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %20 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %19, i32 237, i32 100, i32 3, i32 18, i32 129)
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %21, i32 232, i32 133, i32 1, i32 121)
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %24 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %23, i32 203, i32 57, i32 44, i32 0, i32 52, i32 2)
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %26 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %25, i32 247, i32 32)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %27, i32 234, i32 0, i32 0)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %30 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %29, i32 192, i32 38)
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %32 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %31, i32 193, i32 17)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %34 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %33, i32 197, i32 53, i32 62)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %35, i32 199, i32 190)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %39 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %37, i32 %38, i32 85)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %40, i32 177, i32 0, i32 27)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = load i32, i32* @MIPI_DCS_SET_GAMMA_CURVE, align 4
  %44 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %42, i32 %43, i32 1)
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %45, i32 183, i32 7)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %47, i32 182, i32 10, i32 130, i32 39, i32 0)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %51 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %49, i32 %50)
  %52 = call i32 @mdelay(i32 100)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %55 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %53, i32 %54)
  %56 = call i32 @mdelay(i32 20)
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
