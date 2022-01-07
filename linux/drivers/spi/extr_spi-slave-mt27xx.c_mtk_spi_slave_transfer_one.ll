; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.mtk_spi_slave = type { i32, %struct.spi_transfer*, i32 }

@MTK_SPI_SLAVE_MAX_FIFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @mtk_spi_slave_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_slave_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.mtk_spi_slave*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %10 = call %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller* %9)
  store %struct.mtk_spi_slave* %10, %struct.mtk_spi_slave** %8, align 8
  %11 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %12 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %11, i32 0, i32 2
  %13 = call i32 @reinit_completion(i32* %12)
  %14 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %15 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %17 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %18 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %17, i32 0, i32 1
  store %struct.spi_transfer* %16, %struct.spi_transfer** %18, align 8
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MTK_SPI_SLAVE_MAX_FIFO_SIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %28 = call i32 @mtk_spi_slave_dma_transfer(%struct.spi_controller* %25, %struct.spi_device* %26, %struct.spi_transfer* %27)
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %33 = call i32 @mtk_spi_slave_fifo_transfer(%struct.spi_controller* %30, %struct.spi_device* %31, %struct.spi_transfer* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mtk_spi_slave_dma_transfer(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @mtk_spi_slave_fifo_transfer(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
