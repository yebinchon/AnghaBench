; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_set_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_set_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.rockchip_pcie_ep = type { %struct.rockchip_pcie }
%struct.rockchip_pcie = type { i32 }

@ROCKCHIP_PCIE_EP_MSI_CTRL_REG = common dso_local global i64 0, align 8
@ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK = common dso_local global i32 0, align 4
@ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_64BIT = common dso_local global i32 0, align 4
@ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, i32)* @rockchip_pcie_ep_set_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_ep_set_msi(%struct.pci_epc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rockchip_pcie_ep*, align 8
  %8 = alloca %struct.rockchip_pcie*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %11 = call %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %10)
  store %struct.rockchip_pcie_ep* %11, %struct.rockchip_pcie_ep** %7, align 8
  %12 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %13 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %12, i32 0, i32 0
  store %struct.rockchip_pcie* %13, %struct.rockchip_pcie** %8, align 8
  %14 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32 %15)
  %17 = load i64, i64* @ROCKCHIP_PCIE_EP_MSI_CTRL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %14, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 1
  %26 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @PCI_MSI_FLAGS_64BIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32 %38)
  %40 = load i64, i64* @ROCKCHIP_PCIE_EP_MSI_CTRL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %36, i32 %37, i64 %41)
  ret i32 0
}

declare dso_local %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i64) #1

declare dso_local i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
