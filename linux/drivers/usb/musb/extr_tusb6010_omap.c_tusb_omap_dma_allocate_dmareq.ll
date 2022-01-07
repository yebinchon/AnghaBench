; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_allocate_dmareq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010_omap.c_tusb_omap_dma_allocate_dmareq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tusb_omap_dma_ch = type { i32, %struct.TYPE_2__*, i32*, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@TUSB_DMA_EP_MAP = common dso_local global i32 0, align 4
@MAX_DMAREQ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tusb_omap_dma_ch*)* @tusb_omap_dma_allocate_dmareq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_omap_dma_allocate_dmareq(%struct.tusb_omap_dma_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tusb_omap_dma_ch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tusb_omap_dma_ch* %0, %struct.tusb_omap_dma_ch** %3, align 8
  %8 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %9 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %12 = call i32 @musb_readl(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %31, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_DMAREQ, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 5
  %21 = shl i32 15, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 5
  %25 = ashr i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %13

34:                                               ; preds = %28, %13
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %42 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %44, 5
  %46 = shl i32 %43, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %50 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 5
  %56 = shl i32 16, %55
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %40
  %60 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %61 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TUSB_DMA_EP_MAP, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @musb_writel(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %67 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.tusb_omap_dma_ch*, %struct.tusb_omap_dma_ch** %3, align 8
  %75 = getelementptr inbounds %struct.tusb_omap_dma_ch, %struct.tusb_omap_dma_ch* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %59, %37
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @musb_readl(i32, i32) #1

declare dso_local i32 @musb_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
