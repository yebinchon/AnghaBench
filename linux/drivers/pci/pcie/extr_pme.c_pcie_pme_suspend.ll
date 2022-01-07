; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.pcie_pme_service_data = type { i32 }

@pci_bus_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_device*)* @pcie_pme_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_pme_suspend(%struct.pcie_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca %struct.pcie_pme_service_data*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %8 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %9 = call %struct.pcie_pme_service_data* @get_service_data(%struct.pcie_device* %8)
  store %struct.pcie_pme_service_data* %9, %struct.pcie_pme_service_data** %4, align 8
  %10 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = call i64 @device_may_wakeup(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %25

18:                                               ; preds = %1
  %19 = call i32 @down_read(i32* @pci_bus_sem)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pcie_pme_check_wakeup(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = call i32 @up_read(i32* @pci_bus_sem)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @enable_irq_wake(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %45

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %4, align 8
  %40 = call i32 @pcie_pme_disable_interrupt(%struct.pci_dev* %38, %struct.pcie_pme_service_data* %39)
  %41 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @synchronize_irq(i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %35
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.pcie_pme_service_data* @get_service_data(%struct.pcie_device*) #1

declare dso_local i64 @device_may_wakeup(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @pcie_pme_check_wakeup(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @pcie_pme_disable_interrupt(%struct.pci_dev*, %struct.pcie_pme_service_data*) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
