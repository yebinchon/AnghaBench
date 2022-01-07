; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_pci_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_pci_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bfad_s = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error detected state: %d - flags: 0x%x\0A\00", align 1
@BFAD_EEH_BUSY = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@BFAD_EEH_PCI_CHANNEL_IO_PERM_FAILURE = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @bfad_pci_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_pci_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.bfad_s* %9, %struct.bfad_s** %5, align 8
  %10 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @KERN_ERR, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_printk(i32 %11, i32* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %95 [
    i32 129, label %20
    i32 130, label %43
    i32 128, label %78
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* @BFAD_EEH_BUSY, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @bfa_ioc_suspend(i32* %33)
  %35 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 1
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %39, i32 0, i32 2
  %41 = call i32 @del_timer_sync(i32* %40)
  %42 = load i32, i32* @PCI_ERS_RESULT_CAN_RECOVER, align 4
  store i32 %42, i32* %7, align 4
  br label %97

43:                                               ; preds = %2
  %44 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 3
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %47, i32 0, i32 1
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load i32, i32* @BFAD_EEH_BUSY, align 4
  %52 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @bfa_ioc_suspend(i32* %58)
  %60 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %61 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %60, i32 0, i32 4
  %62 = call i32 @bfa_fcs_stop(i32* %61)
  %63 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %64 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %63, i32 0, i32 1
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %67, i32 0, i32 3
  %69 = call i32 @wait_for_completion(i32* %68)
  %70 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %71 = call i32 @bfad_remove_intr(%struct.bfad_s* %70)
  %72 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %72, i32 0, i32 2
  %74 = call i32 @del_timer_sync(i32* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = call i32 @pci_disable_device(%struct.pci_dev* %75)
  %77 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %77, i32* %7, align 4
  br label %97

78:                                               ; preds = %2
  %79 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %80 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %79, i32 0, i32 1
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load i32, i32* @BFAD_EEH_BUSY, align 4
  %84 = load i32, i32* @BFAD_EEH_PCI_CHANNEL_IO_PERM_FAILURE, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %87 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %91 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %90, i32 0, i32 1
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %94, i32* %7, align 4
  br label %97

95:                                               ; preds = %2
  %96 = call i32 @WARN_ON(i32 1)
  br label %97

97:                                               ; preds = %95, %78, %43, %20
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_ioc_suspend(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_fcs_stop(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bfad_remove_intr(%struct.bfad_s*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
