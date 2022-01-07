; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IFX_SPI_TRANSFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifx_spi_device*)* @ifx_spi_free_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifx_spi_free_device(%struct.ifx_spi_device* %0) #0 {
  %2 = alloca %struct.ifx_spi_device*, align 8
  store %struct.ifx_spi_device* %0, %struct.ifx_spi_device** %2, align 8
  %3 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %4 = call i32 @ifx_spi_free_port(%struct.ifx_spi_device* %3)
  %5 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @IFX_SPI_TRANSFER_SIZE, align 4
  %10 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %14 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dma_free_coherent(i32* %8, i32 %9, i32 %12, i32 %15)
  %17 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %18 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @IFX_SPI_TRANSFER_SIZE, align 4
  %22 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %23 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %26 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dma_free_coherent(i32* %20, i32 %21, i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @ifx_spi_free_port(%struct.ifx_spi_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
