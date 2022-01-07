; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_bdma_chan = type { i32, i64, i32 }

@TSI721_DMAC_CTL_SUSP = common dso_local global i32 0, align 4
@TSI721_DMAC_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_bdma_chan*)* @tsi721_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_dma_stop(%struct.tsi721_bdma_chan* %0) #0 {
  %2 = alloca %struct.tsi721_bdma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.tsi721_bdma_chan* %0, %struct.tsi721_bdma_chan** %2, align 8
  %4 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %14 = call i32 @tsi721_dma_is_idle(%struct.tsi721_bdma_chan* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %9
  store i32 100000, i32* %3, align 4
  %17 = load i32, i32* @TSI721_DMAC_CTL_SUSP, align 4
  %18 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TSI721_DMAC_CTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite32(i32 %17, i64 %22)
  br label %24

24:                                               ; preds = %34, %16
  %25 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %26 = call i32 @tsi721_dma_is_idle(%struct.tsi721_bdma_chan* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = call i32 @udelay(i32 1)
  br label %24

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %9
  %38 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %39 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  br label %41

41:                                               ; preds = %37, %8
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tsi721_dma_is_idle(%struct.tsi721_bdma_chan*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
