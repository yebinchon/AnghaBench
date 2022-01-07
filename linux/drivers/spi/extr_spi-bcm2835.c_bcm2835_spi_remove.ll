; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_controller = type { i32 }
%struct.bcm2835_spi = type { i32 }

@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_CLEAR_RX = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_CLEAR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.bcm2835_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_controller* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_controller* %6, %struct.spi_controller** %3, align 8
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %7)
  store %struct.bcm2835_spi* %8, %struct.bcm2835_spi** %4, align 8
  %9 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %10 = call i32 @bcm2835_debugfs_remove(%struct.bcm2835_spi* %9)
  %11 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %12 = load i32, i32* @BCM2835_SPI_CS, align 4
  %13 = load i32, i32* @BCM2835_SPI_CS_CLEAR_RX, align 4
  %14 = load i32, i32* @BCM2835_SPI_CS_CLEAR_TX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %11, i32 %12, i32 %15)
  %17 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %18 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %22 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %23 = call i32 @bcm2835_dma_release(%struct.spi_controller* %21, %struct.bcm2835_spi* %22)
  ret i32 0
}

declare dso_local %struct.spi_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @bcm2835_debugfs_remove(%struct.bcm2835_spi*) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @bcm2835_dma_release(%struct.spi_controller*, %struct.bcm2835_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
