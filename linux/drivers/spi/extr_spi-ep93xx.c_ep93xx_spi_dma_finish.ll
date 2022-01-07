; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_dma_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_dma_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.ep93xx_spi = type { %struct.sg_table, %struct.dma_chan*, %struct.sg_table, %struct.dma_chan* }
%struct.sg_table = type { i32, i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, i32)* @ep93xx_spi_dma_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_spi_dma_finish(%struct.spi_master* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ep93xx_spi*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.sg_table*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.ep93xx_spi* %9, %struct.ep93xx_spi** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %5, align 8
  %15 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %14, i32 0, i32 3
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  store %struct.dma_chan* %16, %struct.dma_chan** %6, align 8
  %17 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %5, align 8
  %18 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %17, i32 0, i32 2
  store %struct.sg_table* %18, %struct.sg_table** %7, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %5, align 8
  %21 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %20, i32 0, i32 1
  %22 = load %struct.dma_chan*, %struct.dma_chan** %21, align 8
  store %struct.dma_chan* %22, %struct.dma_chan** %6, align 8
  %23 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %5, align 8
  %24 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %23, i32 0, i32 0
  store %struct.sg_table* %24, %struct.sg_table** %7, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %32 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %35 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dma_unmap_sg(i32 %30, i32 %33, i32 %36, i32 %37)
  ret void
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
