; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { %struct.TYPE_2__, %struct.mtk_hsdma_chan*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_hsdma_chan = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"chan 0 no desc to issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdam_engine*)* @mtk_hsdma_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_tx(%struct.mtk_hsdam_engine* %0) #0 {
  %2 = alloca %struct.mtk_hsdam_engine*, align 8
  %3 = alloca %struct.mtk_hsdma_chan*, align 8
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %2, align 8
  %4 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %4, i32 0, i32 2
  %6 = call i64 @test_and_clear_bit(i32 0, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %9, i32 0, i32 1
  %11 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %10, align 8
  %12 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %11, i64 0
  store %struct.mtk_hsdma_chan* %12, %struct.mtk_hsdma_chan** %3, align 8
  %13 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %19 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %20 = call i32 @mtk_hsdma_start_transfer(%struct.mtk_hsdam_engine* %18, %struct.mtk_hsdma_chan* %19)
  br label %27

21:                                               ; preds = %8
  %22 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %2, align 8
  %23 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %21, %17
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mtk_hsdma_start_transfer(%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
