; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_free_dmareq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_free_dmareq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tusb_omap_dma_ch = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TUSB_DMA_EP_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tusb_omap_dma_ch*)* @tusb_omap_dma_free_dmareq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tusb_omap_dma_free_dmareq(%struct.tusb_omap_dma_ch* %0) #0 {
  %2 = alloca %struct.tusb_omap_dma_ch*, align 8
  %3 = alloca i32, align 4
  store %struct.tusb_omap_dma_ch* %0, %struct.tusb_omap_dma_ch** %2, align 8
  %4 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %2, align 8
  %5 = icmp ne %struct.tusb_omap_dma_ch* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %2, align 8
  %8 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %2, align 8
  %13 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %6, %1
  br label %43

19:                                               ; preds = %11
  %20 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %2, align 8
  %21 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %24 = call i32 @musb_readl(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %2, align 8
  %26 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 5
  %31 = shl i32 31, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %2, align 8
  %36 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @musb_writel(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %2, align 8
  %42 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %41, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %42, align 8
  br label %43

43:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @musb_readl(i32, i32) #1

declare dso_local i32 @musb_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
