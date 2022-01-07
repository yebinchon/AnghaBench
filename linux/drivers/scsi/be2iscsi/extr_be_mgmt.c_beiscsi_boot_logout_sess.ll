; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_logout_sess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_logout_sess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_5__, %struct.be_ctrl_info }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_ctrl_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_logout_fw_sess = type { i32, i32 }

@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_SESSION_LOGOUT_TARGET = common dso_local global i32 0, align 4
@MCC_TAG_STATE_ASYNC = common dso_local global i32 0, align 4
@beiscsi_boot_process_compl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_boot_logout_sess(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_cmd_req_logout_fw_sess*, align 8
  %7 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 1
  store %struct.be_ctrl_info* %9, %struct.be_ctrl_info** %4, align 8
  %10 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %11 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %13, i32* %7)
  store %struct.be_mcc_wrb* %14, %struct.be_mcc_wrb** %5, align 8
  %15 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %16 = icmp ne %struct.be_mcc_wrb* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %19 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  store i32 0, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %23 = call %struct.be_cmd_req_logout_fw_sess* @embedded_payload(%struct.be_mcc_wrb* %22)
  store %struct.be_cmd_req_logout_fw_sess* %23, %struct.be_cmd_req_logout_fw_sess** %6, align 8
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %25 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %24, i32 8, i32 1, i32 0)
  %26 = load %struct.be_cmd_req_logout_fw_sess*, %struct.be_cmd_req_logout_fw_sess** %6, align 8
  %27 = getelementptr inbounds %struct.be_cmd_req_logout_fw_sess, %struct.be_cmd_req_logout_fw_sess* %26, i32 0, i32 1
  %28 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %29 = load i32, i32* @OPCODE_ISCSI_INI_SESSION_LOGOUT_TARGET, align 4
  %30 = call i32 @be_cmd_hdr_prepare(i32* %27, i32 %28, i32 %29, i32 8)
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.be_cmd_req_logout_fw_sess*, %struct.be_cmd_req_logout_fw_sess** %6, align 8
  %37 = getelementptr inbounds %struct.be_cmd_req_logout_fw_sess, %struct.be_cmd_req_logout_fw_sess* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @MCC_TAG_STATE_ASYNC, align 4
  %43 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %44 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = call i32 @set_bit(i32 %42, i32* %49)
  %51 = load i32, i32* @beiscsi_boot_process_compl, align 4
  %52 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %53 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %51, i32* %58, align 4
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %59, i32 %60)
  %62 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %63 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %21, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_cmd_req_logout_fw_sess* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
