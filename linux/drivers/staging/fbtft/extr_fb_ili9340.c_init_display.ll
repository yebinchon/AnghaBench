; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9340.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9340.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

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
  %11 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %10, i32 239, i32 3, i32 128, i32 2)
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %12, i32 207, i32 0, i32 193, i32 48)
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %14, i32 237, i32 100, i32 3, i32 18, i32 129)
  %16 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %17 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %16, i32 232, i32 133, i32 0, i32 120)
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %18, i32 203, i32 57, i32 44, i32 0, i32 52, i32 2)
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %21 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %20, i32 247, i32 32)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %22, i32 234, i32 0, i32 0)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %24, i32 192, i32 35)
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %26, i32 193, i32 16)
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %29 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %28, i32 197, i32 62, i32 40)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %30, i32 199, i32 134)
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %34 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %32, i32 %33, i32 85)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %35, i32 177, i32 0, i32 24)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %37, i32 182, i32 8, i32 130, i32 39)
  %39 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %40 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %39, i32 242, i32 0)
  %41 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %42 = load i32, i32* @MIPI_DCS_SET_GAMMA_CURVE, align 4
  %43 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %41, i32 %42, i32 1)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %44, i32 224, i32 15, i32 49, i32 43, i32 12, i32 14, i32 8, i32 78, i32 241, i32 55, i32 7, i32 16, i32 3, i32 14, i32 9, i32 0)
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %47 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %46, i32 225, i32 0, i32 14, i32 20, i32 3, i32 17, i32 7, i32 49, i32 193, i32 72, i32 8, i32 15, i32 12, i32 49, i32 54, i32 15)
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %49 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %50 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %48, i32 %49)
  %51 = call i32 @mdelay(i32 120)
  %52 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %53 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %54 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %52, i32 %53)
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
