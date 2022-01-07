; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_clr_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_clr_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_bdma_chan = type { i32, i32, i64, i64* }

@TSI721_DMAC_DSRP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_bdma_chan*)* @tsi721_clr_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_clr_stat(%struct.tsi721_bdma_chan* %0) #0 {
  %2 = alloca %struct.tsi721_bdma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tsi721_bdma_chan* %0, %struct.tsi721_bdma_chan** %2, align 8
  %7 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %10, i32 0, i32 3
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %45, %1
  %16 = load i64*, i64** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi i1 [ false, %23 ], [ %32, %26 ]
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = load i64*, i64** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %23

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  %48 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %49 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %3, align 4
  %52 = srem i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = mul nsw i32 %53, 8
  store i32 %54, i32* %6, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %58 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TSI721_DMAC_DSRP, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @iowrite32(i32 %56, i64 %61)
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %65 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
