; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_get_port_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_get_port_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32 }
%struct.beiscsi_hba = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_get_port_name = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_PORT_NAME = common dso_local global i32 0, align 4
@EMBED_MBX_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BG_%d : GET_PORT_NAME ret 0x%x status 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_get_port_name(%struct.be_ctrl_info* %0, %struct.beiscsi_hba* %1) #0 {
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_get_port_name*, align 8
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %3, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %9 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %12 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %11, i32 0, i32 1
  %13 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %12)
  store %struct.be_mcc_wrb* %13, %struct.be_mcc_wrb** %6, align 8
  %14 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %15 = call i32 @memset(%struct.be_mcc_wrb* %14, i32 0, i32 4)
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %17 = call %struct.be_cmd_get_port_name* @embedded_payload(%struct.be_mcc_wrb* %16)
  store %struct.be_cmd_get_port_name* %17, %struct.be_cmd_get_port_name** %7, align 8
  %18 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %19 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %18, i32 12, i32 1, i32 0)
  %20 = load %struct.be_cmd_get_port_name*, %struct.be_cmd_get_port_name** %7, align 8
  %21 = getelementptr inbounds %struct.be_cmd_get_port_name, %struct.be_cmd_get_port_name* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %24 = load i32, i32* @OPCODE_COMMON_GET_PORT_NAME, align 4
  %25 = load i32, i32* @EMBED_MBX_MAX_PAYLOAD_SIZE, align 4
  %26 = call i32 @be_cmd_hdr_prepare(i32* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %28 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %2
  %34 = load %struct.be_cmd_get_port_name*, %struct.be_cmd_get_port_name** %7, align 8
  %35 = getelementptr inbounds %struct.be_cmd_get_port_name, %struct.be_cmd_get_port_name* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 8
  %44 = ashr i32 %38, %43
  %45 = and i32 %44, 255
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %47 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %59

48:                                               ; preds = %2
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %50 = load i32, i32* @KERN_INFO, align 4
  %51 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.be_cmd_get_port_name*, %struct.be_cmd_get_port_name** %7, align 8
  %54 = getelementptr inbounds %struct.be_cmd_get_port_name, %struct.be_cmd_get_port_name* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @beiscsi_log(%struct.beiscsi_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %48, %33
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %61 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %66 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %65, i32 0, i32 0
  store i32 63, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %69 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local %struct.be_cmd_get_port_name* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
