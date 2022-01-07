; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eeh_err_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eeh_err_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.beiscsi_hba = type { i32, i32, i32, i32 }

@BEISCSI_HBA_PCI_ERR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BM_%d : EEH error detected\0A\00", align 1
@beiscsi_session_fail = common dso_local global i32 0, align 4
@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"BM_%d : EEH : State PERM Failure\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @beiscsi_eeh_err_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_eeh_err_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %6, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i64 @pci_get_drvdata(%struct.pci_dev* %7)
  %9 = inttoptr i64 %8 to %struct.beiscsi_hba*
  store %struct.beiscsi_hba* %9, %struct.beiscsi_hba** %6, align 8
  %10 = load i32, i32* @BEISCSI_HBA_PCI_ERR, align 4
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 3
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %17 = call i32 @beiscsi_log(%struct.beiscsi_hba* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 2
  %20 = call i32 @del_timer_sync(i32* %19)
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 1
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @beiscsi_session_fail, align 4
  %28 = call i32 @iscsi_host_for_each_session(i32 %26, i32 %27)
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %30 = call i32 @beiscsi_disable_port(%struct.beiscsi_hba* %29, i32 0)
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %38 = call i32 @beiscsi_log(%struct.beiscsi_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @pci_disable_device(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @ssleep(i32 30)
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %34
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @iscsi_host_for_each_session(i32, i32) #1

declare dso_local i32 @beiscsi_disable_port(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
