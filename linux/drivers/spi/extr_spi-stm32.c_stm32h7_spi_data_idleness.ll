; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_data_idleness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32h7_spi_data_idleness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64, i32, i64, i32 }

@STM32H7_SPI_CFG2_MIDI = common dso_local global i32 0, align 4
@SPI_1HZ_NS = common dso_local global i64 0, align 8
@STM32H7_SPI_CFG2_MIDI_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"period=%dns, midi=%d(=%dns)\0A\00", align 1
@STM32H7_SPI_CFG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spi*, i32)* @stm32h7_spi_data_idleness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32h7_spi_data_idleness(%struct.stm32_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_spi* %0, %struct.stm32_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @STM32H7_SPI_CFG2_MIDI, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load i64, i64* @SPI_1HZ_NS, align 8
  %21 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DIV_ROUND_UP(i64 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DIV_ROUND_UP(i64 %27, i32 %28)
  %30 = load i32, i32* @STM32H7_SPI_CFG2_MIDI, align 4
  %31 = load i32, i32* @STM32H7_SPI_CFG2_MIDI_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = call i32 @min(i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @STM32H7_SPI_CFG2_MIDI_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @STM32H7_SPI_CFG2_MIDI, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %19, %14, %2
  %51 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %52 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @STM32H7_SPI_CFG2, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl_relaxed(i64 %55)
  %57 = load i32, i32* %5, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.stm32_spi*, %struct.stm32_spi** %3, align 8
  %63 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STM32H7_SPI_CFG2, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
