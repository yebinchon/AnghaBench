; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_chan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_chan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.knav_dma_chan = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32* }

@kdev = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"channel stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_dma_chan*)* @chan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chan_stop(%struct.knav_dma_chan* %0) #0 {
  %2 = alloca %struct.knav_dma_chan*, align 8
  store %struct.knav_dma_chan* %0, %struct.knav_dma_chan** %2, align 8
  %3 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %3, i32 0, i32 0
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32 @writel_relaxed(i32 0, i32* %16)
  %18 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i32 @writel_relaxed(i32 0, i32* %23)
  %25 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @writel_relaxed(i32 0, i32* %30)
  %32 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %33 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i32 @writel_relaxed(i32 0, i32* %37)
  %39 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %40 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = call i32 @writel_relaxed(i32 0, i32* %44)
  br label %46

46:                                               ; preds = %10, %1
  %47 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %48 = call i32 @chan_teardown(%struct.knav_dma_chan* %47)
  %49 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %50 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %55 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = call i32 @writel_relaxed(i32 0, i32* %57)
  %59 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %60 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = call i32 @writel_relaxed(i32 0, i32* %62)
  %64 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %65 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @writel_relaxed(i32 0, i32* %67)
  br label %69

69:                                               ; preds = %53, %46
  %70 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %71 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %70, i32 0, i32 1
  %72 = call i32 @memset(i32* %71, i32 0, i32 4)
  %73 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %2, align 8
  %74 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kdev, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @chan_teardown(%struct.knav_dma_chan*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
