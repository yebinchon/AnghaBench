; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_smp_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_smp_v2_hw.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*)* @prep_smp_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_smp_v2_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1) #0 {
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
  %32 = call i32 @sg_dma_address(%struct.scatterlist* %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %34 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @sg_dma_len(%struct.scatterlist* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %8, align 8
  %38 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CMD_HDR_PORT_OFF, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @CMD_HDR_PRIORITY_OFF, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %46 = shl i32 2, %45
  %47 = or i32 %44, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %10, align 8
  %52 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CMD_HDR_DEV_ID_OFF, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @CMD_HDR_FRAME_TYPE_OFF, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @DIR_NO_DATA, align 4
  %60 = load i32, i32* @CMD_HDR_DIR_OFF, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %65 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub i32 %66, 4
  %68 = udiv i32 %67, 4
  %69 = load i32, i32* @CMD_HDR_CFL_OFF, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* @HISI_SAS_MAX_SMP_RESP_SZ, align 4
  %72 = sdiv i32 %71, 4
  %73 = load i32, i32* @CMD_HDR_MRFL_OFF, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %70, %74
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %78 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %80 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CMD_HDR_IPTT_OFF, align 4
  %83 = shl i32 %81, %82
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %86 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i8* @cpu_to_le64(i32 %87)
  %89 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %90 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %92 = call i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot* %91)
  %93 = call i8* @cpu_to_le64(i32 %92)
  %94 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %95 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  ret void
}

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
