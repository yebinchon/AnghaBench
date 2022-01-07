; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_power_resp_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_power_resp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32 }
%struct.sockaddr_qrtr = type { i32 }
%struct.qmi_txn = type { i32 }
%struct.slimbus_power_resp_msg_v01 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"QMI power request failed 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qmi_handle*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)* @qcom_slim_qmi_power_resp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_slim_qmi_power_resp_cb(%struct.qmi_handle* %0, %struct.sockaddr_qrtr* %1, %struct.qmi_txn* %2, i8* %3) #0 {
  %5 = alloca %struct.qmi_handle*, align 8
  %6 = alloca %struct.sockaddr_qrtr*, align 8
  %7 = alloca %struct.qmi_txn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.slimbus_power_resp_msg_v01*, align 8
  store %struct.qmi_handle* %0, %struct.qmi_handle** %5, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %6, align 8
  store %struct.qmi_txn* %2, %struct.qmi_txn** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.slimbus_power_resp_msg_v01*
  store %struct.slimbus_power_resp_msg_v01* %11, %struct.slimbus_power_resp_msg_v01** %9, align 8
  %12 = load %struct.slimbus_power_resp_msg_v01*, %struct.slimbus_power_resp_msg_v01** %9, align 8
  %13 = getelementptr inbounds %struct.slimbus_power_resp_msg_v01, %struct.slimbus_power_resp_msg_v01* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.slimbus_power_resp_msg_v01*, %struct.slimbus_power_resp_msg_v01** %9, align 8
  %20 = getelementptr inbounds %struct.slimbus_power_resp_msg_v01, %struct.slimbus_power_resp_msg_v01* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %18, %4
  %25 = load %struct.qmi_txn*, %struct.qmi_txn** %7, align 8
  %26 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %25, i32 0, i32 0
  %27 = call i32 @complete(i32* %26)
  ret void
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
