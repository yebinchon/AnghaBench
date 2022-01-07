; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_message_numbers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_message_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_BWNOTIF = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS_IRQ = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_DPC = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_DPC = common dso_local global i32 0, align 4
@PCI_EXP_DPC_CAP = common dso_local global i32 0, align 4
@PCI_EXP_DPC_IRQ = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_AER_IRQ = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32*, i32*, i32*)* @pcie_message_numbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_message_numbers(%struct.pci_dev* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %16 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PCIE_PORT_SERVICE_BWNOTIF, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = load i32, i32* @PCI_EXP_FLAGS, align 4
  %25 = call i32 @pcie_capability_read_word(%struct.pci_dev* %23, i32 %24, i32* %13)
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @PCI_EXP_FLAGS_IRQ, align 4
  %28 = and i32 %26, %27
  %29 = ashr i32 %28, 9
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %22, %5
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PCIE_PORT_SERVICE_DPC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %41 = load i32, i32* @PCI_EXT_CAP_ID_DPC, align 4
  %42 = call i32 @pci_find_ext_capability(%struct.pci_dev* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @PCI_EXP_DPC_CAP, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @pci_read_config_word(%struct.pci_dev* %46, i32 %49, i32* %13)
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @PCI_EXP_DPC_IRQ, align 4
  %53 = and i32 %51, %52
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @max(i32 %55, i32 %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %45, %39
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
