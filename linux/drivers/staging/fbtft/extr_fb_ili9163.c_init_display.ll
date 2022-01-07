; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9163.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9163.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@MIPI_DCS_SOFT_RESET = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_16BIT = common dso_local global i32 0, align 4
@MIPI_DCS_SET_GAMMA_CURVE = common dso_local global i32 0, align 4
@MIPI_DCS_ENTER_NORMAL_MODE = common dso_local global i32 0, align 4
@CMD_DFUNCTR = common dso_local global i32 0, align 4
@CMD_FRMCTR1 = common dso_local global i32 0, align 4
@CMD_DINVCTR = common dso_local global i32 0, align 4
@CMD_PWCTR1 = common dso_local global i32 0, align 4
@CMD_PWCTR2 = common dso_local global i32 0, align 4
@CMD_VCOMCTR1 = common dso_local global i32 0, align 4
@CMD_VCOMOFFS = common dso_local global i32 0, align 4
@MIPI_DCS_SET_COLUMN_ADDRESS = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PAGE_ADDRESS = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@CMD_GAMRSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %17 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpiod_set_value(i64 %19, i32 0)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = load i32, i32* @MIPI_DCS_SOFT_RESET, align 4
  %24 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %22, i32 %23)
  %25 = call i32 @mdelay(i32 500)
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %28 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %26, i32 %27)
  %29 = call i32 @mdelay(i32 5)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %32 = load i32, i32* @MIPI_DCS_PIXEL_FMT_16BIT, align 4
  %33 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %30, i32 %31, i32 %32)
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = load i32, i32* @MIPI_DCS_SET_GAMMA_CURVE, align 4
  %36 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %34, i32 %35, i32 2)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = load i32, i32* @MIPI_DCS_ENTER_NORMAL_MODE, align 4
  %39 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %37, i32 %38)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = load i32, i32* @CMD_DFUNCTR, align 4
  %42 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %40, i32 %41, i32 255, i32 6)
  %43 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %44 = load i32, i32* @CMD_FRMCTR1, align 4
  %45 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %43, i32 %44, i32 8, i32 2)
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %47 = load i32, i32* @CMD_DINVCTR, align 4
  %48 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %46, i32 %47, i32 7)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = load i32, i32* @CMD_PWCTR1, align 4
  %51 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %49, i32 %50, i32 10, i32 2)
  %52 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %53 = load i32, i32* @CMD_PWCTR2, align 4
  %54 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %52, i32 %53, i32 2)
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %56 = load i32, i32* @CMD_VCOMCTR1, align 4
  %57 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %55, i32 %56, i32 80, i32 99)
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %59 = load i32, i32* @CMD_VCOMOFFS, align 4
  %60 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %58, i32 %59, i32 0)
  %61 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %62 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %63 = load i32, i32* @WIDTH, align 4
  %64 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %61, i32 %62, i32 0, i32 0, i32 0, i32 %63)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = load i32, i32* @MIPI_DCS_SET_PAGE_ADDRESS, align 4
  %67 = load i32, i32* @HEIGHT, align 4
  %68 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %65, i32 %66, i32 0, i32 0, i32 0, i32 %67)
  %69 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %70 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %71 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %69, i32 %70)
  %72 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %73 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %74 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %72, i32 %73)
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
