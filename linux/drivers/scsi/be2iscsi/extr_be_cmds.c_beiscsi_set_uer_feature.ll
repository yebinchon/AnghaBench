; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_set_uer_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_set_uer_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32, %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32, i32 }
%struct.be_cmd_set_features = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_FEATURES = common dso_local global i32 0, align 4
@EMBED_MBX_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@BE_CMD_SET_FEATURE_UER = common dso_local global i32 0, align 4
@BE_CMD_UER_SUPP_BIT = common dso_local global i32 0, align 4
@BEISCSI_HBA_UER_SUPP = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BG_%d : HBA error recovery supported\0A\00", align 1
@MCC_STATUS_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@MCC_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BG_%d : HBA error recovery not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_set_uer_feature(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.be_cmd_set_features*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %7 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %7, i32 0, i32 2
  store %struct.be_ctrl_info* %8, %struct.be_ctrl_info** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %10 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 1
  %14 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %13)
  store %struct.be_mcc_wrb* %14, %struct.be_mcc_wrb** %5, align 8
  %15 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %16 = call i32 @memset(%struct.be_mcc_wrb* %15, i32 0, i32 4)
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %18 = call %struct.be_cmd_set_features* @embedded_payload(%struct.be_mcc_wrb* %17)
  store %struct.be_cmd_set_features* %18, %struct.be_cmd_set_features** %4, align 8
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %20 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %19, i32 20, i32 1, i32 0)
  %21 = load %struct.be_cmd_set_features*, %struct.be_cmd_set_features** %4, align 8
  %22 = getelementptr inbounds %struct.be_cmd_set_features, %struct.be_cmd_set_features* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %25 = load i32, i32* @OPCODE_COMMON_SET_FEATURES, align 4
  %26 = load i32, i32* @EMBED_MBX_MAX_PAYLOAD_SIZE, align 4
  %27 = call i32 @be_cmd_hdr_prepare(i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @BE_CMD_SET_FEATURE_UER, align 4
  %29 = load %struct.be_cmd_set_features*, %struct.be_cmd_set_features** %4, align 8
  %30 = getelementptr inbounds %struct.be_cmd_set_features, %struct.be_cmd_set_features* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.be_cmd_set_features*, %struct.be_cmd_set_features** %4, align 8
  %32 = getelementptr inbounds %struct.be_cmd_set_features, %struct.be_cmd_set_features* %31, i32 0, i32 0
  store i32 4, i32* %32, align 4
  %33 = load i32, i32* @BE_CMD_UER_SUPP_BIT, align 4
  %34 = load %struct.be_cmd_set_features*, %struct.be_cmd_set_features** %4, align 8
  %35 = getelementptr inbounds %struct.be_cmd_set_features, %struct.be_cmd_set_features* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %39 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %1
  %43 = load %struct.be_cmd_set_features*, %struct.be_cmd_set_features** %4, align 8
  %44 = getelementptr inbounds %struct.be_cmd_set_features, %struct.be_cmd_set_features* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %49 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @BEISCSI_HBA_UER_SUPP, align 4
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %52 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %55 = load i32, i32* @KERN_INFO, align 4
  %56 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %57 = call i32 @beiscsi_log(%struct.beiscsi_hba* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %71

58:                                               ; preds = %1
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MCC_STATUS_ILLEGAL_REQUEST, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MCC_STATUS_INVALID_LENGTH, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %58
  %67 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %67, i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %42
  %72 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %73 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local %struct.be_cmd_set_features* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
