; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c___beiscsi_boot_get_shandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c___beiscsi_boot_get_shandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_3__, %struct.be_ctrl_info }
%struct.TYPE_3__ = type { i32 }
%struct.be_ctrl_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_get_boot_target_req = type { i32 }

@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_BOOT_GET_BOOT_TARGET = common dso_local global i32 0, align 4
@MCC_TAG_STATE_ASYNC = common dso_local global i32 0, align 4
@beiscsi_boot_process_compl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__beiscsi_boot_get_shandle(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_ctrl_info*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_get_boot_target_req*, align 8
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 1
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %6, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %16 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %15, i32* %9)
  store %struct.be_mcc_wrb* %16, %struct.be_mcc_wrb** %7, align 8
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %18 = icmp ne %struct.be_mcc_wrb* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %21 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %25 = call %struct.be_cmd_get_boot_target_req* @embedded_payload(%struct.be_mcc_wrb* %24)
  store %struct.be_cmd_get_boot_target_req* %25, %struct.be_cmd_get_boot_target_req** %8, align 8
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %27 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %26, i32 4, i32 1, i32 0)
  %28 = load %struct.be_cmd_get_boot_target_req*, %struct.be_cmd_get_boot_target_req** %8, align 8
  %29 = getelementptr inbounds %struct.be_cmd_get_boot_target_req, %struct.be_cmd_get_boot_target_req* %28, i32 0, i32 0
  %30 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %31 = load i32, i32* @OPCODE_ISCSI_INI_BOOT_GET_BOOT_TARGET, align 4
  %32 = call i32 @be_cmd_hdr_prepare(i32* %29, i32 %30, i32 %31, i32 4)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %38 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @MCC_TAG_STATE_ASYNC, align 4
  %41 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %42 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @set_bit(i32 %40, i32* %47)
  %49 = load i32, i32* @beiscsi_boot_process_compl, align 4
  %50 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %51 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 4
  br label %57

57:                                               ; preds = %35, %23
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %58, i32 %59)
  %61 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %62 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_cmd_get_boot_target_req* @embedded_payload(%struct.be_mcc_wrb*) #1

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
