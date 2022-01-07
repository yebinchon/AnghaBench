; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32, i64, i32, %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @scsih_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsih_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.workqueue_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.MPT3SAS_ADAPTER* %11, %struct.MPT3SAS_ADAPTER** %4, align 8
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %13 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %15 = call i32 @mpt3sas_wait_for_commands_to_complete(%struct.MPT3SAS_ADAPTER* %14)
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %17 = call i32 @_scsih_flush_running_cmds(%struct.MPT3SAS_ADAPTER* %16)
  %18 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %19 = call i32 @_scsih_fw_event_cleanup_queue(%struct.MPT3SAS_ADAPTER* %18)
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %21 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %20, i32 0, i32 3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %25 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %24, i32 0, i32 4
  %26 = load %struct.workqueue_struct*, %struct.workqueue_struct** %25, align 8
  store %struct.workqueue_struct* %26, %struct.workqueue_struct** %5, align 8
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %28 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %27, i32 0, i32 4
  store %struct.workqueue_struct* null, %struct.workqueue_struct** %28, align 8
  %29 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %30 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %29, i32 0, i32 3
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %34 = icmp ne %struct.workqueue_struct* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %37 = call i32 @destroy_workqueue(%struct.workqueue_struct* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %45 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %46 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %45, i32 0, i32 1
  %47 = call i32 @mpt3sas_config_set_ioc_pg1(%struct.MPT3SAS_ADAPTER* %44, i32* %7, i32* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %50 = call i32 @_scsih_ir_shutdown(%struct.MPT3SAS_ADAPTER* %49)
  %51 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %52 = call i32 @mpt3sas_base_detach(%struct.MPT3SAS_ADAPTER* %51)
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mpt3sas_wait_for_commands_to_complete(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @_scsih_flush_running_cmds(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @_scsih_fw_event_cleanup_queue(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @mpt3sas_config_set_ioc_pg1(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @_scsih_ir_shutdown(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @mpt3sas_base_detach(%struct.MPT3SAS_ADAPTER*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
