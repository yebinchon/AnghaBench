; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_reset_outbound_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_reset_outbound_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_pcie = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns_pcie_reset_outbound_region(%struct.cdns_pcie* %0, i32 %1) #0 {
  %3 = alloca %struct.cdns_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns_pcie* %0, %struct.cdns_pcie** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(i32 %6)
  %8 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %5, i32 %7, i32 0)
  %9 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(i32 %10)
  %12 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %9, i32 %11, i32 0)
  %13 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC0(i32 %14)
  %16 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %13, i32 %15, i32 0)
  %17 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC1(i32 %18)
  %20 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %17, i32 %19, i32 0)
  %21 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(i32 %22)
  %24 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %21, i32 %23, i32 0)
  %25 = load %struct.cdns_pcie*, %struct.cdns_pcie** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(i32 %26)
  %28 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %25, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @cdns_pcie_writel(%struct.cdns_pcie*, i32, i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC1(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
