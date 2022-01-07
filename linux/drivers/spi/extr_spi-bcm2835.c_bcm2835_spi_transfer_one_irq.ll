; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.bcm2835_spi = type { i32 }

@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_TA = common dso_local global i32 0, align 4
@BCM2835_SPI_FIFO_SIZE = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_INTR = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_INTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, i32, i32)* @bcm2835_spi_transfer_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_transfer_one_irq(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bcm2835_spi*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %6, align 8
  store %struct.spi_device* %1, %struct.spi_device** %7, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %13 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %12)
  store %struct.bcm2835_spi* %13, %struct.bcm2835_spi** %11, align 8
  %14 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %11, align 8
  %15 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %11, align 8
  %19 = load i32, i32* @BCM2835_SPI_CS, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BCM2835_SPI_CS_TA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %18, i32 %19, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %11, align 8
  %28 = load i32, i32* @BCM2835_SPI_FIFO_SIZE, align 4
  %29 = call i32 @bcm2835_wr_fifo_blind(%struct.bcm2835_spi* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %5
  %31 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %11, align 8
  %32 = call i32 @bcm2835_wr_fifo(%struct.bcm2835_spi* %31)
  %33 = load i32, i32* @BCM2835_SPI_CS_INTR, align 4
  %34 = load i32, i32* @BCM2835_SPI_CS_INTD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BCM2835_SPI_CS_TA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %11, align 8
  %41 = load i32, i32* @BCM2835_SPI_CS, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %40, i32 %41, i32 %42)
  ret i32 1
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i32) #1

declare dso_local i32 @bcm2835_wr_fifo_blind(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @bcm2835_wr_fifo(%struct.bcm2835_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
