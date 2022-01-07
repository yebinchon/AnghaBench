; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { %struct.TYPE_2__, %struct.mtk_hsdma_chan* }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_hsdma_chan = type { i32 }

@HSDMA_REG_TX_BASE = common dso_local global i32 0, align 4
@HSDMA_REG_TX_CNT = common dso_local global i32 0, align 4
@HSDMA_DESCS_NUM = common dso_local global i32 0, align 4
@HSDMA_REG_RX_BASE = common dso_local global i32 0, align 4
@HSDMA_REG_RX_CNT = common dso_local global i32 0, align 4
@HSDMA_REG_INT_MASK = common dso_local global i32 0, align 4
@HSDMA_INT_RX_Q0 = common dso_local global i32 0, align 4
@HSDMA_REG_GLO_CFG = common dso_local global i32 0, align 4
@HSDMA_GLO_DEFAULT = common dso_local global i32 0, align 4
@HSDMA_REG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rx: %d, tx: %d\0A\00", align 1
@HSDMA_INFO_RX_SHIFT = common dso_local global i32 0, align 4
@HSDMA_INFO_RX_MASK = common dso_local global i32 0, align 4
@HSDMA_INFO_TX_SHIFT = common dso_local global i32 0, align 4
@HSDMA_INFO_TX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hsdam_engine*)* @mtk_hsdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdma_init(%struct.mtk_hsdam_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_hsdam_engine*, align 8
  %4 = alloca %struct.mtk_hsdma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %3, align 8
  %7 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %7, i32 0, i32 1
  %9 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %8, align 8
  %10 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %9, i64 0
  store %struct.mtk_hsdma_chan* %10, %struct.mtk_hsdma_chan** %4, align 8
  %11 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %12 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %13 = call i32 @mtk_hsdam_alloc_desc(%struct.mtk_hsdam_engine* %11, %struct.mtk_hsdma_chan* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %20 = load i32, i32* @HSDMA_REG_TX_BASE, align 4
  %21 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %19, i32 %20, i32 %23)
  %25 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %26 = load i32, i32* @HSDMA_REG_TX_CNT, align 4
  %27 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %28 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %25, i32 %26, i32 %27)
  %29 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %30 = load i32, i32* @HSDMA_REG_RX_BASE, align 4
  %31 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = add i64 %34, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %29, i32 %30, i32 %39)
  %41 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %42 = load i32, i32* @HSDMA_REG_RX_CNT, align 4
  %43 = load i32, i32* @HSDMA_DESCS_NUM, align 4
  %44 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %41, i32 %42, i32 %43)
  %45 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %46 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %47 = call i32 @mtk_hsdma_reset_chan(%struct.mtk_hsdam_engine* %45, %struct.mtk_hsdma_chan* %46)
  %48 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %49 = load i32, i32* @HSDMA_REG_INT_MASK, align 4
  %50 = load i32, i32* @HSDMA_INT_RX_Q0, align 4
  %51 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %48, i32 %49, i32 %50)
  %52 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %53 = load i32, i32* @HSDMA_REG_GLO_CFG, align 4
  %54 = load i32, i32* @HSDMA_GLO_DEFAULT, align 4
  %55 = call i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine* %52, i32 %53, i32 %54)
  %56 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %57 = load i32, i32* @HSDMA_REG_INFO, align 4
  %58 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @HSDMA_INFO_RX_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* @HSDMA_INFO_RX_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @HSDMA_INFO_TX_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = load i32, i32* @HSDMA_INFO_TX_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %72)
  %74 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %75 = call i32 @hsdma_dump_reg(%struct.mtk_hsdam_engine* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %18, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @mtk_hsdam_alloc_desc(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

declare dso_local i32 @mtk_hsdma_write(%struct.mtk_hsdam_engine*, i32, i32) #1

declare dso_local i32 @mtk_hsdma_reset_chan(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

declare dso_local i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @hsdma_dump_reg(%struct.mtk_hsdam_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
