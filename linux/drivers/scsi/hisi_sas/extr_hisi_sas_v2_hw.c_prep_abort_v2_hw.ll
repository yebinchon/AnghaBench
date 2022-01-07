; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_abort_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_abort_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.hisi_sas_slot = type { i32, %struct.timer_list, %struct.hisi_sas_port*, %struct.hisi_sas_cmd_hdr*, %struct.sas_task* }
%struct.timer_list = type { i32 }
%struct.hisi_sas_port = type { i32 }
%struct.hisi_sas_cmd_hdr = type { i8*, i8*, i8*, i8* }
%struct.sas_task = type { %struct.domain_device* }
%struct.domain_device = type { i32 }

@hisi_sas_internal_abort_quirk_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CMD_HDR_CMD_OFF = common dso_local global i32 0, align 4
@CMD_HDR_PORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_ABORT_DEVICE_TYPE_OFF = common dso_local global i32 0, align 4
@CMD_HDR_ABORT_FLAG_OFF = common dso_local global i32 0, align 4
@CMD_HDR_DEV_ID_OFF = common dso_local global i32 0, align 4
@CMD_HDR_ABORT_IPTT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*, i32, i32, i32)* @prep_abort_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_abort_v2_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.hisi_sas_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sas_task*, align 8
  %12 = alloca %struct.domain_device*, align 8
  %13 = alloca %struct.hisi_sas_cmd_hdr*, align 8
  %14 = alloca %struct.hisi_sas_port*, align 8
  %15 = alloca %struct.timer_list*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %6, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %16, i32 0, i32 4
  %18 = load %struct.sas_task*, %struct.sas_task** %17, align 8
  store %struct.sas_task* %18, %struct.sas_task** %11, align 8
  %19 = load %struct.sas_task*, %struct.sas_task** %11, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 0
  %21 = load %struct.domain_device*, %struct.domain_device** %20, align 8
  store %struct.domain_device* %21, %struct.domain_device** %12, align 8
  %22 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %22, i32 0, i32 3
  %24 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %23, align 8
  store %struct.hisi_sas_cmd_hdr* %24, %struct.hisi_sas_cmd_hdr** %13, align 8
  %25 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %26 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %25, i32 0, i32 2
  %27 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %26, align 8
  store %struct.hisi_sas_port* %27, %struct.hisi_sas_port** %14, align 8
  %28 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %29 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %28, i32 0, i32 1
  store %struct.timer_list* %29, %struct.timer_list** %15, align 8
  %30 = load %struct.timer_list*, %struct.timer_list** %15, align 8
  %31 = load i32, i32* @hisi_sas_internal_abort_quirk_timeout, align 4
  %32 = call i32 @timer_setup(%struct.timer_list* %30, i32 %31, i32 0)
  %33 = load %struct.timer_list*, %struct.timer_list** %15, align 8
  %34 = load i64, i64* @jiffies, align 8
  %35 = call i64 @msecs_to_jiffies(i32 100)
  %36 = add nsw i64 %34, %35
  %37 = call i32 @mod_timer(%struct.timer_list* %33, i64 %36)
  %38 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %39 = shl i32 5, %38
  %40 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %14, align 8
  %41 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CMD_HDR_PORT_OFF, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %39, %44
  %46 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %47 = call i32 @dev_is_sata(%struct.domain_device* %46)
  %48 = load i32, i32* @CMD_HDR_ABORT_DEVICE_TYPE_OFF, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %45, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CMD_HDR_ABORT_FLAG_OFF, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %57 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CMD_HDR_DEV_ID_OFF, align 4
  %60 = shl i32 %58, %59
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %63 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @CMD_HDR_ABORT_IPTT_OFF, align 4
  %66 = shl i32 %64, %65
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %69 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %71 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %75 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  ret void
}

declare dso_local i32 @timer_setup(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dev_is_sata(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
