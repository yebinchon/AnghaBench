; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.uniphier_pcie_priv = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @uniphier_pcie_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pcie_host_init(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.uniphier_pcie_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %7 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %8 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %7)
  store %struct.dw_pcie* %8, %struct.dw_pcie** %4, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %10 = call %struct.uniphier_pcie_priv* @to_uniphier_pcie(%struct.dw_pcie* %9)
  store %struct.uniphier_pcie_priv* %10, %struct.uniphier_pcie_priv** %5, align 8
  %11 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %12 = call i32 @uniphier_pcie_config_legacy_irq(%struct.pcie_port* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %19 = call i32 @uniphier_pcie_irq_enable(%struct.uniphier_pcie_priv* %18)
  %20 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %21 = call i32 @dw_pcie_setup_rc(%struct.pcie_port* %20)
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %23 = call i32 @uniphier_pcie_establish_link(%struct.dw_pcie* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %17
  %29 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %34 = call i32 @dw_pcie_msi_init(%struct.pcie_port* %33)
  br label %35

35:                                               ; preds = %32, %28
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %26, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.uniphier_pcie_priv* @to_uniphier_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @uniphier_pcie_config_legacy_irq(%struct.pcie_port*) #1

declare dso_local i32 @uniphier_pcie_irq_enable(%struct.uniphier_pcie_priv*) #1

declare dso_local i32 @dw_pcie_setup_rc(%struct.pcie_port*) #1

declare dso_local i32 @uniphier_pcie_establish_link(%struct.dw_pcie*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dw_pcie_msi_init(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
