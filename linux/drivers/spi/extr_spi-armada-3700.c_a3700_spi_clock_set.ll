; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_clock_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_clock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a3700_spi = type { i32 }

@A3700_SPI_CLK_EVEN_OFFS = common dso_local global i32 0, align 4
@A3700_SPI_IF_CFG_REG = common dso_local global i32 0, align 4
@A3700_SPI_CLK_PRESCALE_MASK = common dso_local global i32 0, align 4
@A3700_SPI_IF_TIME_REG = common dso_local global i32 0, align 4
@A3700_SPI_CLK_CAPT_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a3700_spi*, i32)* @a3700_spi_clock_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3700_spi_clock_set(%struct.a3700_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.a3700_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.a3700_spi* %0, %struct.a3700_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %8 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_get_rate(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @DIV_ROUND_UP(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 15
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @A3700_SPI_CLK_EVEN_OFFS, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %17, i32 2)
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %22 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %23 = call i32 @spireg_read(%struct.a3700_spi* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @A3700_SPI_CLK_PRESCALE_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @A3700_SPI_CLK_PRESCALE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %34 = load i32, i32* @A3700_SPI_IF_CFG_REG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @spireg_write(%struct.a3700_spi* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %37, 2
  br i1 %38, label %39, label %50

39:                                               ; preds = %20
  %40 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %41 = load i32, i32* @A3700_SPI_IF_TIME_REG, align 4
  %42 = call i32 @spireg_read(%struct.a3700_spi* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @A3700_SPI_CLK_CAPT_EDGE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.a3700_spi*, %struct.a3700_spi** %3, align 8
  %47 = load i32, i32* @A3700_SPI_IF_TIME_REG, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @spireg_write(%struct.a3700_spi* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %20
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spireg_read(%struct.a3700_spi*, i32) #1

declare dso_local i32 @spireg_write(%struct.a3700_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
