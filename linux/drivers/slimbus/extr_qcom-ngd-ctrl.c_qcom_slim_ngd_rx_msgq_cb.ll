; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_rx_msgq_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_rx_msgq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_dma_desc = type { %struct.TYPE_3__*, i32, i64, %struct.qcom_slim_ngd_ctrl* }
%struct.TYPE_3__ = type { void (i8*)*, i32, %struct.qcom_slim_ngd_dma_desc* }
%struct.qcom_slim_ngd_ctrl = type { i32, i32 }

@SLIM_MSGQ_BUF_LEN = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to prepare rx channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qcom_slim_ngd_rx_msgq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_slim_ngd_rx_msgq_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qcom_slim_ngd_dma_desc*, align 8
  %4 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.qcom_slim_ngd_dma_desc*
  store %struct.qcom_slim_ngd_dma_desc* %6, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %7 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %7, i32 0, i32 3
  %9 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %8, align 8
  store %struct.qcom_slim_ngd_ctrl* %9, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %10 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %11 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @qcom_slim_ngd_rx(%struct.qcom_slim_ngd_ctrl* %10, i32* %14)
  %16 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %20 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %23 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %24 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %25 = call %struct.TYPE_3__* @dmaengine_prep_slave_single(i32 %18, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %27 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %26, i32 0, i32 0
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %29 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %34 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %59

37:                                               ; preds = %1
  %38 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %39 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store void (i8*)* @qcom_slim_ngd_rx_msgq_cb, void (i8*)** %41, align 8
  %42 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %43 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %44 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store %struct.qcom_slim_ngd_dma_desc* %42, %struct.qcom_slim_ngd_dma_desc** %46, align 8
  %47 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %48 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @dmaengine_submit(%struct.TYPE_3__* %49)
  %51 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %52 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 8
  %55 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %56 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dma_async_issue_pending(i32 %57)
  br label %59

59:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @qcom_slim_ngd_rx(%struct.qcom_slim_ngd_ctrl*, i32*) #1

declare dso_local %struct.TYPE_3__* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
