; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"disable controller\0A\00", align 1
@STM32F4_SPI_CR1 = common dso_local global i64 0, align 8
@STM32F4_SPI_CR1_SPE = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2 = common dso_local global i64 0, align 8
@STM32F4_SPI_CR2_TXEIE = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_RXNEIE = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_ERRIE = common dso_local global i32 0, align 4
@STM32F4_SPI_SR = common dso_local global i64 0, align 8
@STM32F4_SPI_SR_BSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"disabling condition timeout\0A\00", align 1
@STM32F4_SPI_CR2_TXDMAEN = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_RXDMAEN = common dso_local global i32 0, align 4
@STM32F4_SPI_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*)* @stm32f4_spi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f4_spi_disable(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  %5 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %10 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %14 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STM32F4_SPI_CR1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  %19 = load i32, i32* @STM32F4_SPI_CR1_SPE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %24 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %112

27:                                               ; preds = %1
  %28 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %29 = load i64, i64* @STM32F4_SPI_CR2, align 8
  %30 = load i32, i32* @STM32F4_SPI_CR2_TXEIE, align 4
  %31 = load i32, i32* @STM32F4_SPI_CR2_RXNEIE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @STM32F4_SPI_CR2_ERRIE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %28, i64 %29, i32 %34)
  %36 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %37 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @STM32F4_SPI_SR, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @STM32F4_SPI_SR_BSY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @readl_relaxed_poll_timeout_atomic(i64 %40, i32 %41, i32 %47, i32 10, i32 100000)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %27
  %51 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %52 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %27
  %56 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %57 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %62 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %67 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dmaengine_terminate_all(i64 %68)
  br label %70

70:                                               ; preds = %65, %60, %55
  %71 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %72 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %77 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %82 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @dmaengine_terminate_all(i64 %83)
  br label %85

85:                                               ; preds = %80, %75, %70
  %86 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %87 = load i64, i64* @STM32F4_SPI_CR1, align 8
  %88 = load i32, i32* @STM32F4_SPI_CR1_SPE, align 4
  %89 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %86, i64 %87, i32 %88)
  %90 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %91 = load i64, i64* @STM32F4_SPI_CR2, align 8
  %92 = load i32, i32* @STM32F4_SPI_CR2_TXDMAEN, align 4
  %93 = load i32, i32* @STM32F4_SPI_CR2_RXDMAEN, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %90, i64 %91, i32 %94)
  %96 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %97 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @STM32F4_SPI_DR, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readl_relaxed(i64 %100)
  %102 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %103 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @STM32F4_SPI_SR, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readl_relaxed(i64 %106)
  %108 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %109 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %108, i32 0, i32 0
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %112

112:                                              ; preds = %85, %22
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @stm32_spi_clr_bits(%struct.stm32_spi*, i64, i32) #1

declare dso_local i64 @readl_relaxed_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
