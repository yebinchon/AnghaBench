; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_can_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_can_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.sprd_spi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SPRD_SPI_FIFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @sprd_spi_can_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_can_dma(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.sprd_spi*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %9 = call %struct.sprd_spi* @spi_controller_get_devdata(%struct.spi_controller* %8)
  store %struct.sprd_spi* %9, %struct.sprd_spi** %7, align 8
  %10 = load %struct.sprd_spi*, %struct.sprd_spi** %7, align 8
  %11 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SPRD_SPI_FIFO_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.sprd_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
