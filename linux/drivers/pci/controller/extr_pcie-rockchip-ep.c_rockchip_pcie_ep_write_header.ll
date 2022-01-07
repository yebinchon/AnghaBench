; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_write_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-ep.c_rockchip_pcie_ep_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.pci_epf_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rockchip_pcie_ep = type { %struct.rockchip_pcie }
%struct.rockchip_pcie = type { i32 }

@PCIE_CORE_CONFIG_VENDOR = common dso_local global i64 0, align 8
@PCI_VENDOR_ID = common dso_local global i64 0, align 8
@PCI_REVISION_ID = common dso_local global i64 0, align 8
@PCI_CACHE_LINE_SIZE = common dso_local global i64 0, align 8
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i64 0, align 8
@PCI_INTERRUPT_LINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)* @rockchip_pcie_ep_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_ep_write_header(%struct.pci_epc* %0, i64 %1, %struct.pci_epf_header* %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_epf_header*, align 8
  %7 = alloca %struct.rockchip_pcie_ep*, align 8
  %8 = alloca %struct.rockchip_pcie*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pci_epf_header* %2, %struct.pci_epf_header** %6, align 8
  %10 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %11 = call %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %10)
  store %struct.rockchip_pcie_ep* %11, %struct.rockchip_pcie_ep** %7, align 8
  %12 = load %struct.rockchip_pcie_ep*, %struct.rockchip_pcie_ep** %7, align 8
  %13 = getelementptr inbounds %struct.rockchip_pcie_ep, %struct.rockchip_pcie_ep* %12, i32 0, i32 0
  store %struct.rockchip_pcie* %13, %struct.rockchip_pcie** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %18 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GENMASK(i32 15, i32 0)
  %21 = and i32 %19, %20
  %22 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %23 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GENMASK(i32 31, i32 16)
  %26 = and i32 %24, %25
  %27 = shl i32 %26, 16
  %28 = or i32 %21, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* @PCIE_CORE_CONFIG_VENDOR, align 8
  %32 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %29, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %16, %3
  %34 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %35 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %36 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i64 %39)
  %41 = load i64, i64* @PCI_VENDOR_ID, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %34, i32 %38, i64 %42)
  %44 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %45 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %46 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %49 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %47, %51
  %53 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %54 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %52, %56
  %58 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %59 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 24
  %62 = or i32 %57, %61
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i64 %63)
  %65 = load i64, i64* @PCI_REVISION_ID, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %44, i32 %62, i64 %66)
  %68 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %69 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %70 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i64 %72)
  %74 = load i64, i64* @PCI_CACHE_LINE_SIZE, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %68, i32 %71, i64 %75)
  %77 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %78 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %79 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 16
  %82 = load i64, i64* %5, align 8
  %83 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i64 %82)
  %84 = load i64, i64* @PCI_SUBSYSTEM_VENDOR_ID, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %77, i32 %81, i64 %85)
  %87 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %8, align 8
  %88 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %89 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i64 %92)
  %94 = load i64, i64* @PCI_INTERRUPT_LINE, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %87, i32 %91, i64 %95)
  ret i32 0
}

declare dso_local %struct.rockchip_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i64) #1

declare dso_local i64 @ROCKCHIP_PCIE_EP_FUNC_BASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
