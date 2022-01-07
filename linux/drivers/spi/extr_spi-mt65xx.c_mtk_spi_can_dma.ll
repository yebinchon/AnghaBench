; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_can_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_can_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64, i64 }

@MTK_SPI_MAX_FIFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @mtk_spi_can_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_can_dma(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %7 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %8 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MTK_SPI_MAX_FIFO_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = urem i64 %15, 4
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = urem i64 %21, 4
  %23 = icmp eq i64 %22, 0
  br label %24

24:                                               ; preds = %18, %12, %3
  %25 = phi i1 [ false, %12 ], [ false, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
