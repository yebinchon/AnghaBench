; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_gdma_next_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_gdma_next_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdma_chan = type { i64, i32*, i32 }
%struct.virt_dma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hsdma_chan*)* @gdma_next_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdma_next_desc(%struct.mtk_hsdma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_hsdma_chan*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  store %struct.mtk_hsdma_chan* %0, %struct.mtk_hsdma_chan** %3, align 8
  %5 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %5, i32 0, i32 2
  %7 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %6)
  store %struct.virt_dma_desc* %7, %struct.virt_dma_desc** %4, align 8
  %8 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %9 = icmp ne %struct.virt_dma_desc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  store i32 0, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %15 = call i32* @to_mtk_hsdma_desc(%struct.virt_dma_desc* %14)
  %16 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32* @to_mtk_hsdma_desc(%struct.virt_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
