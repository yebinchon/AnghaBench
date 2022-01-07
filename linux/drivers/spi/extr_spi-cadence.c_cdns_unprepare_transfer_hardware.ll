; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_unprepare_transfer_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_unprepare_transfer_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.cdns_spi = type { i32 }

@CDNS_SPI_ER = common dso_local global i32 0, align 4
@CDNS_SPI_ER_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*)* @cdns_unprepare_transfer_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_unprepare_transfer_hardware(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca %struct.cdns_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %2, align 8
  %4 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %5 = call %struct.cdns_spi* @spi_master_get_devdata(%struct.spi_master* %4)
  store %struct.cdns_spi* %5, %struct.cdns_spi** %3, align 8
  %6 = load %struct.cdns_spi*, %struct.cdns_spi** %3, align 8
  %7 = load i32, i32* @CDNS_SPI_ER, align 4
  %8 = load i32, i32* @CDNS_SPI_ER_DISABLE, align 4
  %9 = call i32 @cdns_spi_write(%struct.cdns_spi* %6, i32 %7, i32 %8)
  ret i32 0
}

declare dso_local %struct.cdns_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @cdns_spi_write(%struct.cdns_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
