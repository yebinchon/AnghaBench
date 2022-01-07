; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcie_pme_service_data = type { i32, i32 }
%struct.pcie_device = type { %struct.pci_dev* }

@PCI_EXP_RTSTA = common dso_local global i32 0, align 4
@PCI_EXP_RTSTA_PME = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcie_pme_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_pme_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pcie_pme_service_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pcie_device*
  %12 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pcie_device*
  %16 = call %struct.pcie_pme_service_data* @get_service_data(%struct.pcie_device* %15)
  store %struct.pcie_pme_service_data* %16, %struct.pcie_pme_service_data** %7, align 8
  %17 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %7, align 8
  %18 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %17, i32 0, i32 1
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = load i32, i32* @PCI_EXP_RTSTA, align 4
  %23 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %21, i32 %22, i32* %8)
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PCI_EXP_RTSTA_PME, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %7, align 8
  %33 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %32, i32 0, i32 1
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %48

37:                                               ; preds = %26
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = call i32 @pcie_pme_interrupt_enable(%struct.pci_dev* %38, i32 0)
  %40 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %7, align 8
  %41 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %40, i32 0, i32 1
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %7, align 8
  %45 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %44, i32 0, i32 0
  %46 = call i32 @schedule_work(i32* %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %37, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.pcie_pme_service_data* @get_service_data(%struct.pcie_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pcie_pme_interrupt_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
