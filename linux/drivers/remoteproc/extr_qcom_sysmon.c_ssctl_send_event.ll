; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_ssctl_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_ssctl_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_sysmon = type { i32, i32, i32 }
%struct.ssctl_subsys_event_resp = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ssctl_subsys_event_req = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.qmi_txn = type { i32 }

@ssctl_subsys_event_resp_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate QMI txn\0A\00", align 1
@SSCTL_SSR_EVENT_BEFORE_SHUTDOWN = common dso_local global i32 0, align 4
@SSCTL_SSR_EVENT_FORCED = common dso_local global i32 0, align 4
@SSCTL_SUBSYS_EVENT_REQ = common dso_local global i32 0, align 4
@ssctl_subsys_event_req_ei = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to send shutdown request\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed receiving QMI response\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ssr event send failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ssr event send completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_sysmon*, i8*)* @ssctl_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssctl_send_event(%struct.qcom_sysmon* %0, i8* %1) #0 {
  %3 = alloca %struct.qcom_sysmon*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ssctl_subsys_event_resp, align 8
  %6 = alloca %struct.ssctl_subsys_event_req, align 8
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  store %struct.qcom_sysmon* %0, %struct.qcom_sysmon** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 @memset(%struct.ssctl_subsys_event_resp* %5, i32 0, i32 32)
  %10 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %11 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %10, i32 0, i32 2
  %12 = load i32, i32* @ssctl_subsys_event_resp_ei, align 4
  %13 = call i32 @qmi_txn_init(i32* %11, %struct.qmi_txn* %7, i32 %12, %struct.ssctl_subsys_event_resp* %5)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %80

21:                                               ; preds = %2
  %22 = bitcast %struct.ssctl_subsys_event_req* %6 to %struct.ssctl_subsys_event_resp*
  %23 = call i32 @memset(%struct.ssctl_subsys_event_resp* %22, i32 0, i32 32)
  %24 = getelementptr inbounds %struct.ssctl_subsys_event_req, %struct.ssctl_subsys_event_req* %6, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strlcpy(i32 %25, i8* %26, i32 4)
  %28 = getelementptr inbounds %struct.ssctl_subsys_event_req, %struct.ssctl_subsys_event_req* %6, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strlen(i32 %29)
  %31 = getelementptr inbounds %struct.ssctl_subsys_event_req, %struct.ssctl_subsys_event_req* %6, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @SSCTL_SSR_EVENT_BEFORE_SHUTDOWN, align 4
  %33 = getelementptr inbounds %struct.ssctl_subsys_event_req, %struct.ssctl_subsys_event_req* %6, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ssctl_subsys_event_req, %struct.ssctl_subsys_event_req* %6, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @SSCTL_SSR_EVENT_FORCED, align 4
  %36 = getelementptr inbounds %struct.ssctl_subsys_event_req, %struct.ssctl_subsys_event_req* %6, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %38 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %37, i32 0, i32 2
  %39 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %40 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %39, i32 0, i32 1
  %41 = load i32, i32* @SSCTL_SUBSYS_EVENT_REQ, align 4
  %42 = load i32, i32* @ssctl_subsys_event_req_ei, align 4
  %43 = bitcast %struct.ssctl_subsys_event_req* %6 to %struct.ssctl_subsys_event_resp*
  %44 = call i32 @qmi_send_request(i32* %38, i32* %40, %struct.qmi_txn* %7, i32 %41, i32 40, i32 %42, %struct.ssctl_subsys_event_resp* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %21
  %48 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %49 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  br label %80

53:                                               ; preds = %21
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 5, %54
  %56 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %61 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %80

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.ssctl_subsys_event_resp, %struct.ssctl_subsys_event_resp* %5, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %71 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %79

74:                                               ; preds = %64
  %75 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %3, align 8
  %76 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %16, %47, %79, %59
  ret void
}

declare dso_local i32 @memset(%struct.ssctl_subsys_event_resp*, i32, i32) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.ssctl_subsys_event_resp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.ssctl_subsys_event_resp*) #1

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #1

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
