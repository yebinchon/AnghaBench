; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eeh_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eeh_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"BM_%d : EEH Reset\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"BM_%d : EEH Reset Completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"BM_%d : EEH Reset Completion Failure\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @beiscsi_eeh_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_eeh_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i64 @pci_get_drvdata(%struct.pci_dev* %6)
  %8 = inttoptr i64 %7 to %struct.beiscsi_hba*
  store %struct.beiscsi_hba* %8, %struct.beiscsi_hba** %4, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %10 = load i32, i32* @KERN_ERR, align 4
  %11 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %12 = call i32 @beiscsi_log(%struct.beiscsi_hba* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @pci_enable_device(%struct.pci_dev* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = call i32 @pci_set_master(%struct.pci_dev* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load i32, i32* @PCI_D0, align 4
  %24 = call i32 @pci_set_power_state(%struct.pci_dev* %22, i32 %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_restore_state(%struct.pci_dev* %25)
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %28 = call i32 @beiscsi_check_fw_rdy(%struct.beiscsi_hba* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %33 = load i32, i32* @KERN_WARNING, align 4
  %34 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %35 = call i32 @beiscsi_log(%struct.beiscsi_hba* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %42

36:                                               ; preds = %19
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %38 = load i32, i32* @KERN_WARNING, align 4
  %39 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %40 = call i32 @beiscsi_log(%struct.beiscsi_hba* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %36, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @beiscsi_check_fw_rdy(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
