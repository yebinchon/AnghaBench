; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_number_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_number_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64 }

@STM32H7_SPI_CR2_TSIZE = common dso_local global i32 0, align 4
@STM32H7_SPI_CR2_TSIZE_SHIFT = common dso_local global i32 0, align 4
@STM32H7_SPI_CR2 = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*, i32)* @stm32h7_spi_number_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_spi_number_of_data(%struct.stm32_spi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @STM32H7_SPI_CR2_TSIZE, align 4
  %10 = load i32, i32* @STM32H7_SPI_CR2_TSIZE_SHIFT, align 4
  %11 = ashr i32 %9, %10
  %12 = icmp sle i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load i32, i32* @STM32H7_SPI_CR2_TSIZE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STM32H7_SPI_CR2_TSIZE_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STM32H7_SPI_CR2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STM32H7_SPI_CR2, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EMSGSIZE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
