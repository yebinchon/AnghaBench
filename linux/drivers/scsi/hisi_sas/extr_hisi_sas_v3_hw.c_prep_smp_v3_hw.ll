; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_prep_smp_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_prep_smp_v3_hw.c"
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
@CMD_HDR_CMD_OFF = common dso_local global i32 0, align 4
@CMD_HDR_DEV_ID_OFF = common dso_local global i32 0, align 4
@CMD_HDR_FRAME_TYPE_OFF = common dso_local global i32 0, align 4
@DIR_NO_DATA = common dso_local global i32 0, align 4
@CMD_HDR_DIR_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CFL_OFF = common dso_local global i32 0, align 4
@HISI_SAS_MAX_SMP_RESP_SZ = common dso_local global i32 0, align 4
@CMD_HDR_MRFL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_IPTT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*)* @prep_smp_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_smp_v3_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1) #0 {
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
  %43 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %44 = shl i32 2, %43
  %45 = or i32 %42, %44
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %10, align 8
  %50 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CMD_HDR_DEV_ID_OFF, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @CMD_HDR_FRAME_TYPE_OFF, align 4
  %55 = shl i32 1, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* @DIR_NO_DATA, align 4
  %58 = load i32, i32* @CMD_HDR_DIR_OFF, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %63 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sub i32 %64, 4
  %66 = udiv i32 %65, 4
  %67 = load i32, i32* @CMD_HDR_CFL_OFF, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @HISI_SAS_MAX_SMP_RESP_SZ, align 4
  %70 = sdiv i32 %69, 4
  %71 = load i32, i32* @CMD_HDR_MRFL_OFF, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %68, %72
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %76 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %78 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CMD_HDR_IPTT_OFF, align 4
  %81 = shl i32 %79, %80
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %84 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @cpu_to_le64(i32 %85)
  %87 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %88 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %90 = call i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot* %89)
  %91 = call i8* @cpu_to_le64(i32 %90)
  %92 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %93 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
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
