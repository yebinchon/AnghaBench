; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_tx_msg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_tx_msg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, i32, i32, i32*, %struct.qcom_slim_ngd_dma_desc* }
%struct.qcom_slim_ngd_dma_desc = type { i32*, %struct.completion* }
%struct.completion = type { i32 }

@QCOM_SLIM_NGD_DESC_NUM = common dso_local global i32 0, align 4
@SLIM_MSGQ_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.qcom_slim_ngd_ctrl*, i32, %struct.completion*)* @qcom_slim_ngd_tx_msg_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qcom_slim_ngd_tx_msg_get(%struct.qcom_slim_ngd_ctrl* %0, i32 %1, %struct.completion* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.completion*, align 8
  %8 = alloca %struct.qcom_slim_ngd_dma_desc*, align 8
  %9 = alloca i64, align 8
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.completion* %2, %struct.completion** %7, align 8
  %10 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %10, i32 0, i32 2
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @QCOM_SLIM_NGD_DESC_NUM, align 4
  %19 = srem i32 %17, %18
  %20 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %25, i32 0, i32 2
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  store i32* null, i32** %4, align 8
  br label %68

29:                                               ; preds = %3
  %30 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %31 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %30, i32 0, i32 4
  %32 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %31, align 8
  %33 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %32, i64 %36
  store %struct.qcom_slim_ngd_dma_desc* %37, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %38 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %39 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %49 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.completion*, %struct.completion** %7, align 8
  %51 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %52 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %51, i32 0, i32 1
  store %struct.completion* %50, %struct.completion** %52, align 8
  %53 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %54 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @QCOM_SLIM_NGD_DESC_NUM, align 4
  %58 = srem i32 %56, %57
  %59 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %60 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %62 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %61, i32 0, i32 2
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %8, align 8
  %66 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %29, %24
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
