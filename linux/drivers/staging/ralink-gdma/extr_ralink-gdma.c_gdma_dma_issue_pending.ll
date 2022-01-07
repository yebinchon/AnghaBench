; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.gdma_dmaengine_chan = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gdma_dma_dev = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"chan %d no desc to issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @gdma_dma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdma_dma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.gdma_dmaengine_chan*, align 8
  %4 = alloca %struct.gdma_dma_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan* %6)
  store %struct.gdma_dmaengine_chan* %7, %struct.gdma_dmaengine_chan** %3, align 8
  %8 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %9 = call %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan* %8)
  store %struct.gdma_dma_dev* %9, %struct.gdma_dma_dev** %4, align 8
  %10 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %11 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %16 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %15, i32 0, i32 0
  %17 = call i64 @vchan_issue_pending(%struct.TYPE_4__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %1
  %20 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %21 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %19
  %25 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %26 = call i64 @gdma_next_desc(%struct.gdma_dmaengine_chan* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %30 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %33 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %32, i32 0, i32 2
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %36 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %35, i32 0, i32 1
  %37 = call i32 @tasklet_schedule(i32* %36)
  br label %47

38:                                               ; preds = %24
  %39 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %4, align 8
  %40 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %44 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %38, %28
  br label %48

48:                                               ; preds = %47, %19, %1
  %49 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %3, align 8
  %50 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_4__*) #1

declare dso_local i64 @gdma_next_desc(%struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
