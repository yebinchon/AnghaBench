; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_raise_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_raise_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i32, i32, i64, %struct.pci_epc* }
%struct.pci_epc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_pcie = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_64BIT = common dso_local global i32 0, align 4
@PCI_MSI_ADDRESS_LO = common dso_local global i32 0, align 4
@PCI_MSI_ADDRESS_HI = common dso_local global i32 0, align 4
@PCI_MSI_DATA_64 = common dso_local global i32 0, align 4
@PCI_MSI_DATA_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_pcie_ep_raise_msi_irq(%struct.dw_pcie_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_pcie_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw_pcie*, align 8
  %9 = alloca %struct.pci_epc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %20 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %19)
  store %struct.dw_pcie* %20, %struct.dw_pcie** %8, align 8
  %21 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %22 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %21, i32 0, i32 3
  %23 = load %struct.pci_epc*, %struct.pci_epc** %22, align 8
  store %struct.pci_epc* %23, %struct.pci_epc** %9, align 8
  %24 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %25 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %133

31:                                               ; preds = %3
  %32 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %33 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PCI_MSI_FLAGS, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @PCI_MSI_FLAGS_64BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %48 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PCI_MSI_ADDRESS_LO, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %31
  %58 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %59 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PCI_MSI_ADDRESS_HI, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %67 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PCI_MSI_DATA_64, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  br label %83

74:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  %75 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %76 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PCI_MSI_DATA_32, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %15, align 4
  %80 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %80, i32 %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %74, %57
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %86 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %84, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = shl i32 %92, 32
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = or i32 %93, %97
  store i32 %98, i32* %16, align 4
  %99 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %102 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %106 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dw_pcie_ep_map_addr(%struct.pci_epc* %99, i32 %100, i32 %103, i32 %104, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %83
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %4, align 4
  br label %133

115:                                              ; preds = %83
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 %117, 1
  %119 = or i32 %116, %118
  %120 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %121 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = call i32 @writel(i32 %119, i64 %125)
  %127 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %5, align 8
  %130 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dw_pcie_ep_unmap_addr(%struct.pci_epc* %127, i32 %128, i32 %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %115, %113, %28
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dw_pcie_readw_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_ep_map_addr(%struct.pci_epc*, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dw_pcie_ep_unmap_addr(%struct.pci_epc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
