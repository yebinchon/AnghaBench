; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_set_host_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_set_host_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32, i32 }
%struct.be_cmd_set_host_data = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_HOST_DATA = common dso_local global i32 0, align 4
@EMBED_MBX_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@BE_CMD_SET_HOST_PARAM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Linux iSCSI v%s\00", align 1
@BUILD_STR = common dso_local global i8* null, align 8
@BE_CMD_MAX_DRV_VERSION = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"BG_%d : HBA set host driver version\0A\00", align 1
@MCC_STATUS_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@MCC_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"BG_%d : HBA failed to set host driver version\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_set_host_data(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.be_cmd_set_host_data*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  store %struct.be_ctrl_info* %9, %struct.be_ctrl_info** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = call i64 @is_chip_be2_be3r(%struct.beiscsi_hba* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %104

15:                                               ; preds = %1
  %16 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %17 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %20 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %19, i32 0, i32 1
  %21 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %20)
  store %struct.be_mcc_wrb* %21, %struct.be_mcc_wrb** %6, align 8
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %23 = call i32 @memset(%struct.be_mcc_wrb* %22, i32 0, i32 4)
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %25 = call %struct.be_cmd_set_host_data* @embedded_payload(%struct.be_mcc_wrb* %24)
  store %struct.be_cmd_set_host_data* %25, %struct.be_cmd_set_host_data** %5, align 8
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %27 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %26, i32 32, i32 1, i32 0)
  %28 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %29 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %32 = load i32, i32* @OPCODE_COMMON_SET_HOST_DATA, align 4
  %33 = load i32, i32* @EMBED_MBX_MAX_PAYLOAD_SIZE, align 4
  %34 = call i32 @be_cmd_hdr_prepare(i32* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @BE_CMD_SET_HOST_PARAM_ID, align 4
  %36 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %37 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 8
  %40 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %41 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** @BUILD_STR, align 8
  %47 = call i64 @snprintf(i8* %45, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %49 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %47, i64* %51, align 8
  %52 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %53 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i64 @ALIGN(i64 %57, i32 4)
  %59 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %60 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %64 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BE_CMD_MAX_DRV_VERSION, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %15
  %71 = load i64, i64* @BE_CMD_MAX_DRV_VERSION, align 8
  %72 = load %struct.be_cmd_set_host_data*, %struct.be_cmd_set_host_data** %5, align 8
  %73 = getelementptr inbounds %struct.be_cmd_set_host_data, %struct.be_cmd_set_host_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %15
  %77 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %78 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %83 = load i32, i32* @KERN_INFO, align 4
  %84 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %85 = call i32 @beiscsi_log(%struct.beiscsi_hba* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %99

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @MCC_STATUS_ILLEGAL_REQUEST, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @MCC_STATUS_INVALID_LENGTH, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90, %86
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %96 = load i32, i32* @KERN_INFO, align 4
  %97 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %95, i32 %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %81
  %100 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %101 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %99, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @is_chip_be2_be3r(%struct.beiscsi_hba*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local %struct.be_cmd_set_host_data* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
