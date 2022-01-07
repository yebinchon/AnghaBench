; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_query_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_query_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, %struct.hisi_sas_slot*, %struct.domain_device*, %struct.scsi_cmnd* }
%struct.hisi_sas_slot = type { i32 }
%struct.domain_device = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_lun = type { i32 }
%struct.hisi_sas_tmf_task = type { i32, i32 }

@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@TMF_QUERY_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*)* @hisi_sas_query_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_query_task(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca %struct.scsi_lun, align 4
  %4 = alloca %struct.hisi_sas_tmf_task, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.hisi_sas_slot*, align 8
  %9 = alloca i32, align 4
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  store i32 129, i32* %5, align 4
  %10 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %11 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %10, i32 0, i32 1
  %12 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %11, align 8
  %13 = icmp ne %struct.hisi_sas_slot* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %14
  %22 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %23 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %22, i32 0, i32 3
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %6, align 8
  %25 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %26 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %25, i32 0, i32 2
  %27 = load %struct.domain_device*, %struct.domain_device** %26, align 8
  store %struct.domain_device* %27, %struct.domain_device** %7, align 8
  %28 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 1
  %30 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %29, align 8
  store %struct.hisi_sas_slot* %30, %struct.hisi_sas_slot** %8, align 8
  %31 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %8, align 8
  %32 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @int_to_scsilun(i32 %38, %struct.scsi_lun* %3)
  %40 = load i32, i32* @TMF_QUERY_TASK, align 4
  %41 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %4, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %4, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %45 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hisi_sas_debug_issue_ssp_tmf(%struct.domain_device* %44, i32 %46, %struct.hisi_sas_tmf_task* %4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %50 [
    i32 128, label %49
    i32 129, label %49
    i32 130, label %49
  ]

49:                                               ; preds = %21, %21, %21
  br label %51

50:                                               ; preds = %21
  store i32 129, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %14, %1
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @hisi_sas_debug_issue_ssp_tmf(%struct.domain_device*, i32, %struct.hisi_sas_tmf_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
