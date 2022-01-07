; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_prep_abort_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_prep_abort_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.hisi_sas_slot = type { i32, %struct.hisi_sas_port*, %struct.hisi_sas_cmd_hdr*, %struct.sas_task* }
%struct.hisi_sas_port = type { i32 }
%struct.hisi_sas_cmd_hdr = type { i8*, i8*, i8*, i8* }
%struct.sas_task = type { %struct.domain_device* }
%struct.domain_device = type { i32 }

@CMD_HDR_CMD_OFF = common dso_local global i32 0, align 4
@CMD_HDR_PORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_ABORT_DEVICE_TYPE_OFF = common dso_local global i32 0, align 4
@CMD_HDR_ABORT_FLAG_OFF = common dso_local global i32 0, align 4
@CMD_HDR_DEV_ID_OFF = common dso_local global i32 0, align 4
@CMD_HDR_ABORT_IPTT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*, i32, i32, i32)* @prep_abort_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_abort_v3_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.hisi_sas_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sas_task*, align 8
  %12 = alloca %struct.domain_device*, align 8
  %13 = alloca %struct.hisi_sas_cmd_hdr*, align 8
  %14 = alloca %struct.hisi_sas_port*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %6, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %15, i32 0, i32 3
  %17 = load %struct.sas_task*, %struct.sas_task** %16, align 8
  store %struct.sas_task* %17, %struct.sas_task** %11, align 8
  %18 = load %struct.sas_task*, %struct.sas_task** %11, align 8
  %19 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %18, i32 0, i32 0
  %20 = load %struct.domain_device*, %struct.domain_device** %19, align 8
  store %struct.domain_device* %20, %struct.domain_device** %12, align 8
  %21 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %21, i32 0, i32 2
  %23 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %22, align 8
  store %struct.hisi_sas_cmd_hdr* %23, %struct.hisi_sas_cmd_hdr** %13, align 8
  %24 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %25 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %24, i32 0, i32 1
  %26 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %25, align 8
  store %struct.hisi_sas_port* %26, %struct.hisi_sas_port** %14, align 8
  %27 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %28 = shl i32 5, %27
  %29 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %14, align 8
  %30 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CMD_HDR_PORT_OFF, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  %35 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %36 = call i32 @dev_is_sata(%struct.domain_device* %35)
  %37 = load i32, i32* @CMD_HDR_ABORT_DEVICE_TYPE_OFF, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %34, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @CMD_HDR_ABORT_FLAG_OFF, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %46 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CMD_HDR_DEV_ID_OFF, align 4
  %49 = shl i32 %47, %48
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %52 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @CMD_HDR_ABORT_IPTT_OFF, align 4
  %55 = shl i32 %53, %54
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %58 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %60 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %13, align 8
  %64 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dev_is_sata(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
