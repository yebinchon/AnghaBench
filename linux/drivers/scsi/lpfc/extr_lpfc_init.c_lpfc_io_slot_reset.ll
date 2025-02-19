; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"1428 Invalid PCI device group: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @lpfc_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lpfc_vport*
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %4, align 8
  %14 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @lpfc_io_slot_reset_s3(%struct.pci_dev* %19)
  store i32 %20, i32* %5, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @lpfc_io_slot_reset_s4(%struct.pci_dev* %22)
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load i32, i32* @LOG_INIT, align 4
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %21, %18
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_io_slot_reset_s3(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_io_slot_reset_s4(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
