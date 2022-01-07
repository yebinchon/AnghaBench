; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.imx6_pcie = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @imx6_pcie_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pcie_host_init(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.imx6_pcie*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %5 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %6 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %5)
  store %struct.dw_pcie* %6, %struct.dw_pcie** %3, align 8
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %8 = call %struct.imx6_pcie* @to_imx6_pcie(%struct.dw_pcie* %7)
  store %struct.imx6_pcie* %8, %struct.imx6_pcie** %4, align 8
  %9 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %10 = call i32 @imx6_pcie_assert_core_reset(%struct.imx6_pcie* %9)
  %11 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %12 = call i32 @imx6_pcie_init_phy(%struct.imx6_pcie* %11)
  %13 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %14 = call i32 @imx6_pcie_deassert_core_reset(%struct.imx6_pcie* %13)
  %15 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %16 = call i32 @imx6_setup_phy_mpll(%struct.imx6_pcie* %15)
  %17 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %18 = call i32 @dw_pcie_setup_rc(%struct.pcie_port* %17)
  %19 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %20 = call i32 @imx6_pcie_establish_link(%struct.imx6_pcie* %19)
  %21 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %26 = call i32 @dw_pcie_msi_init(%struct.pcie_port* %25)
  br label %27

27:                                               ; preds = %24, %1
  ret i32 0
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.imx6_pcie* @to_imx6_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @imx6_pcie_assert_core_reset(%struct.imx6_pcie*) #1

declare dso_local i32 @imx6_pcie_init_phy(%struct.imx6_pcie*) #1

declare dso_local i32 @imx6_pcie_deassert_core_reset(%struct.imx6_pcie*) #1

declare dso_local i32 @imx6_setup_phy_mpll(%struct.imx6_pcie*) #1

declare dso_local i32 @dw_pcie_setup_rc(%struct.pcie_port*) #1

declare dso_local i32 @imx6_pcie_establish_link(%struct.imx6_pcie*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dw_pcie_msi_init(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
