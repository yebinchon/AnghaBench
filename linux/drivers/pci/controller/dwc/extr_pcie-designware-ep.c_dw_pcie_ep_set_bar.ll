; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_set_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_set_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.pci_epf_bar = type { i32, i64, i32, i32 }
%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_SPACE = common dso_local global i32 0, align 4
@DW_PCIE_AS_MEM = common dso_local global i32 0, align 4
@DW_PCIE_AS_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, %struct.pci_epf_bar*)* @dw_pcie_ep_set_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_ep_set_bar(%struct.pci_epc* %0, i32 %1, %struct.pci_epf_bar* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_epf_bar*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dw_pcie_ep*, align 8
  %10 = alloca %struct.dw_pcie*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pci_epf_bar* %2, %struct.pci_epf_bar** %7, align 8
  %16 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %17 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %16)
  store %struct.dw_pcie_ep* %17, %struct.dw_pcie_ep** %9, align 8
  %18 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %9, align 8
  %19 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %18)
  store %struct.dw_pcie* %19, %struct.dw_pcie** %10, align 8
  %20 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %21 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %24 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %27 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* @PCI_BASE_ADDRESS_0, align 8
  %30 = load i32, i32* %11, align 4
  %31 = mul i32 4, %30
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* %15, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @PCI_BASE_ADDRESS_SPACE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @DW_PCIE_AS_MEM, align 4
  store i32 %39, i32* %14, align 4
  br label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @DW_PCIE_AS_IO, align 4
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %46 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @dw_pcie_ep_inbound_atu(%struct.dw_pcie_ep* %43, i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %86

54:                                               ; preds = %42
  %55 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %56 = call i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie* %55)
  %57 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %12, align 8
  %60 = sub i64 %59, 1
  %61 = call i32 @lower_32_bits(i64 %60)
  %62 = call i32 @dw_pcie_writel_dbi2(%struct.dw_pcie* %57, i64 %58, i32 %61)
  %63 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %63, i64 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %54
  %72 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add nsw i64 %73, 4
  %75 = load i64, i64* %12, align 8
  %76 = sub i64 %75, 1
  %77 = call i32 @upper_32_bits(i64 %76)
  %78 = call i32 @dw_pcie_writel_dbi2(%struct.dw_pcie* %72, i64 %74, i32 %77)
  %79 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %80 = load i64, i64* %15, align 8
  %81 = add nsw i64 %80, 4
  %82 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %79, i64 %81, i32 0)
  br label %83

83:                                               ; preds = %71, %54
  %84 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %85 = call i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie* %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %52
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dw_pcie_ep_inbound_atu(%struct.dw_pcie_ep*, i32, i32, i32) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_writel_dbi2(%struct.dw_pcie*, i64, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
