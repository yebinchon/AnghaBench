; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32 }
%struct.tusb_omap_dma_ch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MUSB_DMA_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @tusb_omap_dma_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_omap_dma_abort(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca %struct.tusb_omap_dma_ch*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %4 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %5 = call %struct.tusb_omap_dma_ch* @to_chdat(%struct.dma_channel* %4)
  store %struct.tusb_omap_dma_ch* %5, %struct.tusb_omap_dma_ch** %3, align 8
  %6 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %7 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %12 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dmaengine_terminate_all(i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @MUSB_DMA_STATUS_FREE, align 4
  %19 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %20 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret i32 0
}

declare dso_local %struct.tusb_omap_dma_ch* @to_chdat(%struct.dma_channel*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
