; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_2__, %struct.hisi_hba* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.hisi_hba = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.sas_ha_struct* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sas_ha_struct* %7, %struct.sas_ha_struct** %3, align 8
  %8 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %9 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %8, i32 0, i32 1
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  store %struct.hisi_hba* %10, %struct.hisi_hba** %4, align 8
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %5, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %16 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %15, i32 0, i32 0
  %17 = call i64 @timer_pending(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 0
  %22 = call i32 @del_timer(i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %25 = call i32 @sas_unregister_ha(%struct.sas_ha_struct* %24)
  %26 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %27 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %28, align 8
  %30 = call i32 @sas_remove_host(%struct.Scsi_Host* %29)
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %32 = call i32 @hisi_sas_free(%struct.hisi_hba* %31)
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %34 = call i32 @scsi_host_put(%struct.Scsi_Host* %33)
  ret i32 0
}

declare dso_local %struct.sas_ha_struct* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @sas_unregister_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @sas_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @hisi_sas_free(%struct.hisi_hba*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
