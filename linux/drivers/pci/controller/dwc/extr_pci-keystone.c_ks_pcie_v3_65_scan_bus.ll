; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_v3_65_scan_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_v3_65_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.keystone_pcie = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_port*)* @ks_pcie_v3_65_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_v3_65_scan_bus(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.keystone_pcie*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %5 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %6 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %5)
  store %struct.dw_pcie* %6, %struct.dw_pcie** %3, align 8
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %8 = call %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie* %7)
  store %struct.keystone_pcie* %8, %struct.keystone_pcie** %4, align 8
  %9 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %10 = call i32 @ks_pcie_set_dbi_mode(%struct.keystone_pcie* %9)
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %12 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %13 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %11, i32 %12, i32 1)
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %15 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %16 = load i32, i32* @SZ_4K, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %14, i32 %15, i32 %17)
  %19 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %20 = call i32 @ks_pcie_clear_dbi_mode(%struct.keystone_pcie* %19)
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %22 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %23 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %24 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %21, i32 %22, i32 %26)
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @ks_pcie_set_dbi_mode(%struct.keystone_pcie*) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @ks_pcie_clear_dbi_mode(%struct.keystone_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
