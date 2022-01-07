; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { %struct.mtk_hsdma_chan* }
%struct.mtk_hsdma_chan = type { i32 }

@HSDMA_REG_GLO_CFG = common dso_local global i32 0, align 4
@HSDMA_REG_INT_MASK = common dso_local global i32 0, align 4
@HSDMA_REG_TX_BASE = common dso_local global i32 0, align 4
@HSDMA_REG_TX_CNT = common dso_local global i32 0, align 4
@HSDMA_REG_RX_BASE = common dso_local global i32 0, align 4
@HSDMA_REG_RX_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdam_engine*)* @mtk_hsdma_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_uninit(%struct.mtk_hsdam_engine* %0) #0 {
  %2 = alloca %struct.mtk_hsdam_engine*, align 8
  %3 = alloca %struct.mtk_hsdma_chan*, align 8
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %2, align 8
  %4 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %5 = load i32, i32* @HSDMA_REG_GLO_CFG, align 4
  %6 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %4, i32 %5, i32 0)
  %7 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %8 = load i32, i32* @HSDMA_REG_INT_MASK, align 4
  %9 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %7, i32 %8, i32 0)
  %10 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %11 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %10, i32 0, i32 0
  %12 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %11, align 8
  %13 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %12, i64 0
  store %struct.mtk_hsdma_chan* %13, %struct.mtk_hsdma_chan** %3, align 8
  %14 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %15 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %16 = call i32 @mtk_hsdam_free_desc(%struct.mtk_hsdam_engine* %14, %struct.mtk_hsdma_chan* %15)
  %17 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %18 = load i32, i32* @HSDMA_REG_TX_BASE, align 4
  %19 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %17, i32 %18, i32 0)
  %20 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %21 = load i32, i32* @HSDMA_REG_TX_CNT, align 4
  %22 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %20, i32 %21, i32 0)
  %23 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %24 = load i32, i32* @HSDMA_REG_RX_BASE, align 4
  %25 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %23, i32 %24, i32 0)
  %26 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %27 = load i32, i32* @HSDMA_REG_RX_CNT, align 4
  %28 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %26, i32 %27, i32 0)
  %29 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %30 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %31 = call i32 @mtk_hsdma_reset_chan(%struct.mtk_hsdam_engine* %29, %struct.mtk_hsdma_chan* %30)
  ret void
}

declare dso_local i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine*, i32, i32) #1

declare dso_local i32 @mtk_hsdam_free_desc(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

declare dso_local i32 @mtk_hsdma_reset_chan(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
