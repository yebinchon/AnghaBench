; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { %struct.pci_bridge_emul }
%struct.pci_bridge_emul = type { i32, i32*, %struct.mvebu_pcie_port*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i32 }

@PCI_VENDOR_ID_MARVELL = common dso_local global i32 0, align 4
@PCIE_DEV_ID_OFF = common dso_local global i32 0, align 4
@PCIE_DEV_REV_OFF = common dso_local global i32 0, align 4
@PCI_IO_RANGE_TYPE_32 = common dso_local global i8* null, align 8
@mvebu_pci_bridge_emul_ops = common dso_local global i32 0, align 4
@PCI_BRIDGE_EMUL_NO_PREFETCHABLE_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*)* @mvebu_pci_bridge_emul_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pci_bridge_emul_init(%struct.mvebu_pcie_port* %0) #0 {
  %2 = alloca %struct.mvebu_pcie_port*, align 8
  %3 = alloca %struct.pci_bridge_emul*, align 8
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %2, align 8
  %4 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %4, i32 0, i32 0
  store %struct.pci_bridge_emul* %5, %struct.pci_bridge_emul** %3, align 8
  %6 = load i32, i32* @PCI_VENDOR_ID_MARVELL, align 4
  %7 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %8 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  store i32 %6, i32* %9, align 8
  %10 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %11 = load i32, i32* @PCIE_DEV_ID_OFF, align 4
  %12 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %10, i32 %11)
  %13 = ashr i32 %12, 16
  %14 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %15 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %18 = load i32, i32* @PCIE_DEV_REV_OFF, align 4
  %19 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %17, i32 %18)
  %20 = and i32 %19, 255
  %21 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %22 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %25 = call i64 @mvebu_has_ioport(%struct.mvebu_pcie_port* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load i8*, i8** @PCI_IO_RANGE_TYPE_32, align 8
  %29 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %30 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @PCI_IO_RANGE_TYPE_32, align 8
  %33 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %34 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %38 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %40 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %41 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %40, i32 0, i32 2
  store %struct.mvebu_pcie_port* %39, %struct.mvebu_pcie_port** %41, align 8
  %42 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %43 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %42, i32 0, i32 1
  store i32* @mvebu_pci_bridge_emul_ops, i32** %43, align 8
  %44 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %45 = load i32, i32* @PCI_BRIDGE_EMUL_NO_PREFETCHABLE_BAR, align 4
  %46 = call i32 @pci_bridge_emul_init(%struct.pci_bridge_emul* %44, i32 %45)
  ret void
}

declare dso_local i32 @mvebu_readl(%struct.mvebu_pcie_port*, i32) #1

declare dso_local i64 @mvebu_has_ioport(%struct.mvebu_pcie_port*) #1

declare dso_local i32 @pci_bridge_emul_init(%struct.pci_bridge_emul*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
