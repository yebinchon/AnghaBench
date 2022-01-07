; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_cfg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_cfg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.altera_pcie* }
%struct.altera_pcie = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @altera_pcie_cfg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_pcie_cfg_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.altera_pcie*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 1
  %15 = load %struct.altera_pcie*, %struct.altera_pcie** %14, align 8
  store %struct.altera_pcie* %15, %struct.altera_pcie** %12, align 8
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @altera_pcie_hide_rc_bar(%struct.pci_bus* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %22, i32* %6, align 4
  br label %43

23:                                               ; preds = %5
  %24 = load %struct.altera_pcie*, %struct.altera_pcie** %12, align 8
  %25 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @PCI_SLOT(i32 %26)
  %28 = call i32 @altera_pcie_valid_device(%struct.altera_pcie* %24, %struct.pci_bus* %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %11, align 8
  store i32 -1, i32* %31, align 4
  %32 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %32, i32* %6, align 4
  br label %43

33:                                               ; preds = %23
  %34 = load %struct.altera_pcie*, %struct.altera_pcie** %12, align 8
  %35 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %36 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @_altera_pcie_cfg_read(%struct.altera_pcie* %34, i32 %37, i32 %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %33, %30, %21
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @altera_pcie_hide_rc_bar(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @altera_pcie_valid_device(%struct.altera_pcie*, %struct.pci_bus*, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @_altera_pcie_cfg_read(%struct.altera_pcie*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
