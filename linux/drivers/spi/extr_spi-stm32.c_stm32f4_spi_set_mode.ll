; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32 }

@SPI_3WIRE_TX = common dso_local global i32 0, align 4
@SPI_SIMPLEX_TX = common dso_local global i32 0, align 4
@STM32F4_SPI_CR1 = common dso_local global i32 0, align 4
@STM32F4_SPI_CR1_BIDIMODE = common dso_local global i32 0, align 4
@STM32F4_SPI_CR1_BIDIOE = common dso_local global i32 0, align 4
@SPI_FULL_DUPLEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*, i32)* @stm32f4_spi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_spi_set_mode(%struct.stm32_spi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_spi*, align 8
  %5 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SPI_3WIRE_TX, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SPI_SIMPLEX_TX, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9, %2
  %14 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %15 = load i32, i32* @STM32F4_SPI_CR1, align 4
  %16 = load i32, i32* @STM32F4_SPI_CR1_BIDIMODE, align 4
  %17 = load i32, i32* @STM32F4_SPI_CR1_BIDIOE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %14, i32 %15, i32 %18)
  br label %35

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SPI_FULL_DUPLEX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %26 = load i32, i32* @STM32F4_SPI_CR1, align 4
  %27 = load i32, i32* @STM32F4_SPI_CR1_BIDIMODE, align 4
  %28 = load i32, i32* @STM32F4_SPI_CR1_BIDIOE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %25, i32 %26, i32 %29)
  br label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %13
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @stm32_spi_set_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @stm32_spi_clr_bits(%struct.stm32_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
