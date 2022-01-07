; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_txn_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_txn_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_txn = type { i32, i32, i32, i32, %struct.qmi_handle* }
%struct.qmi_handle = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qmi_txn_wait(%struct.qmi_txn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qmi_txn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qmi_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.qmi_txn* %0, %struct.qmi_txn** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.qmi_txn*, %struct.qmi_txn** %4, align 8
  %9 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %8, i32 0, i32 4
  %10 = load %struct.qmi_handle*, %struct.qmi_handle** %9, align 8
  store %struct.qmi_handle* %10, %struct.qmi_handle** %6, align 8
  %11 = load %struct.qmi_txn*, %struct.qmi_txn** %4, align 8
  %12 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %11, i32 0, i32 3
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @wait_for_completion_timeout(i32* %12, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %16 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.qmi_txn*, %struct.qmi_txn** %4, align 8
  %19 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %22 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %21, i32 0, i32 1
  %23 = load %struct.qmi_txn*, %struct.qmi_txn** %4, align 8
  %24 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @idr_remove(i32* %22, i32 %25)
  %27 = load %struct.qmi_txn*, %struct.qmi_txn** %4, align 8
  %28 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %31 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.qmi_txn*, %struct.qmi_txn** %4, align 8
  %40 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
