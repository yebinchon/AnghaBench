; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_q_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_q_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32, i32 }
%struct.be_queue_info = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_q_destroy = type { i32, i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BC_%d : In beiscsi_cmd_q_destroy queue_type : %d\0A\00", align 1
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_EQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_CQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_MCC_DESTROY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_WRBQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_DEFQ_DESTROY = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %0, %struct.be_queue_info* %1, i32 %2) #0 {
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_q_destroy*, align 8
  %9 = alloca %struct.beiscsi_hba*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %4, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %14 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %13, i32 0, i32 2
  %15 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %7, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %17 = call %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb* %16)
  store %struct.be_cmd_req_q_destroy* %17, %struct.be_cmd_req_q_destroy** %8, align 8
  %18 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %19 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.beiscsi_hba* @pci_get_drvdata(i32 %20)
  store %struct.beiscsi_hba* %21, %struct.beiscsi_hba** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %23 = load i32, i32* @KERN_INFO, align 4
  %24 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @beiscsi_log(%struct.beiscsi_hba* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %28 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %31 = call i32 @memset(%struct.be_mcc_wrb* %30, i32 0, i32 4)
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %33 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %32, i32 8, i32 1, i32 0)
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %53 [
    i32 131, label %35
    i32 133, label %38
    i32 130, label %41
    i32 128, label %44
    i32 132, label %47
    i32 129, label %50
  ]

35:                                               ; preds = %3
  %36 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @OPCODE_COMMON_EQ_DESTROY, align 4
  store i32 %37, i32* %11, align 4
  br label %58

38:                                               ; preds = %3
  %39 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @OPCODE_COMMON_CQ_DESTROY, align 4
  store i32 %40, i32* %11, align 4
  br label %58

41:                                               ; preds = %3
  %42 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @OPCODE_COMMON_MCC_DESTROY, align 4
  store i32 %43, i32* %11, align 4
  br label %58

44:                                               ; preds = %3
  %45 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @OPCODE_COMMON_ISCSI_WRBQ_DESTROY, align 4
  store i32 %46, i32* %11, align 4
  br label %58

47:                                               ; preds = %3
  %48 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @OPCODE_COMMON_ISCSI_DEFQ_DESTROY, align 4
  store i32 %49, i32* %11, align 4
  br label %58

50:                                               ; preds = %3
  %51 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES, align 4
  store i32 %52, i32* %11, align 4
  br label %58

53:                                               ; preds = %3
  %54 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %55 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = call i32 (...) @BUG()
  br label %58

58:                                               ; preds = %53, %50, %47, %44, %41, %38, %35
  %59 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %8, align 8
  %60 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %59, i32 0, i32 1
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @be_cmd_hdr_prepare(i32* %60, i32 %61, i32 %62, i32 8)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 129
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %68 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cpu_to_le16(i32 %69)
  %71 = load %struct.be_cmd_req_q_destroy*, %struct.be_cmd_req_q_destroy** %8, align 8
  %72 = getelementptr inbounds %struct.be_cmd_req_q_destroy, %struct.be_cmd_req_q_destroy* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %58
  %74 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %75 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %77 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %12, align 4
  ret i32 %79
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_cmd_req_q_destroy* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local %struct.beiscsi_hba* @pci_get_drvdata(i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
