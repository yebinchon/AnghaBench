; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_qmi_svc_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_qmi_svc_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, %struct.qcom_slim_ngd_qmi }
%struct.qcom_slim_ngd_qmi = type { i32 }

@qcom_slim_ngd_qmi_svc_event_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"qmi_handle_init failed: %d\0A\00", align 1
@SLIMBUS_QMI_SVC_ID = common dso_local global i32 0, align 4
@SLIMBUS_QMI_SVC_V1 = common dso_local global i32 0, align 4
@SLIMBUS_QMI_INS_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"qmi_add_lookup failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*)* @qcom_slim_ngd_qmi_svc_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_qmi_svc_event_init(%struct.qcom_slim_ngd_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %4 = alloca %struct.qcom_slim_ngd_qmi*, align 8
  %5 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %6 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %6, i32 0, i32 1
  store %struct.qcom_slim_ngd_qmi* %7, %struct.qcom_slim_ngd_qmi** %4, align 8
  %8 = load %struct.qcom_slim_ngd_qmi*, %struct.qcom_slim_ngd_qmi** %4, align 8
  %9 = getelementptr inbounds %struct.qcom_slim_ngd_qmi, %struct.qcom_slim_ngd_qmi* %8, i32 0, i32 0
  %10 = call i32 @qmi_handle_init(i32* %9, i32 0, i32* @qcom_slim_ngd_qmi_svc_event_ops, i32* null)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.qcom_slim_ngd_qmi*, %struct.qcom_slim_ngd_qmi** %4, align 8
  %22 = getelementptr inbounds %struct.qcom_slim_ngd_qmi, %struct.qcom_slim_ngd_qmi* %21, i32 0, i32 0
  %23 = load i32, i32* @SLIMBUS_QMI_SVC_ID, align 4
  %24 = load i32, i32* @SLIMBUS_QMI_SVC_V1, align 4
  %25 = load i32, i32* @SLIMBUS_QMI_INS_ID, align 4
  %26 = call i32 @qmi_add_lookup(i32* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.qcom_slim_ngd_qmi*, %struct.qcom_slim_ngd_qmi** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_slim_ngd_qmi, %struct.qcom_slim_ngd_qmi* %35, i32 0, i32 0
  %37 = call i32 @qmi_handle_release(i32* %36)
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @qmi_handle_init(i32*, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @qmi_add_lookup(i32*, i32, i32, i32) #1

declare dso_local i32 @qmi_handle_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
