; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_transfer_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_transfer_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32, i64, i64, i64 }

@STM32H7_SPI_IER_DXPIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_TXPIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_RXPIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_EOTIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_TXTFIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_OVRIE = common dso_local global i32 0, align 4
@STM32H7_SPI_IER_MODFIE = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1 = common dso_local global i32 0, align 4
@STM32H7_SPI_CR1_CSTART = common dso_local global i32 0, align 4
@STM32H7_SPI_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*)* @stm32h7_spi_transfer_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_spi_transfer_one_irq(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %11 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @STM32H7_SPI_IER_DXPIE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %9, %1
  %19 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %20 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @STM32H7_SPI_IER_TXPIE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %18
  %28 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %29 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @STM32H7_SPI_IER_RXPIE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %23
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* @STM32H7_SPI_IER_EOTIE, align 4
  %40 = load i32, i32* @STM32H7_SPI_IER_TXTFIE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @STM32H7_SPI_IER_OVRIE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @STM32H7_SPI_IER_MODFIE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %49 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %48, i32 0, i32 0
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %53 = call i32 @stm32_spi_enable(%struct.stm32_spi* %52)
  %54 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %55 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %38
  %59 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %60 = call i32 @stm32h7_spi_write_txfifo(%struct.stm32_spi* %59)
  br label %61

61:                                               ; preds = %58, %38
  %62 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %63 = load i32, i32* @STM32H7_SPI_CR1, align 4
  %64 = load i32, i32* @STM32H7_SPI_CR1_CSTART, align 4
  %65 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %68 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STM32H7_SPI_IER, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel_relaxed(i32 %66, i64 %71)
  %73 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %74 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %73, i32 0, i32 0
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  ret i32 1
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_spi_enable(%struct.stm32_spi*) #1

declare dso_local i32 @stm32h7_spi_write_txfifo(%struct.stm32_spi*) #1

declare dso_local i32 @stm32_spi_set_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
