; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_transfer_one_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_transfer_one_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64 }

@SPI_SIMPLEX_RX = common dso_local global i64 0, align 8
@SPI_3WIRE_RX = common dso_local global i64 0, align 8
@SPI_FULL_DUPLEX = common dso_local global i64 0, align 8
@STM32F4_SPI_CR2 = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_ERRIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*)* @stm32f4_spi_transfer_one_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f4_spi_transfer_one_dma_start(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  %3 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SPI_SIMPLEX_RX, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %10 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SPI_3WIRE_RX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %16 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPI_FULL_DUPLEX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %8, %1
  %21 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %22 = load i32, i32* @STM32F4_SPI_CR2, align 4
  %23 = load i32, i32* @STM32F4_SPI_CR2_ERRIE, align 4
  %24 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %27 = call i32 @stm32_spi_enable(%struct.stm32_spi* %26)
  ret void
}

declare dso_local i32 @stm32_spi_set_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @stm32_spi_enable(%struct.stm32_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
