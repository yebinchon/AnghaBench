; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_setup_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_setup_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.mtk_spi = type { i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@MTK_SPI_32BITS_MASK = common dso_local global i32 0, align 4
@SPI_TX_SRC_REG = common dso_local global i64 0, align 8
@SPI_RX_DST_REG = common dso_local global i64 0, align 8
@SPI_RX_DST_REG_64 = common dso_local global i64 0, align 8
@SPI_TX_SRC_REG_64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_transfer*)* @mtk_spi_setup_dma_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_spi_setup_dma_addr(%struct.spi_master* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.mtk_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %7 = call %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master* %6)
  store %struct.mtk_spi* %7, %struct.mtk_spi** %5, align 8
  %8 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %9 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MTK_SPI_32BITS_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPI_TX_SRC_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %26 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MTK_SPI_32BITS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPI_RX_DST_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
