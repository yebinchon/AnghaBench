; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_finish_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_finish_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sas_ha_struct = type { i32, i32 }
%struct.domain_device = type { i32 }
%struct.sas_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @sas_eh_finish_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_eh_finish_cmd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.sas_task*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(i32 %10)
  store %struct.sas_ha_struct* %11, %struct.sas_ha_struct** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %13 = call %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd* %12)
  store %struct.domain_device* %13, %struct.domain_device** %4, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = call %struct.sas_task* @TO_SAS_TASK(%struct.scsi_cmnd* %14)
  store %struct.sas_task* %15, %struct.sas_task** %5, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %17 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %18 = call i32 @sas_end_task(%struct.scsi_cmnd* %16, %struct.sas_task* %17)
  %19 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %20 = call i64 @dev_is_sata(%struct.domain_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %26 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %25, i32 0, i32 1
  %27 = call i32 @list_move_tail(i32* %24, i32* %26)
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %30 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %31 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %30, i32 0, i32 0
  %32 = call i32 @scsi_eh_finish_cmd(%struct.scsi_cmnd* %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %22
  ret void
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(i32) #1

declare dso_local %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd*) #1

declare dso_local %struct.sas_task* @TO_SAS_TASK(%struct.scsi_cmnd*) #1

declare dso_local i32 @sas_end_task(%struct.scsi_cmnd*, %struct.sas_task*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @scsi_eh_finish_cmd(%struct.scsi_cmnd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
