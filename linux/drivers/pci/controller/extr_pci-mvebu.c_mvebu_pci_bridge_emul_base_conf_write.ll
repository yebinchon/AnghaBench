; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_base_conf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_base_conf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bridge_emul = type { %struct.pci_bridge_emul_conf, %struct.mvebu_pcie_port* }
%struct.pci_bridge_emul_conf = type { i32, i32, i32, i32 }
%struct.mvebu_pcie_port = type { i32 }

@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_IO_RANGE_TYPE_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bridge_emul*, i32, i32, i32, i32)* @mvebu_pci_bridge_emul_base_conf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pci_bridge_emul_base_conf_write(%struct.pci_bridge_emul* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bridge_emul*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mvebu_pcie_port*, align 8
  %12 = alloca %struct.pci_bridge_emul_conf*, align 8
  store %struct.pci_bridge_emul* %0, %struct.pci_bridge_emul** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %14 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %13, i32 0, i32 1
  %15 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %14, align 8
  store %struct.mvebu_pcie_port* %15, %struct.mvebu_pcie_port** %11, align 8
  %16 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %17 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %16, i32 0, i32 0
  store %struct.pci_bridge_emul_conf* %17, %struct.pci_bridge_emul_conf** %12, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %76 [
    i32 132, label %19
    i32 131, label %51
    i32 129, label %64
    i32 130, label %67
    i32 128, label %70
  ]

19:                                               ; preds = %5
  %20 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %21 = call i32 @mvebu_has_ioport(%struct.mvebu_pcie_port* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @PCI_COMMAND_IO, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %12, align 8
  %27 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = xor i32 %31, %32
  %34 = load i32, i32* @PCI_COMMAND_IO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %39 = call i32 @mvebu_pcie_handle_iobase_change(%struct.mvebu_pcie_port* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %49 = call i32 @mvebu_pcie_handle_membase_change(%struct.mvebu_pcie_port* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %77

51:                                               ; preds = %5
  %52 = load i32, i32* @PCI_IO_RANGE_TYPE_32, align 4
  %53 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %12, align 8
  %54 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @PCI_IO_RANGE_TYPE_32, align 4
  %58 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %12, align 8
  %59 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %63 = call i32 @mvebu_pcie_handle_iobase_change(%struct.mvebu_pcie_port* %62)
  br label %77

64:                                               ; preds = %5
  %65 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %66 = call i32 @mvebu_pcie_handle_membase_change(%struct.mvebu_pcie_port* %65)
  br label %77

67:                                               ; preds = %5
  %68 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %69 = call i32 @mvebu_pcie_handle_iobase_change(%struct.mvebu_pcie_port* %68)
  br label %77

70:                                               ; preds = %5
  %71 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %72 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %12, align 8
  %73 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mvebu_pcie_set_local_bus_nr(%struct.mvebu_pcie_port* %71, i32 %74)
  br label %77

76:                                               ; preds = %5
  br label %77

77:                                               ; preds = %76, %70, %67, %64, %51, %50
  ret void
}

declare dso_local i32 @mvebu_has_ioport(%struct.mvebu_pcie_port*) #1

declare dso_local i32 @mvebu_pcie_handle_iobase_change(%struct.mvebu_pcie_port*) #1

declare dso_local i32 @mvebu_pcie_handle_membase_change(%struct.mvebu_pcie_port*) #1

declare dso_local i32 @mvebu_pcie_set_local_bus_nr(%struct.mvebu_pcie_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
