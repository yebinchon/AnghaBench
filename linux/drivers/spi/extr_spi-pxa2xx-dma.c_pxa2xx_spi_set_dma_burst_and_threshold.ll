; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_set_dma_burst_and_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_set_dma_burst_and_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chip_data = type { i32 }
%struct.spi_device = type { i32, %struct.pxa2xx_spi_chip* }
%struct.pxa2xx_spi_chip = type { i32 }
%struct.driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RX_THRESH_DFLT = common dso_local global i32 0, align 4
@TX_THRESH_DFLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa2xx_spi_set_dma_burst_and_threshold(%struct.chip_data* %0, %struct.spi_device* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.chip_data*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pxa2xx_spi_chip*, align 8
  %12 = alloca %struct.driver_data*, align 8
  %13 = alloca i32, align 4
  store %struct.chip_data* %0, %struct.chip_data** %6, align 8
  store %struct.spi_device* %1, %struct.spi_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %15, align 8
  store %struct.pxa2xx_spi_chip* %16, %struct.pxa2xx_spi_chip** %11, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.driver_data* @spi_controller_get_devdata(i32 %19)
  store %struct.driver_data* %20, %struct.driver_data** %12, align 8
  %21 = load %struct.driver_data*, %struct.driver_data** %12, align 8
  %22 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %11, align 8
  %27 = icmp ne %struct.pxa2xx_spi_chip* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %11, align 8
  %30 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @RX_THRESH_DFLT, align 4
  %38 = call i32 @SSCR1_RxTresh(i32 %37)
  %39 = load i32, i32* @TX_THRESH_DFLT, align 4
  %40 = call i32 @SSCR1_TxTresh(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  ret i32 0
}

declare dso_local %struct.driver_data* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @SSCR1_RxTresh(i32) #1

declare dso_local i32 @SSCR1_TxTresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
