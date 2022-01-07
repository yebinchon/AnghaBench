; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_set_bpw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_set_bpw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32, i32, i64 }

@STM32H7_SPI_CFG1_DSIZE = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG1_DSIZE_SHIFT = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG1_FTHLV = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG1_FTHLV_SHIFT = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*)* @stm32h7_spi_set_bpw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32h7_spi_set_bpw(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %8 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @STM32H7_SPI_CFG1_DSIZE, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @STM32H7_SPI_CFG1_DSIZE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @STM32H7_SPI_CFG1_DSIZE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %22 = call i32 @stm32h7_spi_prepare_fthlv(%struct.stm32_spi* %21)
  %23 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %24 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @STM32H7_SPI_CFG1_FTHLV, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @STM32H7_SPI_CFG1_FTHLV_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @STM32H7_SPI_CFG1_FTHLV, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %40 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STM32H7_SPI_CFG1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %51 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @STM32H7_SPI_CFG1, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 %49, i64 %54)
  ret void
}

declare dso_local i32 @stm32h7_spi_prepare_fthlv(%struct.stm32_spi*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
