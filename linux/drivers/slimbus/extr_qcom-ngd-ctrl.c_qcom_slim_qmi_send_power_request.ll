; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_send_power_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_send_power_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.slimbus_power_req_msg_v01 = type { i32 }
%struct.slimbus_power_resp_msg_v01 = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qmi_txn = type { i32 }

@slimbus_power_resp_msg_v01_ei = common dso_local global i32 0, align 4
@SLIMBUS_QMI_POWER_REQ_V01 = common dso_local global i32 0, align 4
@SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN = common dso_local global i32 0, align 4
@slimbus_power_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"QMI send req fail %d\0A\00", align 1
@SLIMBUS_QMI_RESP_TOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"QMI TXN wait fail: %d\0A\00", align 1
@QMI_RESULT_SUCCESS_V01 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"QMI request failed 0x%x\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*, %struct.slimbus_power_req_msg_v01*)* @qcom_slim_qmi_send_power_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_qmi_send_power_request(%struct.qcom_slim_ngd_ctrl* %0, %struct.slimbus_power_req_msg_v01* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %5 = alloca %struct.slimbus_power_req_msg_v01*, align 8
  %6 = alloca %struct.slimbus_power_resp_msg_v01, align 4
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %4, align 8
  store %struct.slimbus_power_req_msg_v01* %1, %struct.slimbus_power_req_msg_v01** %5, align 8
  %9 = bitcast %struct.slimbus_power_resp_msg_v01* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @slimbus_power_resp_msg_v01_ei, align 4
  %15 = call i32 @qmi_txn_init(i32 %13, %struct.qmi_txn* %7, i32 %14, %struct.slimbus_power_resp_msg_v01* %6)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SLIMBUS_QMI_POWER_REQ_V01, align 4
  %21 = load i32, i32* @SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN, align 4
  %22 = load i32, i32* @slimbus_power_req_msg_v01_ei, align 4
  %23 = load %struct.slimbus_power_req_msg_v01*, %struct.slimbus_power_req_msg_v01** %5, align 8
  %24 = call i32 @qmi_send_request(i32 %19, i32* null, %struct.qmi_txn* %7, i32 %20, i32 %21, i32 %22, %struct.slimbus_power_req_msg_v01* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %2
  %36 = load i32, i32* @SLIMBUS_QMI_RESP_TOUT, align 4
  %37 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %42 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %64

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.slimbus_power_resp_msg_v01, %struct.slimbus_power_resp_msg_v01* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @QMI_RESULT_SUCCESS_V01, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %55 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.slimbus_power_resp_msg_v01, %struct.slimbus_power_resp_msg_v01* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EREMOTEIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %53, %40, %27
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qmi_txn_init(i32, %struct.qmi_txn*, i32, %struct.slimbus_power_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.slimbus_power_req_msg_v01*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #2

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
