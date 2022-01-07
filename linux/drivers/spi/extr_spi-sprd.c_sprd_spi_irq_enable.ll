; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i64 }

@SPRD_SPI_TX_END_CLR = common dso_local global i32 0, align 4
@SPRD_SPI_RX_END_CLR = common dso_local global i32 0, align 4
@SPRD_SPI_INT_CLR = common dso_local global i64 0, align 8
@SPRD_SPI_INT_EN = common dso_local global i64 0, align 8
@SPRD_SPI_TX_END_INT_EN = common dso_local global i32 0, align 4
@SPRD_SPI_RX_END_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_spi*)* @sprd_spi_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_spi_irq_enable(%struct.sprd_spi* %0) #0 {
  %2 = alloca %struct.sprd_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %2, align 8
  %4 = load i32, i32* @SPRD_SPI_TX_END_CLR, align 4
  %5 = load i32, i32* @SPRD_SPI_RX_END_CLR, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.sprd_spi*, %struct.sprd_spi** %2, align 8
  %8 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPRD_SPI_INT_CLR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 %6, i64 %11)
  %13 = load %struct.sprd_spi*, %struct.sprd_spi** %2, align 8
  %14 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPRD_SPI_INT_EN, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SPRD_SPI_TX_END_INT_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SPRD_SPI_RX_END_INT_EN, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.sprd_spi*, %struct.sprd_spi** %2, align 8
  %25 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPRD_SPI_INT_EN, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
