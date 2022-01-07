; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.dma_tx_state = type { i64 }
%struct.gdma_dmaengine_chan = type { i32, %struct.TYPE_11__, %struct.gdma_dma_desc* }
%struct.TYPE_11__ = type { i32 }
%struct.gdma_dma_desc = type { i64, %struct.TYPE_9__*, i64, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.virt_dma_desc = type { i32 }
%struct.TYPE_12__ = type { i64 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tx residue %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @gdma_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdma_dma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.gdma_dmaengine_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.gdma_dma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan* %13)
  store %struct.gdma_dmaengine_chan* %14, %struct.gdma_dmaengine_chan** %8, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i64 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @DMA_COMPLETE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %24 = icmp ne %struct.dma_tx_state* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %108

27:                                               ; preds = %22
  %28 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %8, align 8
  %29 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %8, align 8
  %34 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %33, i32 0, i32 2
  %35 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %34, align 8
  store %struct.gdma_dma_desc* %35, %struct.gdma_dma_desc** %12, align 8
  %36 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %12, align 8
  %37 = icmp ne %struct.gdma_dma_desc* %36, null
  br i1 %37, label %38, label %77

38:                                               ; preds = %27
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %12, align 8
  %41 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %38
  %47 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %12, align 8
  %48 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %12, align 8
  %53 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %8, align 8
  %56 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %12, align 8
  %60 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %58, %64
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %54, %66
  %68 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %69 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %76

70:                                               ; preds = %46
  %71 = load %struct.gdma_dma_desc*, %struct.gdma_dma_desc** %12, align 8
  %72 = getelementptr inbounds %struct.gdma_dma_desc, %struct.gdma_dma_desc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %75 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %51
  br label %92

77:                                               ; preds = %38, %27
  %78 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %8, align 8
  %79 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %78, i32 0, i32 1
  %80 = load i64, i64* %6, align 8
  %81 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_11__* %79, i64 %80)
  store %struct.virt_dma_desc* %81, %struct.virt_dma_desc** %9, align 8
  %82 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %83 = icmp ne %struct.virt_dma_desc* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %86 = call %struct.TYPE_12__* @to_gdma_dma_desc(%struct.virt_dma_desc* %85)
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %90 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %76
  %93 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %8, align 8
  %94 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %99 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %104 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %92, %25
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_11__*, i64) #1

declare dso_local %struct.TYPE_12__* @to_gdma_dma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
