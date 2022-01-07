; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_transfer_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_transfer_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64, i32, i64 }

@SPI_SIMPLEX_TX = common dso_local global i64 0, align 8
@SPI_3WIRE_TX = common dso_local global i64 0, align 8
@STM32F4_SPI_CR2_TXEIE = common dso_local global i32 0, align 4
@SPI_FULL_DUPLEX = common dso_local global i64 0, align 8
@STM32F4_SPI_CR2_RXNEIE = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2_ERRIE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STM32F4_SPI_CR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*)* @stm32f4_spi_transfer_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_spi_transfer_one_irq(%struct.stm32_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_spi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPI_SIMPLEX_TX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPI_3WIRE_TX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @STM32F4_SPI_CR2_TXEIE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %37

21:                                               ; preds = %11
  %22 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPI_FULL_DUPLEX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @STM32F4_SPI_CR2_RXNEIE, align 4
  %29 = load i32, i32* @STM32F4_SPI_CR2_ERRIE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %60

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %39 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %43 = load i32, i32* @STM32F4_SPI_CR2, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %42, i32 %43, i32 %44)
  %46 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %47 = call i32 @stm32_spi_enable(%struct.stm32_spi* %46)
  %48 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %49 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %54 = call i32 @stm32f4_spi_write_tx(%struct.stm32_spi* %53)
  br label %55

55:                                               ; preds = %52, %37
  %56 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %57 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %56, i32 0, i32 1
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %33
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_spi_set_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @stm32_spi_enable(%struct.stm32_spi*) #1

declare dso_local i32 @stm32f4_spi_write_tx(%struct.stm32_spi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
