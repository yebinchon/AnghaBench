; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_read_rx_fifo_to_client_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_read_rx_fifo_to_client_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sflash_data = type { i32, i32 }
%struct.spi_transfer = type { i64 }

@SPI_STATUS = common dso_local global i32 0, align 4
@SPI_RXF_EMPTY = common dso_local global i32 0, align 4
@SPI_RX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sflash_data*, %struct.spi_transfer*)* @tegra_sflash_read_rx_fifo_to_client_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sflash_read_rx_fifo_to_client_rxbuf(%struct.tegra_sflash_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_sflash_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_sflash_data* %0, %struct.tegra_sflash_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %7, align 8
  %19 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %20 = load i32, i32* @SPI_STATUS, align 4
  %21 = call i32 @tegra_sflash_readl(%struct.tegra_sflash_data* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %49, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SPI_RXF_EMPTY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %30 = load i32, i32* @SPI_RX_FIFO, align 4
  %31 = call i32 @tegra_sflash_readl(%struct.tegra_sflash_data* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %46, %28
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %40, 8
  %42 = ashr i32 %39, %41
  %43 = and i32 %42, 255
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %53 = load i32, i32* @SPI_STATUS, align 4
  %54 = call i32 @tegra_sflash_readl(%struct.tegra_sflash_data* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %56, %59
  %61 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %62 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %60
  store i32 %64, i32* %62, align 4
  ret i32 0
}

declare dso_local i32 @tegra_sflash_readl(%struct.tegra_sflash_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
