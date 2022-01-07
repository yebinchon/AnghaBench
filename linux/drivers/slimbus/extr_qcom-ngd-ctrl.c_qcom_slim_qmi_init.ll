; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_qmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.qmi_handle*, i32 }
%struct.qmi_handle = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.slimbus_select_inst_req_msg_v01 = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN = common dso_local global i32 0, align 4
@qcom_slim_qmi_msg_handlers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"QMI client init failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Remote Service connect failed: %d\0A\00", align 1
@SLIMBUS_MODE_SATELLITE_V01 = common dso_local global i32 0, align 4
@SLIMBUS_MODE_MASTER_V01 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to select h/w instance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*, i32)* @qcom_slim_qmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_qmi_init(%struct.qcom_slim_ngd_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.slimbus_select_inst_req_msg_v01, align 4
  %7 = alloca %struct.qmi_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.qmi_handle* @devm_kzalloc(i32 %11, i32 4, i32 %12)
  store %struct.qmi_handle* %13, %struct.qmi_handle** %7, align 8
  %14 = load %struct.qmi_handle*, %struct.qmi_handle** %7, align 8
  %15 = icmp ne %struct.qmi_handle* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  %20 = load %struct.qmi_handle*, %struct.qmi_handle** %7, align 8
  %21 = load i32, i32* @SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN, align 4
  %22 = load i32, i32* @qcom_slim_qmi_msg_handlers, align 4
  %23 = call i32 @qmi_handle_init(%struct.qmi_handle* %20, i32 %21, i32* null, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %88

32:                                               ; preds = %19
  %33 = load %struct.qmi_handle*, %struct.qmi_handle** %7, align 8
  %34 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %37 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to %struct.sockaddr*
  %40 = call i32 @kernel_connect(i32 %35, %struct.sockaddr* %39, i32 4, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %45 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %85

49:                                               ; preds = %32
  %50 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 1
  %56 = getelementptr inbounds %struct.slimbus_select_inst_req_msg_v01, %struct.slimbus_select_inst_req_msg_v01* %6, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.slimbus_select_inst_req_msg_v01, %struct.slimbus_select_inst_req_msg_v01* %6, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @SLIMBUS_MODE_SATELLITE_V01, align 4
  %62 = getelementptr inbounds %struct.slimbus_select_inst_req_msg_v01, %struct.slimbus_select_inst_req_msg_v01* %6, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @SLIMBUS_MODE_MASTER_V01, align 4
  %65 = getelementptr inbounds %struct.slimbus_select_inst_req_msg_v01, %struct.slimbus_select_inst_req_msg_v01* %6, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.qmi_handle*, %struct.qmi_handle** %7, align 8
  %68 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %69 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.qmi_handle* %67, %struct.qmi_handle** %70, align 8
  %71 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %72 = call i32 @qcom_slim_qmi_send_select_inst_req(%struct.qcom_slim_ngd_ctrl* %71, %struct.slimbus_select_inst_req_msg_v01* %6)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %77 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %81

80:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %95

81:                                               ; preds = %75
  %82 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %83 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store %struct.qmi_handle* null, %struct.qmi_handle** %84, align 8
  br label %85

85:                                               ; preds = %81, %43
  %86 = load %struct.qmi_handle*, %struct.qmi_handle** %7, align 8
  %87 = call i32 @qmi_handle_release(%struct.qmi_handle* %86)
  br label %88

88:                                               ; preds = %85, %26
  %89 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %90 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.qmi_handle*, %struct.qmi_handle** %7, align 8
  %93 = call i32 @devm_kfree(i32 %91, %struct.qmi_handle* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %88, %80, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.qmi_handle* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @qmi_handle_init(%struct.qmi_handle*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kernel_connect(i32, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @qcom_slim_qmi_send_select_inst_req(%struct.qcom_slim_ngd_ctrl*, %struct.slimbus_select_inst_req_msg_v01*) #1

declare dso_local i32 @qmi_handle_release(%struct.qmi_handle*) #1

declare dso_local i32 @devm_kfree(i32, %struct.qmi_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
