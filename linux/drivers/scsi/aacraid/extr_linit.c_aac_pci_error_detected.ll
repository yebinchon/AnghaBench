; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_pci_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_pci_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.aac_dev = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"aacraid: PCI error detected %x\0A\00", align 1
@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @aac_pci_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_pci_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.aac_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %11 = call %struct.aac_dev* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.aac_dev* %11, %struct.aac_dev** %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %43 [
    i32 129, label %17
    i32 130, label %19
    i32 128, label %37
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @PCI_ERS_RESULT_CAN_RECOVER, align 4
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %21 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %23 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @scsi_block_requests(i32 %24)
  %26 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %27 = call i32 @aac_cancel_safw_rescan_worker(%struct.aac_dev* %26)
  %28 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %29 = call i32 @aac_flush_ios(%struct.aac_dev* %28)
  %30 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %31 = call i32 @aac_release_resources(%struct.aac_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %32)
  %34 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %35 = call i32 @aac_adapter_ioremap(%struct.aac_dev* %34, i32 0)
  %36 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %2
  %38 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %39 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %41 = call i32 @aac_flush_ios(%struct.aac_dev* %40)
  %42 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %37, %19, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.aac_dev* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @aac_cancel_safw_rescan_worker(%struct.aac_dev*) #1

declare dso_local i32 @aac_flush_ios(%struct.aac_dev*) #1

declare dso_local i32 @aac_release_resources(%struct.aac_dev*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @aac_adapter_ioremap(%struct.aac_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
