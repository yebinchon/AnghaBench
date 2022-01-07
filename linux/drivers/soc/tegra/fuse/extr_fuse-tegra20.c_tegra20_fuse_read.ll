; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/fuse/extr_fuse-tegra20.c_tegra20_fuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/fuse/extr_fuse-tegra20.c_tegra20_fuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_fuse = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dma_async_tx_descriptor = type { %struct.tegra_fuse*, i32 }

@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@FUSE_BEGIN = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@apb_dma_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"apb read dma timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_fuse*, i32)* @tegra20_fuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_fuse_read(%struct.tegra_fuse* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_fuse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_fuse* %0, %struct.tegra_fuse** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %11 = load i64, i64* @DMA_CTRL_ACK, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FUSE_BEGIN, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = call i32 @dmaengine_slave_config(i32 %32, %struct.TYPE_4__* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %104

40:                                               ; preds = %2
  %41 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %44, i32 %48, i32 4, i32 %49, i64 %50)
  store %struct.dma_async_tx_descriptor* %51, %struct.dma_async_tx_descriptor** %6, align 8
  %52 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %53 = icmp ne %struct.dma_async_tx_descriptor* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  br label %104

55:                                               ; preds = %40
  %56 = load i32, i32* @apb_dma_complete, align 4
  %57 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %58 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %60 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %61 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %60, i32 0, i32 0
  store %struct.tegra_fuse* %59, %struct.tegra_fuse** %61, align 8
  %62 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = call i32 @reinit_completion(i32* %64)
  %66 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @clk_prepare_enable(i32 %68)
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %71 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %70)
  %72 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dma_async_issue_pending(i32 %75)
  %77 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = call i32 @msecs_to_jiffies(i32 50)
  %81 = call i64 @wait_for_completion_timeout(i32* %79, i32 %80)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i64 @WARN(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %55
  %88 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %89 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dmaengine_terminate_all(i32 %91)
  br label %99

93:                                               ; preds = %55
  %94 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %95 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %101 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @clk_disable_unprepare(i32 %102)
  br label %104

104:                                              ; preds = %99, %54, %39
  %105 = load %struct.tegra_fuse*, %struct.tegra_fuse** %3, align 8
  %106 = getelementptr inbounds %struct.tegra_fuse, %struct.tegra_fuse* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.TYPE_4__*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32, i32, i32, i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
