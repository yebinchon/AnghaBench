; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.cdns_spi = type { i32, i32, i32, i32 }

@CDNS_SPI_IER = common dso_local global i32 0, align 4
@CDNS_SPI_IXR_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @cdns_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.cdns_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %9 = call %struct.cdns_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.cdns_spi* %9, %struct.cdns_spi** %7, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %14 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %19 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %24 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %29 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %32 = call i32 @cdns_spi_setup_transfer(%struct.spi_device* %30, %struct.spi_transfer* %31)
  %33 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %34 = call i32 @cdns_spi_fill_tx_fifo(%struct.cdns_spi* %33)
  %35 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %36 = load i32, i32* @CDNS_SPI_IER, align 4
  %37 = load i32, i32* @CDNS_SPI_IXR_DEFAULT, align 4
  %38 = call i32 @cdns_spi_write(%struct.cdns_spi* %35, i32 %36, i32 %37)
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

declare dso_local %struct.cdns_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @cdns_spi_setup_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @cdns_spi_fill_tx_fifo(%struct.cdns_spi*) #1

declare dso_local i32 @cdns_spi_write(%struct.cdns_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
