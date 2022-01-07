; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_tx_msg_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_tx_msg_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i8*, i32, i32, i32, i64, %struct.qcom_slim_ngd_dma_desc* }
%struct.qcom_slim_ngd_dma_desc = type { i8*, %struct.TYPE_3__*, i64, %struct.qcom_slim_ngd_ctrl* }
%struct.TYPE_3__ = type { i32, %struct.qcom_slim_ngd_dma_desc*, i32 }

@SLIM_MSGQ_BUF_LEN = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to prepare channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qcom_slim_ngd_tx_msg_dma_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*, i8*, i32)* @qcom_slim_ngd_tx_msg_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_tx_msg_post(%struct.qcom_slim_ngd_ctrl* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_slim_ngd_dma_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %12, i32 0, i32 1
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %18 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %16 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %27, i32 0, i32 5
  %29 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %29, i64 %31
  store %struct.qcom_slim_ngd_dma_desc* %32, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %33 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %40 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %48 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %50 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %51 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %50, i32 0, i32 3
  store %struct.qcom_slim_ngd_ctrl* %49, %struct.qcom_slim_ngd_ctrl** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 3
  %54 = and i32 %53, 252
  store i32 %54, i32* %7, align 4
  %55 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %56 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %59 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %63 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %64 = call %struct.TYPE_3__* @dmaengine_prep_slave_single(i32 %57, i64 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %66 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %65, i32 0, i32 1
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %68 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %3
  %72 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %73 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %77 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %76, i32 0, i32 1
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %109

82:                                               ; preds = %3
  %83 = load i32, i32* @qcom_slim_ngd_tx_msg_dma_cb, align 4
  %84 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %85 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 8
  %88 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %89 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %90 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store %struct.qcom_slim_ngd_dma_desc* %88, %struct.qcom_slim_ngd_dma_desc** %92, align 8
  %93 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %94 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = call i32 @dmaengine_submit(%struct.TYPE_3__* %95)
  %97 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %98 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  %101 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %102 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dma_async_issue_pending(i32 %103)
  %105 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %106 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %105, i32 0, i32 1
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %82, %71
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_3__* @dmaengine_prep_slave_single(i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
