; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_fill_tx_fifo_from_client_txbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_fill_tx_fifo_from_client_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sflash_data = type { i32, i32, i32 }
%struct.spi_transfer = type { i64 }

@SPI_FIFO_DEPTH = common dso_local global i32 0, align 4
@SPI_STATUS = common dso_local global i32 0, align 4
@SPI_TXF_FULL = common dso_local global i32 0, align 4
@SPI_TX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sflash_data*, %struct.spi_transfer*)* @tegra_sflash_fill_tx_fifo_from_client_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sflash_fill_tx_fifo_from_client_txbuf(%struct.tegra_sflash_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.tegra_sflash_data*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_sflash_data* %0, %struct.tegra_sflash_data** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %11 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SPI_FIFO_DEPTH, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @SPI_FIFO_DEPTH, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul i32 %29, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %35 = load i32, i32* @SPI_STATUS, align 4
  %36 = call i32 @tegra_sflash_readl(%struct.tegra_sflash_data* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %77, %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SPI_TXF_FULL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %48, %51
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %55, label %69

55:                                               ; preds = %53
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* %56, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 8
  %61 = shl i32 %58, %60
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %5, align 4
  br label %44

69:                                               ; preds = %53
  %70 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SPI_TX_FIFO, align 4
  %73 = call i32 @tegra_sflash_writel(%struct.tegra_sflash_data* %70, i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %79 = load i32, i32* @SPI_STATUS, align 4
  %80 = call i32 @tegra_sflash_readl(%struct.tegra_sflash_data* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %37

81:                                               ; preds = %76, %37
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %84 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul i32 %82, %85
  %87 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @tegra_sflash_readl(%struct.tegra_sflash_data*, i32) #1

declare dso_local i32 @tegra_sflash_writel(%struct.tegra_sflash_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
