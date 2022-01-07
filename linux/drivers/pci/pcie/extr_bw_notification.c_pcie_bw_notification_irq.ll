; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_bw_notification.c_pcie_bw_notification_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_bw_notification.c_pcie_bw_notification_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_LBMS = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcie_bw_notification_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_bw_notification_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcie_device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pcie_device*
  store %struct.pcie_device* %12, %struct.pcie_device** %6, align 8
  %13 = load %struct.pcie_device*, %struct.pcie_device** %6, align 8
  %14 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %18 = call i32 @pcie_capability_read_word(%struct.pci_dev* %16, i32 %17, i32* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PCI_EXP_LNKSTA_LBMS, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %32 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @pcie_capability_write_word(%struct.pci_dev* %31, i32 %32, i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pcie_update_link_speed(i32 %37, i32 %38)
  %40 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %30, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcie_update_link_speed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
