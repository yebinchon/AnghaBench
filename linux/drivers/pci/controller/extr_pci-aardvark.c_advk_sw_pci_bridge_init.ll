; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_sw_pci_bridge_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_sw_pci_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { %struct.pci_bridge_emul }
%struct.pci_bridge_emul = type { i32, i32*, %struct.advk_pcie*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@PCIE_CORE_DEV_ID_REG = common dso_local global i32 0, align 4
@PCIE_CORE_DEV_REV_REG = common dso_local global i32 0, align 4
@PCI_IO_RANGE_TYPE_32 = common dso_local global i8* null, align 8
@PCI_PREF_RANGE_TYPE_64 = common dso_local global i8* null, align 8
@PCIE_CORE_INT_A_ASSERT_ENABLE = common dso_local global i32 0, align 4
@advk_pci_bridge_emul_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advk_pcie*)* @advk_sw_pci_bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advk_sw_pci_bridge_init(%struct.advk_pcie* %0) #0 {
  %2 = alloca %struct.advk_pcie*, align 8
  %3 = alloca %struct.pci_bridge_emul*, align 8
  store %struct.advk_pcie* %0, %struct.advk_pcie** %2, align 8
  %4 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %5 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %4, i32 0, i32 0
  store %struct.pci_bridge_emul* %5, %struct.pci_bridge_emul** %3, align 8
  %6 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %7 = load i32, i32* @PCIE_CORE_DEV_ID_REG, align 4
  %8 = call i32 @advk_readl(%struct.advk_pcie* %6, i32 %7)
  %9 = and i32 %8, 65535
  %10 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %11 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %14 = load i32, i32* @PCIE_CORE_DEV_ID_REG, align 4
  %15 = call i32 @advk_readl(%struct.advk_pcie* %13, i32 %14)
  %16 = ashr i32 %15, 16
  %17 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %18 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %21 = load i32, i32* @PCIE_CORE_DEV_REV_REG, align 4
  %22 = call i32 @advk_readl(%struct.advk_pcie* %20, i32 %21)
  %23 = and i32 %22, 255
  %24 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %25 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @PCI_IO_RANGE_TYPE_32, align 8
  %28 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %29 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 7
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @PCI_IO_RANGE_TYPE_32, align 8
  %32 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %33 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** @PCI_PREF_RANGE_TYPE_64, align 8
  %36 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %37 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** @PCI_PREF_RANGE_TYPE_64, align 8
  %40 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %41 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* @PCIE_CORE_INT_A_ASSERT_ENABLE, align 4
  %44 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %45 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %48 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.advk_pcie*, %struct.advk_pcie** %2, align 8
  %50 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %51 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %50, i32 0, i32 2
  store %struct.advk_pcie* %49, %struct.advk_pcie** %51, align 8
  %52 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %53 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %52, i32 0, i32 1
  store i32* @advk_pci_bridge_emul_ops, i32** %53, align 8
  %54 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %3, align 8
  %55 = call i32 @pci_bridge_emul_init(%struct.pci_bridge_emul* %54, i32 0)
  ret void
}

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

declare dso_local i32 @pci_bridge_emul_init(%struct.pci_bridge_emul*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
