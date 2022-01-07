; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_hsdma_chan = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_hsdam_engine = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no desc to issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_hsdma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_hsdma_chan*, align 8
  %4 = alloca %struct.mtk_hsdam_engine*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.mtk_hsdma_chan* @to_mtk_hsdma_chan(%struct.dma_chan* %5)
  store %struct.mtk_hsdma_chan* %6, %struct.mtk_hsdma_chan** %3, align 8
  %7 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %8 = call %struct.mtk_hsdam_engine* @mtk_hsdma_chan_get_dev(%struct.mtk_hsdma_chan* %7)
  store %struct.mtk_hsdam_engine* %8, %struct.mtk_hsdam_engine** %4, align 8
  %9 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %13, i32 0, i32 0
  %15 = call i64 @vchan_issue_pending(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %24 = call i64 @gdma_next_desc(%struct.mtk_hsdma_chan* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %30, i32 0, i32 2
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %33, i32 0, i32 1
  %35 = call i32 @tasklet_schedule(i32* %34)
  br label %42

36:                                               ; preds = %22
  %37 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %26
  br label %43

43:                                               ; preds = %42, %17, %1
  %44 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  ret void
}

declare dso_local %struct.mtk_hsdma_chan* @to_mtk_hsdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.mtk_hsdam_engine* @mtk_hsdma_chan_get_dev(%struct.mtk_hsdma_chan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_4__*) #1

declare dso_local i64 @gdma_next_desc(%struct.mtk_hsdma_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
