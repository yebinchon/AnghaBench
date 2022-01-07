; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_reopen_sess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_reopen_sess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_3__, %struct.be_ctrl_info }
%struct.TYPE_3__ = type { i32 }
%struct.be_ctrl_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_reopen_session_req = type { i32, i32, i32 }

@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS = common dso_local global i32 0, align 4
@BE_REOPEN_BOOT_SESSIONS = common dso_local global i32 0, align 4
@BE_BOOT_INVALID_SHANDLE = common dso_local global i32 0, align 4
@MCC_TAG_STATE_ASYNC = common dso_local global i32 0, align 4
@beiscsi_boot_process_compl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_boot_reopen_sess(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_cmd_reopen_session_req*, align 8
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
  br label %65

21:                                               ; preds = %1
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %23 = call %struct.be_cmd_reopen_session_req* @embedded_payload(%struct.be_mcc_wrb* %22)
  store %struct.be_cmd_reopen_session_req* %23, %struct.be_cmd_reopen_session_req** %6, align 8
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %25 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %24, i32 12, i32 1, i32 0)
  %26 = load %struct.be_cmd_reopen_session_req*, %struct.be_cmd_reopen_session_req** %6, align 8
  %27 = getelementptr inbounds %struct.be_cmd_reopen_session_req, %struct.be_cmd_reopen_session_req* %26, i32 0, i32 2
  %28 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %29 = load i32, i32* @OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS, align 4
  %30 = call i32 @be_cmd_hdr_prepare(i32* %27, i32 %28, i32 %29, i32 4)
  %31 = load i32, i32* @BE_REOPEN_BOOT_SESSIONS, align 4
  %32 = load %struct.be_cmd_reopen_session_req*, %struct.be_cmd_reopen_session_req** %6, align 8
  %33 = getelementptr inbounds %struct.be_cmd_reopen_session_req, %struct.be_cmd_reopen_session_req* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @BE_BOOT_INVALID_SHANDLE, align 4
  %35 = load %struct.be_cmd_reopen_session_req*, %struct.be_cmd_reopen_session_req** %6, align 8
  %36 = getelementptr inbounds %struct.be_cmd_reopen_session_req, %struct.be_cmd_reopen_session_req* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @MCC_TAG_STATE_ASYNC, align 4
  %42 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %43 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = call i32 @set_bit(i32 %41, i32* %48)
  %50 = load i32, i32* @beiscsi_boot_process_compl, align 4
  %51 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %52 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %58, i32 %59)
  %61 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %62 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %21, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_cmd_reopen_session_req* @embedded_payload(%struct.be_mcc_wrb*) #1

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
