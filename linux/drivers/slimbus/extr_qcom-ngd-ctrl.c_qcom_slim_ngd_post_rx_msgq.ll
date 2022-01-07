; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_post_rx_msgq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_post_rx_msgq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, i32, i64, i64, %struct.qcom_slim_ngd_dma_desc* }
%struct.qcom_slim_ngd_dma_desc = type { %struct.TYPE_3__*, i64, i64, %struct.qcom_slim_ngd_ctrl* }
%struct.TYPE_3__ = type { i32, %struct.qcom_slim_ngd_dma_desc*, i32 }

@QCOM_SLIM_NGD_DESC_NUM = common dso_local global i32 0, align 4
@SLIM_MSGQ_BUF_LEN = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to prepare rx channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qcom_slim_ngd_rx_msgq_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*)* @qcom_slim_ngd_post_rx_msgq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_post_rx_msgq(%struct.qcom_slim_ngd_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %4 = alloca %struct.qcom_slim_ngd_dma_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %82, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @QCOM_SLIM_NGD_DESC_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %85

10:                                               ; preds = %6
  %11 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %11, i32 0, i32 4
  %13 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %13, i64 %15
  store %struct.qcom_slim_ngd_dma_desc* %16, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %17 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %28 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %28, i32 0, i32 3
  store %struct.qcom_slim_ngd_ctrl* %27, %struct.qcom_slim_ngd_ctrl** %29, align 8
  %30 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %44 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %47 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %48 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %49 = call %struct.TYPE_3__* @dmaengine_prep_slave_single(i32 %42, i64 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %50, i32 0, i32 0
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %51, align 8
  %52 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %53 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %10
  %57 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %58 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %90

63:                                               ; preds = %10
  %64 = load i32, i32* @qcom_slim_ngd_rx_msgq_cb, align 4
  %65 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %66 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 8
  %69 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %70 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %71 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store %struct.qcom_slim_ngd_dma_desc* %69, %struct.qcom_slim_ngd_dma_desc** %73, align 8
  %74 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %75 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = call i32 @dmaengine_submit(%struct.TYPE_3__* %76)
  %78 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %4, align 8
  %79 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %6

85:                                               ; preds = %6
  %86 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %87 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dma_async_issue_pending(i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %56
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_3__* @dmaengine_prep_slave_single(i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
