; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_ssctl_request_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_ssctl_request_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_sysmon = type { i64, i32, i32, i32, i32, i32 }
%struct.ssctl_shutdown_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qmi_txn = type { i32 }

@ssctl_shutdown_resp_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate QMI txn\0A\00", align 1
@SSCTL_SHUTDOWN_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to send shutdown request\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed receiving QMI response\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"shutdown request failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"shutdown request completed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"timeout waiting for shutdown ack\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_sysmon*)* @ssctl_request_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssctl_request_shutdown(%struct.qcom_sysmon* %0) #0 {
  %2 = alloca %struct.qcom_sysmon*, align 8
  %3 = alloca %struct.ssctl_shutdown_resp, align 8
  %4 = alloca %struct.qmi_txn, align 4
  %5 = alloca i32, align 4
  store %struct.qcom_sysmon* %0, %struct.qcom_sysmon** %2, align 8
  %6 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %7 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %6, i32 0, i32 2
  %8 = call i32 @reinit_completion(i32* %7)
  %9 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %10 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %9, i32 0, i32 3
  %11 = call i32 @reinit_completion(i32* %10)
  %12 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %13 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %12, i32 0, i32 5
  %14 = load i32, i32* @ssctl_shutdown_resp_ei, align 4
  %15 = call i32 @qmi_txn_init(i32* %13, %struct.qmi_txn* %4, i32 %14, %struct.ssctl_shutdown_resp* %3)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %20 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %91

23:                                               ; preds = %1
  %24 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %25 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %24, i32 0, i32 5
  %26 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %27 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %26, i32 0, i32 4
  %28 = load i32, i32* @SSCTL_SHUTDOWN_REQ, align 4
  %29 = call i32 @qmi_send_request(i32* %25, i32* %27, %struct.qmi_txn* %4, i32 %28, i32 0, i32* null, i32* null)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %34 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %4)
  br label %91

38:                                               ; preds = %23
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 5, %39
  %41 = call i32 @qmi_txn_wait(%struct.qmi_txn* %4, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %46 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %65

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.ssctl_shutdown_resp, %struct.ssctl_shutdown_resp* %3, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %56 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %64

59:                                               ; preds = %49
  %60 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %61 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %67 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %72 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %71, i32 0, i32 3
  %73 = load i32, i32* @HZ, align 4
  %74 = mul nsw i32 10, %73
  %75 = call i32 @wait_for_completion_timeout(i32* %72, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %70
  %79 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %80 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %79, i32 0, i32 2
  %81 = call i32 @try_wait_for_completion(i32* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %86 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %18, %32, %90, %65
  ret void
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.ssctl_shutdown_resp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32*, i32*) #1

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #1

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
