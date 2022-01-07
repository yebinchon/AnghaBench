; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_bdma_interrupt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_bdma_interrupt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_bdma_chan = type { i64 }

@TSI721_DMAC_INT_ALL = common dso_local global i32 0, align 4
@TSI721_DMAC_INT = common dso_local global i64 0, align 8
@TSI721_DMAC_INTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_bdma_chan*, i32)* @tsi721_bdma_interrupt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_bdma_interrupt_enable(%struct.tsi721_bdma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.tsi721_bdma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.tsi721_bdma_chan* %0, %struct.tsi721_bdma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = load i32, i32* @TSI721_DMAC_INT_ALL, align 4
  %9 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TSI721_DMAC_INT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @iowrite32(i32 %8, i64 %13)
  %15 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TSI721_DMAC_INT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  %21 = load i32, i32* @TSI721_DMAC_INT_ALL, align 4
  %22 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TSI721_DMAC_INTE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 %21, i64 %26)
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TSI721_DMAC_INTE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite32(i32 0, i64 %33)
  %35 = load i32, i32* @TSI721_DMAC_INT_ALL, align 4
  %36 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %37 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TSI721_DMAC_INT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @iowrite32(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
