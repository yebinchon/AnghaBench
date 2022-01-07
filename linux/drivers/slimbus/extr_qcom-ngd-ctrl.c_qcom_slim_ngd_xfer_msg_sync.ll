; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_xfer_msg_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_xfer_msg_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32 }
%struct.slim_msg_txn = type { i32, i32, i32* }

@done = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TX timed out:MC:0x%x,mt:0x%x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_controller*, %struct.slim_msg_txn*)* @qcom_slim_ngd_xfer_msg_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_xfer_msg_sync(%struct.slim_controller* %0, %struct.slim_msg_txn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slim_controller*, align 8
  %5 = alloca %struct.slim_msg_txn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.slim_controller* %0, %struct.slim_controller** %4, align 8
  store %struct.slim_msg_txn* %1, %struct.slim_msg_txn** %5, align 8
  %8 = load i32, i32* @done, align 4
  %9 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %8)
  %10 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %11 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %15 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %14, i32 0, i32 2
  store i32* @done, i32** %15, align 8
  %16 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %17 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %18 = call i32 @qcom_slim_ngd_xfer_msg(%struct.slim_controller* %16, %struct.slim_msg_txn* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @HZ, align 4
  %25 = call i32 @wait_for_completion_timeout(i32* @done, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %30 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %33 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %36 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %28, %21
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @qcom_slim_ngd_xfer_msg(%struct.slim_controller*, %struct.slim_msg_txn*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
