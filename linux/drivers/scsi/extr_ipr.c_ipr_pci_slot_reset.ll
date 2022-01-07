; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_pci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_pci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@ipr_reset_restore_cfg_space = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ipr_pci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_pci_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ipr_ioa_cfg* %6, %struct.ipr_ioa_cfg** %4, align 8
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  %14 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %25 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %26 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %24, i32 %25)
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %29 = load i32, i32* @ipr_reset_restore_cfg_space, align 4
  %30 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %31 = call i32 @_ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  br label %37

33:                                               ; preds = %1
  %34 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %35 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %34, i32 0, i32 1
  %36 = call i32 @wake_up_all(i32* %35)
  br label %37

37:                                               ; preds = %33, %32
  %38 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %39 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32 %42, i64 %43)
  %45 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  ret i32 %45
}

declare dso_local %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @_ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
