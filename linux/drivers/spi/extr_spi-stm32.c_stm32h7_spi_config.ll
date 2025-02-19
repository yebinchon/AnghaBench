; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32 }

@STM32H7_SPI_I2SCFGR = common dso_local global i32 0, align 4
@STM32H7_SPI_I2SCFGR_I2SMOD = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1 = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_SSI = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_HDDIR = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_MASRX = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG2 = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG2_MASTER = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG2_SSM = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG2_AFCNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*)* @stm32h7_spi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_spi_config(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  %3 = alloca i64, align 8
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  %4 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %5 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %9 = load i32, i32* @STM32H7_SPI_I2SCFGR, align 4
  %10 = load i32, i32* @STM32H7_SPI_I2SCFGR_I2SMOD, align 4
  %11 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %8, i32 %9, i32 %10)
  %12 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %13 = load i32, i32* @STM32H7_SPI_CR1, align 4
  %14 = load i32, i32* @STM32H7_SPI_CR1_SSI, align 4
  %15 = load i32, i32* @STM32H7_SPI_CR1_HDDIR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @STM32H7_SPI_CR1_MASRX, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %12, i32 %13, i32 %18)
  %20 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %21 = load i32, i32* @STM32H7_SPI_CFG2, align 4
  %22 = load i32, i32* @STM32H7_SPI_CFG2_MASTER, align 4
  %23 = load i32, i32* @STM32H7_SPI_CFG2_SSM, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @STM32H7_SPI_CFG2_AFCNTR, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %20, i32 %21, i32 %26)
  %28 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %29 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_spi_clr_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @stm32_spi_set_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
