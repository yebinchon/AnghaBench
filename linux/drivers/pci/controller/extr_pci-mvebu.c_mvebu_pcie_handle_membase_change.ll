; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_handle_membase_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_handle_membase_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_bridge_emul_conf }
%struct.pci_bridge_emul_conf = type { i32, i32, i32 }
%struct.mvebu_pcie_window = type { i32, i32, i32 }

@MVEBU_MBUS_NO_REMAP = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*)* @mvebu_pcie_handle_membase_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pcie_handle_membase_change(%struct.mvebu_pcie_port* %0) #0 {
  %2 = alloca %struct.mvebu_pcie_port*, align 8
  %3 = alloca %struct.mvebu_pcie_window, align 4
  %4 = alloca %struct.pci_bridge_emul_conf*, align 8
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 2
  %8 = load i32, i32* @MVEBU_MBUS_NO_REMAP, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %10 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pci_bridge_emul_conf* %11, %struct.pci_bridge_emul_conf** %4, align 8
  %12 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %13 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %16 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %21 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %28 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %29 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %32 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %35 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %34, i32 0, i32 0
  %36 = call i32 @mvebu_pcie_set_window(%struct.mvebu_pcie_port* %27, i32 %30, i32 %33, %struct.mvebu_pcie_window* %3, i32* %35)
  br label %65

37:                                               ; preds = %19
  %38 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %39 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 65520
  %42 = shl i32 %41, 16
  %43 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %45 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 65520
  %48 = shl i32 %47, 16
  %49 = or i32 %48, 1048575
  %50 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %49, %51
  %53 = add nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %56 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %57 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %60 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %63 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %62, i32 0, i32 0
  %64 = call i32 @mvebu_pcie_set_window(%struct.mvebu_pcie_port* %55, i32 %58, i32 %61, %struct.mvebu_pcie_window* %3, i32* %63)
  br label %65

65:                                               ; preds = %37, %26
  ret void
}

declare dso_local i32 @mvebu_pcie_set_window(%struct.mvebu_pcie_port*, i32, i32, %struct.mvebu_pcie_window*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
