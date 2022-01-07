; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_tx_msg_dma_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_tx_msg_dma_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_dma_desc = type { i32*, %struct.qcom_slim_ngd_ctrl* }
%struct.qcom_slim_ngd_ctrl = type { i32, i32 }

@QCOM_SLIM_NGD_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qcom_slim_ngd_tx_msg_dma_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_slim_ngd_tx_msg_dma_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qcom_slim_ngd_dma_desc*, align 8
  %4 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.qcom_slim_ngd_dma_desc*
  store %struct.qcom_slim_ngd_dma_desc* %7, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %8 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %8, i32 0, i32 1
  %10 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %9, align 8
  store %struct.qcom_slim_ngd_ctrl* %10, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %11 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %12 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %16 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %21 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @complete(i32* %22)
  %24 = load %struct.qcom_slim_ngd_dma_desc*, %struct.qcom_slim_ngd_dma_desc** %3, align 8
  %25 = getelementptr inbounds %struct.qcom_slim_ngd_dma_desc, %struct.qcom_slim_ngd_dma_desc* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @QCOM_SLIM_NGD_DESC_NUM, align 4
  %32 = srem i32 %30, %31
  %33 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %34 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
