; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_pci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_pci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { %struct.pci_dev*, i64 }

@.str = private unnamed_addr constant [34 x i8] c"PCI error: slot reset callback!!\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@FORCE_BIG_HAMMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"hard reset: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @scsih_pci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_pci_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %4, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.MPT3SAS_ADAPTER* %10, %struct.MPT3SAS_ADAPTER** %5, align 8
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %12 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %14 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %17 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %16, i32 0, i32 0
  store %struct.pci_dev* %15, %struct.pci_dev** %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call i32 @pci_restore_state(%struct.pci_dev* %18)
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %21 = call i32 @mpt3sas_base_map_resources(%struct.MPT3SAS_ADAPTER* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %1
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %28 = load i32, i32* @FORCE_BIG_HAMMER, align 4
  %29 = call i32 @mpt3sas_base_hard_reset_handler(%struct.MPT3SAS_ADAPTER* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %35 = call i32 @ioc_warn(%struct.MPT3SAS_ADAPTER* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @mpt3sas_base_map_resources(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @mpt3sas_base_hard_reset_handler(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_warn(%struct.MPT3SAS_ADAPTER*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
