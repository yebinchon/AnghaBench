; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_sata_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_sata_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.task_status_struct }
%struct.task_status_struct = type { i32, i64 }
%struct.hisi_sas_slot = type { i32 }
%struct.ata_task_resp = type { i32, i32* }
%struct.hisi_sas_status_buffer = type { i32* }
%struct.dev_to_host_fis = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_sata_done(%struct.sas_task* %0, %struct.hisi_sas_slot* %1) #0 {
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca %struct.hisi_sas_slot*, align 8
  %5 = alloca %struct.task_status_struct*, align 8
  %6 = alloca %struct.ata_task_resp*, align 8
  %7 = alloca %struct.hisi_sas_status_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dev_to_host_fis*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %4, align 8
  %10 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %11 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %10, i32 0, i32 0
  store %struct.task_status_struct* %11, %struct.task_status_struct** %5, align 8
  %12 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %13 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ata_task_resp*
  store %struct.ata_task_resp* %15, %struct.ata_task_resp** %6, align 8
  %16 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %17 = call %struct.hisi_sas_status_buffer* @hisi_sas_status_buf_addr_mem(%struct.hisi_sas_slot* %16)
  store %struct.hisi_sas_status_buffer* %17, %struct.hisi_sas_status_buffer** %7, align 8
  %18 = load %struct.hisi_sas_status_buffer*, %struct.hisi_sas_status_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.hisi_sas_status_buffer, %struct.hisi_sas_status_buffer* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = bitcast i32* %22 to %struct.dev_to_host_fis*
  store %struct.dev_to_host_fis* %23, %struct.dev_to_host_fis** %9, align 8
  %24 = load %struct.ata_task_resp*, %struct.ata_task_resp** %6, align 8
  %25 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load %struct.ata_task_resp*, %struct.ata_task_resp** %6, align 8
  %27 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %9, align 8
  %31 = call i32 @memcpy(i32* %29, %struct.dev_to_host_fis* %30, i32 4)
  %32 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %33 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %32, i32 0, i32 0
  store i32 16, i32* %33, align 8
  ret void
}

declare dso_local %struct.hisi_sas_status_buffer* @hisi_sas_status_buf_addr_mem(%struct.hisi_sas_slot*) #1

declare dso_local i32 @memcpy(i32*, %struct.dev_to_host_fis*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
