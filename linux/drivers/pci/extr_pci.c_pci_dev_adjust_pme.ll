; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_adjust_pme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_adjust_pme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.device }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_D3cold = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_dev_adjust_pme(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @pm_runtime_suspended(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @device_may_wakeup(%struct.device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_D3cold, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @__pci_pme_active(%struct.pci_dev* %24, i32 0)
  br label %26

26:                                               ; preds = %23, %17, %13, %1
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i32 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @__pci_pme_active(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
