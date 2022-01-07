; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i8*, i8*, %struct.TYPE_4__, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.mtk_spi = type { i32*, i8*, i32*, i8*, i64, i64, %struct.spi_transfer* }

@SPI_CMD_REG = common dso_local global i64 0, align 8
@SPI_CMD_TX_DMA = common dso_local global i32 0, align 4
@SPI_CMD_RX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @mtk_spi_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_dma_transfer(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.mtk_spi* %10, %struct.mtk_spi** %8, align 8
  %11 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %12 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %14 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %16 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %15, i32 0, i32 3
  store i8* null, i8** %16, align 8
  %17 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %18 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %17, i32 0, i32 1
  store i8* null, i8** %18, align 8
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %20 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %21 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %20, i32 0, i32 6
  store %struct.spi_transfer* %19, %struct.spi_transfer** %21, align 8
  %22 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %26 = call i32 @mtk_spi_prepare_transfer(%struct.spi_master* %24, %struct.spi_transfer* %25)
  %27 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %28 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SPI_CMD_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @SPI_CMD_TX_DMA, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %3
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @SPI_CMD_RX_DMA, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %53 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SPI_CMD_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %68 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  br label %69

69:                                               ; preds = %62, %50
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %76 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %80 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %83 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %88 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i8* @sg_dma_address(i32* %89)
  %91 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %92 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %94 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i8* @sg_dma_len(i32* %95)
  %97 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %98 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %86, %81
  %100 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %101 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %106 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i8* @sg_dma_address(i32* %107)
  %109 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %110 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %112 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @sg_dma_len(i32* %113)
  %115 = load %struct.mtk_spi*, %struct.mtk_spi** %8, align 8
  %116 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %104, %99
  %118 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %119 = call i32 @mtk_spi_update_mdata_len(%struct.spi_master* %118)
  %120 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %121 = call i32 @mtk_spi_setup_packet(%struct.spi_master* %120)
  %122 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %123 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %124 = call i32 @mtk_spi_setup_dma_addr(%struct.spi_master* %122, %struct.spi_transfer* %123)
  %125 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %126 = call i32 @mtk_spi_enable_transfer(%struct.spi_master* %125)
  ret i32 1
}

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @mtk_spi_prepare_transfer(%struct.spi_master*, %struct.spi_transfer*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @sg_dma_address(i32*) #1

declare dso_local i8* @sg_dma_len(i32*) #1

declare dso_local i32 @mtk_spi_update_mdata_len(%struct.spi_master*) #1

declare dso_local i32 @mtk_spi_setup_packet(%struct.spi_master*) #1

declare dso_local i32 @mtk_spi_setup_dma_addr(%struct.spi_master*, %struct.spi_transfer*) #1

declare dso_local i32 @mtk_spi_enable_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
