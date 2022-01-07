; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_hsdma_dump_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_hsdma_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"tbase %08x, tcnt %08x, tctx %08x, tdtx: %08x, rbase %08x, rcnt %08x, rctx %08x, rdtx %08x\0A\00", align 1
@HSDMA_REG_TX_BASE = common dso_local global i32 0, align 4
@HSDMA_REG_TX_CNT = common dso_local global i32 0, align 4
@HSDMA_REG_TX_CTX = common dso_local global i32 0, align 4
@HSDMA_REG_TX_DTX = common dso_local global i32 0, align 4
@HSDMA_REG_RX_BASE = common dso_local global i32 0, align 4
@HSDMA_REG_RX_CNT = common dso_local global i32 0, align 4
@HSDMA_REG_RX_CRX = common dso_local global i32 0, align 4
@HSDMA_REG_RX_DRX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"info %08x, glo %08x, delay %08x, intr_stat %08x, intr_mask %08x\0A\00", align 1
@HSDMA_REG_INFO = common dso_local global i32 0, align 4
@HSDMA_REG_GLO_CFG = common dso_local global i32 0, align 4
@HSDMA_REG_DELAY_INT = common dso_local global i32 0, align 4
@HSDMA_REG_INT_STATUS = common dso_local global i32 0, align 4
@HSDMA_REG_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdam_engine*)* @hsdma_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsdma_dump_reg(%struct.mtk_hsdam_engine* %0) #0 {
  %2 = alloca %struct.mtk_hsdam_engine*, align 8
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %2, align 8
  %3 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %8 = load i32, i32* @HSDMA_REG_TX_BASE, align 4
  %9 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %7, i32 %8)
  %10 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %11 = load i32, i32* @HSDMA_REG_TX_CNT, align 4
  %12 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %10, i32 %11)
  %13 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %14 = load i32, i32* @HSDMA_REG_TX_CTX, align 4
  %15 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %13, i32 %14)
  %16 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %17 = load i32, i32* @HSDMA_REG_TX_DTX, align 4
  %18 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %16, i32 %17)
  %19 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %20 = load i32, i32* @HSDMA_REG_RX_BASE, align 4
  %21 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %19, i32 %20)
  %22 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %23 = load i32, i32* @HSDMA_REG_RX_CNT, align 4
  %24 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %22, i32 %23)
  %25 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %26 = load i32, i32* @HSDMA_REG_RX_CRX, align 4
  %27 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %25, i32 %26)
  %28 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %29 = load i32, i32* @HSDMA_REG_RX_DRX, align 4
  %30 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %28, i32 %29)
  %31 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @dev_dbg(i32 %6, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %33 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %37 = load i32, i32* @HSDMA_REG_INFO, align 4
  %38 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %36, i32 %37)
  %39 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %40 = load i32, i32* @HSDMA_REG_GLO_CFG, align 4
  %41 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %39, i32 %40)
  %42 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %43 = load i32, i32* @HSDMA_REG_DELAY_INT, align 4
  %44 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %42, i32 %43)
  %45 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %46 = load i32, i32* @HSDMA_REG_INT_STATUS, align 4
  %47 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %45, i32 %46)
  %48 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %49 = load i32, i32* @HSDMA_REG_INT_MASK, align 4
  %50 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %48, i32 %49)
  %51 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i32 %47, i32 %50)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
