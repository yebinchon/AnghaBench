; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32 }
%struct.tusb_omap_dma_ch = type { %struct.TYPE_2__*, i32, %struct.musb* }
%struct.TYPE_2__ = type { i32 }
%struct.musb = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Release for ep%i\0A\00", align 1
@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @tusb_omap_dma_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tusb_omap_dma_release(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca %struct.tusb_omap_dma_ch*, align 8
  %4 = alloca %struct.musb*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = call %struct.tusb_omap_dma_ch* @to_chdat(%struct.dma_channel* %5)
  store %struct.tusb_omap_dma_ch* %6, %struct.tusb_omap_dma_ch** %3, align 8
  %7 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %8 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %7, i32 0, i32 2
  %9 = load %struct.musb*, %struct.musb** %8, align 8
  store %struct.musb* %9, %struct.musb** %4, align 8
  %10 = load %struct.musb*, %struct.musb** %4, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %14 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @MUSB_DMA_STATUS_UNKNOWN, align 4
  %18 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %19 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %21 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dmaengine_terminate_sync(i32 %24)
  %26 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %27 = call i32 @tusb_omap_dma_free_dmareq(%struct.tusb_omap_dma_ch* %26)
  store %struct.dma_channel* null, %struct.dma_channel** %2, align 8
  ret void
}

declare dso_local %struct.tusb_omap_dma_ch* @to_chdat(%struct.dma_channel*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dmaengine_terminate_sync(i32) #1

declare dso_local i32 @tusb_omap_dma_free_dmareq(%struct.tusb_omap_dma_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
