; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_set_rx_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_set_rx_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i64 }

@SPRD_SPI_CTL10 = common dso_local global i64 0, align 8
@SPRD_SPI_RX_MAX_LEN_MASK = common dso_local global i32 0, align 4
@SPRD_SPI_RX_LEN_H_MASK = common dso_local global i32 0, align 4
@SPRD_SPI_RX_LEN_H_OFFSET = common dso_local global i32 0, align 4
@SPRD_SPI_RX_LEN_L_MASK = common dso_local global i32 0, align 4
@SPRD_SPI_CTL11 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_spi*, i32)* @sprd_spi_set_rx_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_spi_set_rx_length(%struct.sprd_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.sprd_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPRD_SPI_CTL10, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @SPRD_SPI_RX_MAX_LEN_MASK, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @SPRD_SPI_RX_LEN_H_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SPRD_SPI_RX_LEN_H_OFFSET, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %26 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPRD_SPI_CTL10, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 %24, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SPRD_SPI_RX_LEN_L_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %36 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPRD_SPI_CTL11, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
