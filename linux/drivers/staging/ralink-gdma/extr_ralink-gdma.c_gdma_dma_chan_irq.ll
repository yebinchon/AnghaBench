; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdma_dma_dev = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.gdma_dmaengine_chan = type { i32, %struct.TYPE_8__, i32, %struct.gdma_dma_desc* }
%struct.TYPE_8__ = type { i32 }
%struct.gdma_dma_desc = type { i32, %struct.TYPE_9__, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"chan %d no desc to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdma_dma_dev*, %struct.gdma_dmaengine_chan*)* @gdma_dma_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdma_dma_chan_irq(%struct.gdma_dma_dev* %0, %struct.gdma_dmaengine_chan* %1) #0 {
  %3 = alloca %struct.gdma_dma_dev*, align 8
  %4 = alloca %struct.gdma_dmaengine_chan*, align 8
  %5 = alloca %struct.gdma_dma_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gdma_dma_dev* %0, %struct.gdma_dma_dev** %3, align 8
  store %struct.gdma_dmaengine_chan* %1, %struct.gdma_dmaengine_chan** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %9 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %14 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %13, i32 0, i32 3
  %15 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %14, align 8
  store %struct.gdma_dma_desc* %15, %struct.gdma_dma_desc** %5, align 8
  %16 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %17 = icmp ne %struct.gdma_dma_desc* %16, null
  br i1 %17, label %18, label %76

18:                                               ; preds = %2
  %19 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %20 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %25 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %24, i32 0, i32 1
  %26 = call i32 @vchan_cyclic_callback(%struct.TYPE_9__* %25)
  %27 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %28 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %31 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %36 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %23
  store i32 1, i32* %7, align 4
  br label %75

38:                                               ; preds = %18
  %39 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %40 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %43 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %51 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %57 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %60 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %38
  %64 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %65 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i32 @list_del(i32* %66)
  %68 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %5, align 8
  %69 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %68, i32 0, i32 1
  %70 = call i32 @vchan_cookie_complete(%struct.TYPE_9__* %69)
  %71 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %72 = call i32 @gdma_next_desc(%struct.gdma_dmaengine_chan* %71)
  store i32 %72, i32* %7, align 4
  br label %74

73:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %37
  br label %85

76:                                               ; preds = %2
  %77 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %78 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %82 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %76, %75
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %90 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %3, align 8
  %93 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %92, i32 0, i32 0
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %88, %85
  %96 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %4, align 8
  %97 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_cyclic_callback(%struct.TYPE_9__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_9__*) #1

declare dso_local i32 @gdma_next_desc(%struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
