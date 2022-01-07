; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_send_select_inst_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_send_select_inst_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.slimbus_select_inst_req_msg_v01 = type { i32 }
%struct.slimbus_select_inst_resp_msg_v01 = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qmi_txn = type { i32 }

@slimbus_select_inst_resp_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"QMI TXN init fail: %d\0A\00", align 1
@SLIMBUS_QMI_SELECT_INSTANCE_REQ_V01 = common dso_local global i32 0, align 4
@SLIMBUS_QMI_SELECT_INSTANCE_REQ_MAX_MSG_LEN = common dso_local global i32 0, align 4
@slimbus_select_inst_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"QMI send req fail %d\0A\00", align 1
@SLIMBUS_QMI_RESP_TOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"QMI TXN wait fail: %d\0A\00", align 1
@QMI_RESULT_SUCCESS_V01 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"QMI request failed 0x%x\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*, %struct.slimbus_select_inst_req_msg_v01*)* @qcom_slim_qmi_send_select_inst_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_qmi_send_select_inst_req(%struct.qcom_slim_ngd_ctrl* %0, %struct.slimbus_select_inst_req_msg_v01* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %5 = alloca %struct.slimbus_select_inst_req_msg_v01*, align 8
  %6 = alloca %struct.slimbus_select_inst_resp_msg_v01, align 4
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %4, align 8
  store %struct.slimbus_select_inst_req_msg_v01* %1, %struct.slimbus_select_inst_req_msg_v01** %5, align 8
  %9 = bitcast %struct.slimbus_select_inst_resp_msg_v01* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @slimbus_select_inst_resp_msg_v01_ei, align 4
  %15 = call i32 @qmi_txn_init(i32 %13, %struct.qmi_txn* %7, i32 %14, %struct.slimbus_select_inst_resp_msg_v01* %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %2
  %26 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SLIMBUS_QMI_SELECT_INSTANCE_REQ_V01, align 4
  %31 = load i32, i32* @SLIMBUS_QMI_SELECT_INSTANCE_REQ_MAX_MSG_LEN, align 4
  %32 = load i32, i32* @slimbus_select_inst_req_msg_v01_ei, align 4
  %33 = load %struct.slimbus_select_inst_req_msg_v01*, %struct.slimbus_select_inst_req_msg_v01** %5, align 8
  %34 = call i32 @qmi_send_request(i32 %29, i32* null, %struct.qmi_txn* %7, i32 %30, i32 %31, i32 %32, %struct.slimbus_select_inst_req_msg_v01* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %74

45:                                               ; preds = %25
  %46 = load i32, i32* @SLIMBUS_QMI_RESP_TOUT, align 4
  %47 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %52 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.slimbus_select_inst_resp_msg_v01, %struct.slimbus_select_inst_resp_msg_v01* %6, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @QMI_RESULT_SUCCESS_V01, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %65 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.slimbus_select_inst_resp_msg_v01, %struct.slimbus_select_inst_resp_msg_v01* %6, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EREMOTEIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %63, %50, %37, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qmi_txn_init(i32, %struct.qmi_txn*, i32, %struct.slimbus_select_inst_resp_msg_v01*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @qmi_send_request(i32, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.slimbus_select_inst_req_msg_v01*) #2

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #2

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
