; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64 }

@SPI_3WIRE_RX = common dso_local global i32 0, align 4
@STM32H7_SPI_HALF_DUPLEX = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1 = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_HDDIR = common dso_local global i32 0, align 4
@SPI_3WIRE_TX = common dso_local global i32 0, align 4
@SPI_SIMPLEX_RX = common dso_local global i32 0, align 4
@STM32H7_SPI_SIMPLEX_RX = common dso_local global i32 0, align 4
@SPI_SIMPLEX_TX = common dso_local global i32 0, align 4
@STM32H7_SPI_SIMPLEX_TX = common dso_local global i32 0, align 4
@STM32H7_SPI_FULL_DUPLEX = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG2_COMM = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG2_COMM_SHIFT = common dso_local global i32 0, align 4
@STM32H7_SPI_CFG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*, i32)* @stm32h7_spi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_spi_set_mode(%struct.stm32_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SPI_3WIRE_RX, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @STM32H7_SPI_HALF_DUPLEX, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %14 = load i32, i32* @STM32H7_SPI_CR1, align 4
  %15 = load i32, i32* @STM32H7_SPI_CR1_HDDIR, align 4
  %16 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %13, i32 %14, i32 %15)
  br label %44

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SPI_3WIRE_TX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @STM32H7_SPI_HALF_DUPLEX, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %24 = load i32, i32* @STM32H7_SPI_CR1, align 4
  %25 = load i32, i32* @STM32H7_SPI_CR1_HDDIR, align 4
  %26 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %23, i32 %24, i32 %25)
  br label %43

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SPI_SIMPLEX_RX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @STM32H7_SPI_SIMPLEX_RX, align 4
  store i32 %32, i32* %5, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SPI_SIMPLEX_TX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @STM32H7_SPI_SIMPLEX_TX, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @STM32H7_SPI_FULL_DUPLEX, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %11
  %45 = load i32, i32* @STM32H7_SPI_CFG2_COMM, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @STM32H7_SPI_CFG2_COMM_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* @STM32H7_SPI_CFG2_COMM, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %56 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STM32H7_SPI_CFG2, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl_relaxed(i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %67 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STM32H7_SPI_CFG2, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i32 %65, i64 %70)
  ret i32 0
}

declare dso_local i32 @stm32_spi_clr_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @stm32_spi_set_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
