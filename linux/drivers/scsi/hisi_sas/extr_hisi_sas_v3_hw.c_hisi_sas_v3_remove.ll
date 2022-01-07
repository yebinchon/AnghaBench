; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_2__, %struct.hisi_hba* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.hisi_hba = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hisi_sas_v3_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_v3_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.sas_ha_struct* @dev_get_drvdata(%struct.device* %9)
  store %struct.sas_ha_struct* %10, %struct.sas_ha_struct** %4, align 8
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 1
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %12, align 8
  store %struct.hisi_hba* %13, %struct.hisi_hba** %5, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %19 = call i32 @hisi_sas_debugfs_exit(%struct.hisi_hba* %18)
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 0
  %22 = call i64 @timer_pending(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %26 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %25, i32 0, i32 0
  %27 = call i32 @del_timer(i32* %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %30 = call i32 @sas_unregister_ha(%struct.sas_ha_struct* %29)
  %31 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %32 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %33, align 8
  %35 = call i32 @sas_remove_host(%struct.Scsi_Host* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %38 = call i32 @hisi_sas_v3_destroy_irqs(%struct.pci_dev* %36, %struct.hisi_hba* %37)
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %40 = call i32 @hisi_sas_kill_tasklets(%struct.hisi_hba* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call i32 @pci_release_regions(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_disable_device(%struct.pci_dev* %43)
  %45 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %46 = call i32 @hisi_sas_free(%struct.hisi_hba* %45)
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %48 = call i32 @scsi_host_put(%struct.Scsi_Host* %47)
  ret void
}

declare dso_local %struct.sas_ha_struct* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @hisi_sas_debugfs_exit(%struct.hisi_hba*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @sas_unregister_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @sas_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @hisi_sas_v3_destroy_irqs(%struct.pci_dev*, %struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_kill_tasklets(%struct.hisi_hba*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @hisi_sas_free(%struct.hisi_hba*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
