; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_get_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_get_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.rockchip_pcie_ep = type { %struct.rockchip_pcie }
%struct.rockchip_pcie = type { i32 }

@ROCKCHIP_PCIE_EP_MSI_CTRL_REG = common dso_local global i64 0, align 8
@ROCKCHIP_PCIE_EP_MSI_CTRL_ME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ROCKCHIP_PCIE_EP_MSI_CTRL_MME_MASK = common dso_local global i32 0, align 4
@ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32)* @rockchip_pcie_ep_get_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_ep_get_msi(%struct.pci_epc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_pcie_ep*, align 8
  %7 = alloca %struct.rockchip_pcie*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %10 = call %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %9)
  store %struct.rockchip_pcie_ep* %10, %struct.rockchip_pcie_ep** %6, align 8
  %11 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %6, align 8
  %12 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %11, i32 0, i32 0
  store %struct.rockchip_pcie* %12, %struct.rockchip_pcie** %7, align 8
  %13 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32 %14)
  %16 = load i64, i64* @ROCKCHIP_PCIE_EP_MSI_CTRL_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %13, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_ME, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_MME_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i64) #1

declare dso_local i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
