; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_fifo_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_fifo_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64 }
%struct.mtk_spi = type { i64, i64, i32, %struct.spi_transfer* }

@MTK_SPI_MAX_FIFO_SIZE = common dso_local global i32 0, align 4
@SPI_TX_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @mtk_spi_fifo_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_fifo_transfer(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtk_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = call %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.mtk_spi* %12, %struct.mtk_spi** %10, align 8
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %14 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %15 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %14, i32 0, i32 3
  store %struct.spi_transfer* %13, %struct.spi_transfer** %15, align 8
  %16 = load i32, i32* @MTK_SPI_MAX_FIFO_SIZE, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @min(i32 %16, i32 %19)
  %21 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %22 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %24 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %27 = call i32 @mtk_spi_prepare_transfer(%struct.spi_master* %25, %struct.spi_transfer* %26)
  %28 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %29 = call i32 @mtk_spi_setup_packet(%struct.spi_master* %28)
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %35 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SPI_TX_DATA_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @iowrite32_rep(i64 %38, i64 %41, i32 %42)
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = srem i32 %46, 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memcpy(i64* %9, i64 %57, i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.mtk_spi*, %struct.mtk_spi** %10, align 8
  %62 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPI_TX_DATA_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i64 %60, i64 %65)
  br label %67

67:                                               ; preds = %50, %3
  %68 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %69 = call i32 @mtk_spi_enable_transfer(%struct.spi_master* %68)
  ret i32 1
}

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mtk_spi_prepare_transfer(%struct.spi_master*, %struct.spi_transfer*) #1

declare dso_local i32 @mtk_spi_setup_packet(%struct.spi_master*) #1

declare dso_local i32 @iowrite32_rep(i64, i64, i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @mtk_spi_enable_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
