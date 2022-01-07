; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_reset_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_reset_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.pnv_php_slot = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_DLLSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*, i32)* @pnv_php_reset_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_php_reset_slot(%struct.hotplug_slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hotplug_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pnv_php_slot*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %10 = call %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot* %9)
  store %struct.pnv_php_slot* %10, %struct.pnv_php_slot** %6, align 8
  %11 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %12 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %23 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %28 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @disable_irq(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = call i32 @pci_bridge_secondary_bus_reset(%struct.pci_dev* %32)
  %34 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %35 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %34, i32 0, i32 1
  %36 = load %struct.pci_dev*, %struct.pci_dev** %35, align 8
  %37 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %38 = call i32 @pcie_capability_read_word(%struct.pci_dev* %36, i32 %37, i32* %8)
  %39 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %40 = load i32, i32* @PCI_EXP_SLTSTA_DLLSC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %45 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %44, i32 0, i32 1
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  %47 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pcie_capability_write_word(%struct.pci_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %51 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %31
  %55 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %6, align 8
  %56 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @enable_irq(i64 %57)
  br label %59

59:                                               ; preds = %54, %31
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.pnv_php_slot* @to_pnv_php_slot(%struct.hotplug_slot*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @pci_bridge_secondary_bus_reset(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @enable_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
