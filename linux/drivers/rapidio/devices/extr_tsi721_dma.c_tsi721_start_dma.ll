; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_bdma_chan = type { i64, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"DMAC%d Attempt to start non-idle channel\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"DMAC%d Attempt to start DMA with no BDs ready %d\00", align 1
@current = common dso_local global i32 0, align 4
@DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DMAC%d (wrc=%d) %d\00", align 1
@TSI721_DMAC_DWRCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_bdma_chan*)* @tsi721_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_start_dma(%struct.tsi721_bdma_chan* %0) #0 {
  %2 = alloca %struct.tsi721_bdma_chan*, align 8
  store %struct.tsi721_bdma_chan* %0, %struct.tsi721_bdma_chan** %2, align 8
  %3 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %4 = call i32 @tsi721_dma_is_idle(%struct.tsi721_bdma_chan* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32*, i8*, i32, ...) @tsi_err(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %72

16:                                               ; preds = %1
  %17 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @task_pid_nr(i32 %33)
  %35 = call i32 (i32*, i8*, i32, ...) @tsi_err(i32* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  br label %72

36:                                               ; preds = %16
  %37 = load i32, i32* @DMA, align 4
  %38 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %39 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %44 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %47 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @current, align 4
  %50 = call i32 @task_pid_nr(i32 %49)
  %51 = call i32 @tsi_debug(i32 %37, i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %45, i64 %48, i32 %50)
  %52 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %53 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %56 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TSI721_DMAC_DWRCNT, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @iowrite32(i64 %54, i64 %59)
  %61 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %62 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TSI721_DMAC_DWRCNT, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @ioread32(i64 %65)
  %67 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %68 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %2, align 8
  %71 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %36, %24, %6
  ret void
}

declare dso_local i32 @tsi721_dma_is_idle(%struct.tsi721_bdma_chan*) #1

declare dso_local i32 @tsi_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
