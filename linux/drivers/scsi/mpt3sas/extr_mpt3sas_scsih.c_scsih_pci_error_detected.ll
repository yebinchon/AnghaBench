; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_pci_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_pci_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"PCI error: detected callback, state(%d)!!\0A\00", align 1
@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @scsih_pci_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_pci_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %11 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.MPT3SAS_ADAPTER* %11, %struct.MPT3SAS_ADAPTER** %7, align 8
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %38 [
    i32 129, label %16
    i32 130, label %18
    i32 128, label %30
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @PCI_ERS_RESULT_CAN_RECOVER, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %20 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %22 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @scsi_block_requests(i32 %23)
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %26 = call i32 @mpt3sas_base_stop_watchdog(%struct.MPT3SAS_ADAPTER* %25)
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %28 = call i32 @mpt3sas_base_free_resources(%struct.MPT3SAS_ADAPTER* %27)
  %29 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %34 = call i32 @mpt3sas_base_stop_watchdog(%struct.MPT3SAS_ADAPTER* %33)
  %35 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %36 = call i32 @_scsih_flush_running_cmds(%struct.MPT3SAS_ADAPTER* %35)
  %37 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %30, %18, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @mpt3sas_base_stop_watchdog(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @mpt3sas_base_free_resources(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @_scsih_flush_running_cmds(%struct.MPT3SAS_ADAPTER*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
