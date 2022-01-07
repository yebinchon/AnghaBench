; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_chan_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_chan_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.knav_dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DMA_TEARDOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DMA_TIMEOUT = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i64 0, align 8
@kdev = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for teardown\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_dma_chan*)* @chan_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_teardown(%struct.knav_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knav_dma_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.knav_dma_chan* %0, %struct.knav_dma_chan** %3, align 8
  %6 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  %12 = load i32, i32* @DMA_TEARDOWN, align 4
  %13 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @writel_relaxed(i32 %12, i32* %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* @DMA_TIMEOUT, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %34, %11
  %23 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i64 @readl_relaxed(i32* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @DMA_ENABLE, align 8
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %39

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @jiffies, align 8
  %37 = call i64 @time_after(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %22, label %39

39:                                               ; preds = %34, %32
  %40 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %41 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i64 @readl_relaxed(i32* %43)
  %45 = load i64, i64* @DMA_ENABLE, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kdev, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %48, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @readl_relaxed(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
