; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_tx_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_tx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @omap2_mcspi_tx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_tx_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.omap2_mcspi*, align 8
  %5 = alloca %struct.omap2_mcspi_dma*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.spi_device*
  store %struct.spi_device* %7, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %10)
  store %struct.omap2_mcspi* %11, %struct.omap2_mcspi** %4, align 8
  %12 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %4, align 8
  %13 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %12, i32 0, i32 0
  %14 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %13, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %14, i64 %17
  store %struct.omap2_mcspi_dma* %18, %struct.omap2_mcspi_dma** %5, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = call i32 @omap2_mcspi_set_dma_req(%struct.spi_device* %19, i32 0, i32 0)
  %21 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %5, align 8
  %22 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %21, i32 0, i32 0
  %23 = call i32 @complete(i32* %22)
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @omap2_mcspi_set_dma_req(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
