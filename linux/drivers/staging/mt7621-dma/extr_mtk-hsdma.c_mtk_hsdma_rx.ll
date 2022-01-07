; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { %struct.mtk_hsdma_chan* }
%struct.mtk_hsdma_chan = type { i32, i32 }

@HSDMA_REG_RX_DRX = common dso_local global i32 0, align 4
@HSDMA_DESCS_MASK = common dso_local global i32 0, align 4
@HSDMA_REG_RX_CRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdam_engine*)* @mtk_hsdma_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_rx(%struct.mtk_hsdam_engine* %0) #0 {
  %2 = alloca %struct.mtk_hsdam_engine*, align 8
  %3 = alloca %struct.mtk_hsdma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %2, align 8
  %7 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %7, i32 0, i32 0
  %9 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %8, align 8
  %10 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %9, i64 0
  store %struct.mtk_hsdma_chan* %10, %struct.mtk_hsdma_chan** %3, align 8
  %11 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @HSDMA_NEXT_DESC(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %16 = load i32, i32* @HSDMA_REG_RX_DRX, align 4
  %17 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @HSDMA_DESCS_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %51

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @HSDMA_DESCS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %40 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = call i32 (...) @wmb()
  %42 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %43 = load i32, i32* @HSDMA_REG_RX_CRX, align 4
  %44 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %42, i32 %43, i32 %46)
  %48 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %49 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %50 = call i32 @mtk_hsdma_chan_done(%struct.mtk_hsdam_engine* %48, %struct.mtk_hsdma_chan* %49)
  br label %51

51:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @HSDMA_NEXT_DESC(i32) #1

declare dso_local i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine*, i32, i32) #1

declare dso_local i32 @mtk_hsdma_chan_done(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
