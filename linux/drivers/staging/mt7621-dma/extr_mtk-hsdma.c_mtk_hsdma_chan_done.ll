; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_chan_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-dma/extr_mtk-hsdma.c_mtk_hsdma_chan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdam_engine = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_hsdma_chan = type { i64, %struct.TYPE_5__, i32, %struct.mtk_hsdma_desc* }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_hsdma_desc = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"no desc to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdam_engine*, %struct.mtk_hsdma_chan*)* @mtk_hsdma_chan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_chan_done(%struct.mtk_hsdam_engine* %0, %struct.mtk_hsdma_chan* %1) #0 {
  %3 = alloca %struct.mtk_hsdam_engine*, align 8
  %4 = alloca %struct.mtk_hsdma_chan*, align 8
  %5 = alloca %struct.mtk_hsdma_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_hsdam_engine* %0, %struct.mtk_hsdam_engine** %3, align 8
  store %struct.mtk_hsdma_chan* %1, %struct.mtk_hsdma_chan** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %11, i32 0, i32 3
  %13 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %12, align 8
  store %struct.mtk_hsdma_desc* %13, %struct.mtk_hsdma_desc** %5, align 8
  %14 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %5, align 8
  %15 = call i64 @likely(%struct.mtk_hsdma_desc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_hsdma_desc, %struct.mtk_hsdma_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_hsdma_desc, %struct.mtk_hsdma_desc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.mtk_hsdma_desc*, %struct.mtk_hsdma_desc** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_hsdma_desc, %struct.mtk_hsdma_desc* %30, i32 0, i32 1
  %32 = call i32 @vchan_cookie_complete(%struct.TYPE_6__* %31)
  %33 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %34 = call i32 @gdma_next_desc(%struct.mtk_hsdma_chan* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %25, %17
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %35
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mtk_hsdam_engine*, %struct.mtk_hsdam_engine** %3, align 8
  %50 = getelementptr inbounds %struct.mtk_hsdam_engine, %struct.mtk_hsdam_engine* %49, i32 0, i32 0
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  br label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.mtk_hsdma_chan*, %struct.mtk_hsdma_chan** %4, align 8
  %54 = getelementptr inbounds %struct.mtk_hsdma_chan, %struct.mtk_hsdma_chan* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(%struct.mtk_hsdma_desc*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_6__*) #1

declare dso_local i32 @gdma_next_desc(%struct.mtk_hsdma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
