; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_knav_dma_close_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_knav_dma_close_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.knav_dma_chan = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@kdev = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"keystone-navigator-dma driver not registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"channel %d or flow %d closed from DMA %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knav_dma_close_channel(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.knav_dma_chan*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.knav_dma_chan*
  store %struct.knav_dma_chan* %5, %struct.knav_dma_chan** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kdev, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %11, i32 0, i32 3
  %13 = call i64 @atomic_dec_return(i32* %12)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %17 = call i32 @chan_stop(%struct.knav_dma_chan* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i64 @atomic_dec_return(i32* %22)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @knav_dma_hw_destroy(%struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kdev, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %41 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %30, %8
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @chan_stop(%struct.knav_dma_chan*) #1

declare dso_local i32 @knav_dma_hw_destroy(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
