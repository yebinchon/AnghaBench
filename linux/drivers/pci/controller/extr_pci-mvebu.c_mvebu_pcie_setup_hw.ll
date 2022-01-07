; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { i32 }

@PCIE_CMD_OFF = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCIE_MASK_OFF = common dso_local global i32 0, align 4
@PCIE_MASK_ENABLE_INTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*)* @mvebu_pcie_setup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pcie_setup_hw(%struct.mvebu_pcie_port* %0) #0 {
  %2 = alloca %struct.mvebu_pcie_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %2, align 8
  %5 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %6 = call i32 @mvebu_pcie_setup_wins(%struct.mvebu_pcie_port* %5)
  %7 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %8 = load i32, i32* @PCIE_CMD_OFF, align 4
  %9 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PCI_COMMAND_IO, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIE_CMD_OFF, align 4
  %22 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %19, i32 %20, i32 %21)
  %23 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %24 = load i32, i32* @PCIE_MASK_OFF, align 4
  %25 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @PCIE_MASK_ENABLE_INTS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PCIE_MASK_OFF, align 4
  %32 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @mvebu_pcie_setup_wins(%struct.mvebu_pcie_port*) #1

declare dso_local i32 @mvebu_readl(%struct.mvebu_pcie_port*, i32) #1

declare dso_local i32 @mvebu_writel(%struct.mvebu_pcie_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
