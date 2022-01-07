; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_reset_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_reset_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { i32 }
%struct.mtk_hsdma_chan = type { i32, i32, i32 }

@HSDMA_DESCS_NUM = common dso_local global i32 0, align 4
@HSDMA_REG_TX_CTX = common dso_local global i32 0, align 4
@HSDMA_REG_RX_CRX = common dso_local global i32 0, align 4
@HSDMA_REG_RST_CFG = common dso_local global i32 0, align 4
@HSDMA_RST_TX_SHIFT = common dso_local global i32 0, align 4
@HSDMA_RST_RX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*)* @mtk_hsdma_reset_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_reset_chan(%struct.mtk_hsdam_engine* %0, %struct.mtk_hsdma_chan* %1) #0 {
  %3 = alloca %struct.mtk_hsdam_engine*, align 8
  %4 = alloca %struct.mtk_hsdma_chan*, align 8
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %3, align 8
  store %struct.mtk_hsdma_chan* %1, %struct.mtk_hsdma_chan** %4, align 8
  %5 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %6 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %12 = load i32, i32* @HSDMA_REG_TX_CTX, align 4
  %13 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %11, i32 %12, i32 %15)
  %17 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %18 = load i32, i32* @HSDMA_REG_RX_CRX, align 4
  %19 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %17, i32 %18, i32 %21)
  %23 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %24 = load i32, i32* @HSDMA_REG_RST_CFG, align 4
  %25 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HSDMA_RST_TX_SHIFT, align 4
  %29 = add nsw i32 %27, %28
  %30 = shl i32 1, %29
  %31 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %23, i32 %24, i32 %30)
  %32 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %33 = load i32, i32* @HSDMA_REG_RST_CFG, align 4
  %34 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HSDMA_RST_RX_SHIFT, align 4
  %38 = add nsw i32 %36, %37
  %39 = shl i32 1, %38
  %40 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %32, i32 %33, i32 %39)
  ret void
}

declare dso_local i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
