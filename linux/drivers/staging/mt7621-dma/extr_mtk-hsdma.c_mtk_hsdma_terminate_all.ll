; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_hsdma_chan = type { %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_hsdam_engine = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@head = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HSDMA_REG_GLO_CFG = common dso_local global i32 0, align 4
@HSDMA_GLO_RX_BUSY = common dso_local global i32 0, align 4
@HSDMA_GLO_TX_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"timeout, reset it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mtk_hsdma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_hsdma_chan*, align 8
  %4 = alloca %struct.mtk_hsdam_engine*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.mtk_hsdma_chan* @to_mtk_hsdma_chan(%struct.dma_chan* %6)
  store %struct.mtk_hsdma_chan* %7, %struct.mtk_hsdma_chan** %3, align 8
  %8 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %9 = call %struct.mtk_hsdam_engine* @mtk_hsdma_chan_get_dev(%struct.mtk_hsdma_chan* %8)
  store %struct.mtk_hsdam_engine* %9, %struct.mtk_hsdam_engine** %4, align 8
  %10 = load i32, i32* @head, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %21, i32 0, i32 1
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %24, i32 0, i32 0
  %26 = call i32 @vchan_get_all_descriptors(%struct.TYPE_5__* %25, i32* @head)
  %27 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %31, i32 0, i32 0
  %33 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_5__* %32, i32* @head)
  %34 = load i64, i64* @jiffies, align 8
  %35 = call i64 @msecs_to_jiffies(i32 2000)
  %36 = add i64 %34, %35
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %63, %1
  %38 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %39 = load i32, i32* @HSDMA_REG_GLO_CFG, align 4
  %40 = call i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine* %38, i32 %39)
  %41 = load i32, i32* @HSDMA_GLO_RX_BUSY, align 4
  %42 = load i32, i32* @HSDMA_GLO_TX_BUSY, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %37
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @time_after_eq(i64 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %53 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %54 = call i32 @hsdma_dump_desc(%struct.mtk_hsdam_engine* %52, %struct.mtk_hsdma_chan* %53)
  %55 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %56 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %57 = call i32 @mtk_hsdma_reset(%struct.mtk_hsdam_engine* %55, %struct.mtk_hsdma_chan* %56)
  %58 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %59 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %65

63:                                               ; preds = %46
  %64 = call i32 (...) @cpu_relax()
  br label %37

65:                                               ; preds = %51, %37
  ret i32 0
}

declare dso_local %struct.mtk_hsdma_chan* @to_mtk_hsdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.mtk_hsdam_engine* @mtk_hsdma_chan_get_dev(%struct.mtk_hsdma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mtk_hsdma_read(%struct.mtk_hsdam_engine*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @hsdma_dump_desc(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

declare dso_local i32 @mtk_hsdma_reset(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
