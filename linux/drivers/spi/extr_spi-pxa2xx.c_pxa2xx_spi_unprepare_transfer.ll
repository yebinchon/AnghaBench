; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_unprepare_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_unprepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.driver_data = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*)* @pxa2xx_spi_unprepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_spi_unprepare_transfer(%struct.spi_controller* %0) #0 {
  %2 = alloca %struct.spi_controller*, align 8
  %3 = alloca %struct.driver_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %2, align 8
  %4 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %5 = call %struct.driver_data* @spi_controller_get_devdata(%struct.spi_controller* %4)
  store %struct.driver_data* %5, %struct.driver_data** %3, align 8
  %6 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %7 = load i32, i32* @SSCR0, align 4
  %8 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %9 = load i32, i32* @SSCR0, align 4
  %10 = call i32 @pxa2xx_spi_read(%struct.driver_data* %8, i32 %9)
  %11 = load i32, i32* @SSCR0_SSE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @pxa2xx_spi_write(%struct.driver_data* %6, i32 %7, i32 %13)
  ret i32 0
}

declare dso_local %struct.driver_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
