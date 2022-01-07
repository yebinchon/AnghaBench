; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_transfer_one_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_transfer_one_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32 }

@STM32H7_SPI_IER = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_EOTIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_TXTFIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_OVRIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_MODFIE = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1 = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_CSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*)* @stm32h7_spi_transfer_one_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32h7_spi_transfer_one_dma_start(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  %3 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %4 = load i32, i32* @STM32H7_SPI_IER, align 4
  %5 = load i32, i32* @STM32H7_SPI_IER_EOTIE, align 4
  %6 = load i32, i32* @STM32H7_SPI_IER_TXTFIE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @STM32H7_SPI_IER_OVRIE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @STM32H7_SPI_IER_MODFIE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %3, i32 %4, i32 %11)
  %13 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %14 = call i32 @stm32_spi_enable(%struct.stm32_spi* %13)
  %15 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %16 = load i32, i32* @STM32H7_SPI_CR1, align 4
  %17 = load i32, i32* @STM32H7_SPI_CR1_CSTART, align 4
  %18 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %15, i32 %16, i32 %17)
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
