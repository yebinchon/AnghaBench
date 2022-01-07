; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_get_port_device_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_get_port_device_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32 }
%struct.pci_host_bridge = type { i64, i64, i64 }

@pcie_ports_native = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_CCIE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_HPIE = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_DPC = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_DPC = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_BWNOTIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @get_port_device_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_device_capability(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_host_bridge*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %7)
  store %struct.pci_host_bridge* %8, %struct.pci_host_bridge** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i64, i64* @pcie_ports_native, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %18 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %27 = load i32, i32* @PCI_EXP_SLTCTL_CCIE, align 4
  %28 = load i32, i32* @PCI_EXP_SLTCTL_HPIE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %16, %1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i64 @pci_pcie_type(%struct.pci_dev* %32)
  %34 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i64, i64* @pcie_ports_native, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %41 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @pcie_pme_interrupt_enable(%struct.pci_dev* %48, i32 0)
  br label %50

50:                                               ; preds = %44, %39, %31
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = load i32, i32* @PCI_EXT_CAP_ID_DPC, align 4
  %53 = call i64 @pci_find_ext_capability(%struct.pci_dev* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = call i64 (...) @pci_aer_available()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @PCIE_PORT_SERVICE_DPC, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %58, %55, %50
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = call i64 @pci_pcie_type(%struct.pci_dev* %68)
  %70 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = call i64 @pci_pcie_type(%struct.pci_dev* %73)
  %75 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72, %67
  %78 = load i32, i32* @PCIE_PORT_SERVICE_BWNOTIF, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pcie_pme_interrupt_enable(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_aer_available(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
