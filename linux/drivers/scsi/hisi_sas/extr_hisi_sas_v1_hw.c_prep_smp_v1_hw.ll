; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_prep_smp_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_prep_smp_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.hisi_sas_slot = type { i32, %struct.hisi_sas_port*, %struct.hisi_sas_cmd_hdr*, %struct.sas_task* }
%struct.hisi_sas_port = type { i32 }
%struct.hisi_sas_cmd_hdr = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sas_task = type { %struct.TYPE_2__, %struct.domain_device* }
%struct.TYPE_2__ = type { %struct.scatterlist }
%struct.scatterlist = type { i32 }
%struct.domain_device = type { %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i32 }

@CMD_HDR_PORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_PRIORITY_OFF = common dso_local global i32 0, align 4
@CMD_HDR_MODE_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CMD_OFF = common dso_local global i32 0, align 4
@CMD_HDR_DEVICE_ID_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CFL_OFF = common dso_local global i32 0, align 4
@HISI_SAS_MAX_SMP_RESP_SZ = common dso_local global i32 0, align 4
@CMD_HDR_MRFL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_IPTT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*)* @prep_smp_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_smp_v1_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_slot*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.hisi_sas_cmd_hdr*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.hisi_sas_port*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.hisi_sas_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %4, align 8
  %13 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %14 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %13, i32 0, i32 3
  %15 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  store %struct.sas_task* %15, %struct.sas_task** %5, align 8
  %16 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %16, i32 0, i32 2
  %18 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %17, align 8
  store %struct.hisi_sas_cmd_hdr* %18, %struct.hisi_sas_cmd_hdr** %6, align 8
  %19 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 1
  %21 = load %struct.domain_device*, %struct.domain_device** %20, align 8
  store %struct.domain_device* %21, %struct.domain_device** %7, align 8
  %22 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %22, i32 0, i32 1
  %24 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %23, align 8
  store %struct.hisi_sas_port* %24, %struct.hisi_sas_port** %8, align 8
  %25 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %26 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %25, i32 0, i32 0
  %27 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %26, align 8
  store %struct.hisi_sas_device* %27, %struct.hisi_sas_device** %10, align 8
  %28 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.scatterlist* %30, %struct.scatterlist** %9, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %32 = call i32 @sg_dma_len(%struct.scatterlist* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %34 = call i32 @sg_dma_address(%struct.scatterlist* %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %8, align 8
  %36 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CMD_HDR_PORT_OFF, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @CMD_HDR_PRIORITY_OFF, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @CMD_HDR_MODE_OFF, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %47 = shl i32 2, %46
  %48 = or i32 %45, %47
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %10, align 8
  %53 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CMD_HDR_DEVICE_ID_OFF, align 4
  %56 = shl i32 %54, %55
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sub i32 %60, 4
  %62 = udiv i32 %61, 4
  %63 = load i32, i32* @CMD_HDR_CFL_OFF, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @HISI_SAS_MAX_SMP_RESP_SZ, align 4
  %66 = sdiv i32 %65, 4
  %67 = load i32, i32* @CMD_HDR_MRFL_OFF, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %64, %68
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %72 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %74 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CMD_HDR_IPTT_OFF, align 4
  %77 = shl i32 %75, %76
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %80 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @cpu_to_le64(i32 %81)
  %83 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %84 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %86 = call i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot* %85)
  %87 = call i8* @cpu_to_le64(i32 %86)
  %88 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %89 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  ret void
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
