; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_slim_ack_txn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_slim_ack_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ctrl = type { %struct.completion**, %struct.TYPE_2__ }
%struct.completion = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_slim_ctrl*, i32)* @slim_ack_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slim_ack_txn(%struct.qcom_slim_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_slim_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.completion*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qcom_slim_ctrl* %0, %struct.qcom_slim_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %21, %25
  %27 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %35, i32 0, i32 0
  %37 = load %struct.completion**, %struct.completion*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.completion*, %struct.completion** %37, i64 %39
  %41 = load %struct.completion*, %struct.completion** %40, align 8
  store %struct.completion* %41, %struct.completion** %5, align 8
  %42 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %42, i32 0, i32 0
  %44 = load %struct.completion**, %struct.completion*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.completion*, %struct.completion** %44, i64 %46
  store %struct.completion* null, %struct.completion** %47, align 8
  %48 = load %struct.completion*, %struct.completion** %5, align 8
  %49 = call i32 @complete(%struct.completion* %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
