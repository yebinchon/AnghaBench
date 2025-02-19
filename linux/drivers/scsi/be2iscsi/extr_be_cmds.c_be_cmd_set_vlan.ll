; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_set_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_set_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_set_vlan_req = type { i32, i32, i32 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_SET_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_vlan(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_set_vlan_req*, align 8
  %9 = alloca %struct.be_ctrl_info*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 1
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %9, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %9, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %19 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %18, i32* %6)
  store %struct.be_mcc_wrb* %19, %struct.be_mcc_wrb** %7, align 8
  %20 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %21 = icmp ne %struct.be_mcc_wrb* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %9, align 8
  %24 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 0, i32* %3, align 4
  br label %51

26:                                               ; preds = %17
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %28 = call %struct.be_cmd_set_vlan_req* @embedded_payload(%struct.be_mcc_wrb* %27)
  store %struct.be_cmd_set_vlan_req* %28, %struct.be_cmd_set_vlan_req** %8, align 8
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %30 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %29, i32 4, i32 1, i32 0)
  %31 = load %struct.be_cmd_set_vlan_req*, %struct.be_cmd_set_vlan_req** %8, align 8
  %32 = getelementptr inbounds %struct.be_cmd_set_vlan_req, %struct.be_cmd_set_vlan_req* %31, i32 0, i32 2
  %33 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %34 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_SET_VLAN, align 4
  %35 = call i32 @be_cmd_hdr_prepare(i32* %32, i32 %33, i32 %34, i32 12)
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.be_cmd_set_vlan_req*, %struct.be_cmd_set_vlan_req** %8, align 8
  %40 = getelementptr inbounds %struct.be_cmd_set_vlan_req, %struct.be_cmd_set_vlan_req* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.be_cmd_set_vlan_req*, %struct.be_cmd_set_vlan_req** %8, align 8
  %43 = getelementptr inbounds %struct.be_cmd_set_vlan_req, %struct.be_cmd_set_vlan_req* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %44, i32 %45)
  %47 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %9, align 8
  %48 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %26, %22, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_cmd_set_vlan_req* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
