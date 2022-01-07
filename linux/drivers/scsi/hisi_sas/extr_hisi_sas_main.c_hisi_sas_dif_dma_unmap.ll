; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dif_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dif_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }
%struct.sas_task = type { i32, %struct.sas_ssp_task }
%struct.sas_ssp_task = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.sas_task*, i32)* @hisi_sas_dif_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_dif_dma_unmap(%struct.hisi_hba* %0, %struct.sas_task* %1, i32 %2) #0 {
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sas_ssp_task*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store %struct.sas_task* %1, %struct.sas_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %17 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %16, i32 0, i32 1
  store %struct.sas_ssp_task* %17, %struct.sas_ssp_task** %8, align 8
  %18 = load %struct.sas_ssp_task*, %struct.sas_ssp_task** %8, align 8
  %19 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %18, i32 0, i32 0
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %19, align 8
  store %struct.scsi_cmnd* %20, %struct.scsi_cmnd** %9, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %23 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %22)
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %25 = call i32 @scsi_prot_sg_count(%struct.scsi_cmnd* %24)
  %26 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %27 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_unmap_sg(%struct.device* %21, i32 %23, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
