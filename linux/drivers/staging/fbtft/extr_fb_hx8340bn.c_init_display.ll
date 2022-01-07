; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8340bn.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8340bn.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_16BIT = common dso_local global i32 0, align 4
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
  %11 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %10, i32 193, i32 255, i32 131, i32 64)
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %12, i32 17)
  %14 = call i32 @mdelay(i32 150)
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %16 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %15, i32 202, i32 112, i32 0, i32 217)
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %18 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %17, i32 176, i32 1, i32 17)
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %20 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %19, i32 201, i32 144, i32 73, i32 16, i32 40, i32 40, i32 16, i32 0, i32 6)
  %21 = call i32 @mdelay(i32 20)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %22, i32 181, i32 53, i32 32, i32 69)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %24, i32 180, i32 51, i32 37, i32 76)
  %26 = call i32 @mdelay(i32 10)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %29 = load i32, i32* @MIPI_DCS_PIXEL_FMT_16BIT, align 4
  %30 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %27, i32 %28, i32 %29)
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %32 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %33 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %31, i32 %32)
  %34 = call i32 @mdelay(i32 10)
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
