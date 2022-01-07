; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_start_cpu_based_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_start_cpu_based_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i32, i32, i32, i32, i32 }
%struct.spi_transfer = type { i32 }

@DATA_DIR_TX = common dso_local global i32 0, align 4
@SPI_DMA_BLK = common dso_local global i32 0, align 4
@SPI_IE_TX = common dso_local global i32 0, align 4
@DATA_DIR_RX = common dso_local global i32 0, align 4
@SPI_IE_RX = common dso_local global i32 0, align 4
@SPI_DMA_CTL = common dso_local global i32 0, align 4
@SPI_PIO = common dso_local global i32 0, align 4
@SPI_COMMAND1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_spi_data*, %struct.spi_transfer*)* @tegra_spi_start_cpu_based_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_start_cpu_based_transfer(%struct.tegra_spi_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_spi_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %7 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DATA_DIR_TX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = call i32 @tegra_spi_fill_tx_fifo_from_client_txbuf(%struct.tegra_spi_data* %14, %struct.spi_transfer* %15)
  store i32 %16, i32* %6, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %22, 1
  %24 = call i32 @SPI_DMA_BLK_SET(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SPI_DMA_BLK, align 4
  %28 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %25, i32 %26, i32 %27)
  store i32 0, i32* %5, align 4
  %29 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DATA_DIR_TX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i32, i32* @SPI_IE_TX, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DATA_DIR_RX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @SPI_IE_RX, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SPI_DMA_CTL, align 4
  %54 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %58, i32 0, i32 2
  store i32 0, i32* %59, align 4
  %60 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @SPI_PIO, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SPI_COMMAND1, align 4
  %69 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %66, i32 %67, i32 %68)
  ret i32 0
}

declare dso_local i32 @tegra_spi_fill_tx_fifo_from_client_txbuf(%struct.tegra_spi_data*, %struct.spi_transfer*) #1

declare dso_local i32 @SPI_DMA_BLK_SET(i32) #1

declare dso_local i32 @tegra_spi_writel(%struct.tegra_spi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
