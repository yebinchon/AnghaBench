; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c___bcm2835aux_spi_transfer_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c___bcm2835aux_spi_transfer_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.bcm2835aux_spi = type { i32* }

@BCM2835_AUX_SPI_CNTL1 = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL1_TXEMPTY = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL1_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @__bcm2835aux_spi_transfer_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bcm2835aux_spi_transfer_one_irq(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.bcm2835aux_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %9 = call %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.bcm2835aux_spi* %9, %struct.bcm2835aux_spi** %7, align 8
  %10 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %11 = load i32, i32* @BCM2835_AUX_SPI_CNTL1, align 4
  %12 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %13 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BCM2835_AUX_SPI_CNTL1_TXEMPTY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @BCM2835_AUX_SPI_CNTL1_IDLE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %10, i32 %11, i32 %20)
  ret i32 1
}

declare dso_local %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @bcm2835aux_wr(%struct.bcm2835aux_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
