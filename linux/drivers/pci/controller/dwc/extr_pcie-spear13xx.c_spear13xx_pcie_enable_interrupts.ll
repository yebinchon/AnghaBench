; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear13xx_pcie = type { %struct.pcie_app_reg*, %struct.dw_pcie* }
%struct.pcie_app_reg = type { i32 }
%struct.dw_pcie = type { %struct.pcie_port }
%struct.pcie_port = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@MSI_CTRL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spear13xx_pcie*)* @spear13xx_pcie_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spear13xx_pcie_enable_interrupts(%struct.spear13xx_pcie* %0) #0 {
  %2 = alloca %struct.spear13xx_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.pcie_port*, align 8
  %5 = alloca %struct.pcie_app_reg*, align 8
  store %struct.spear13xx_pcie* %0, %struct.spear13xx_pcie** %2, align 8
  %6 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %6, i32 0, i32 1
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  store %struct.dw_pcie* %8, %struct.dw_pcie** %3, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %9, i32 0, i32 0
  store %struct.pcie_port* %10, %struct.pcie_port** %4, align 8
  %11 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %2, align 8
  %12 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %11, i32 0, i32 0
  %13 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %12, align 8
  store %struct.pcie_app_reg* %13, %struct.pcie_app_reg** %5, align 8
  %14 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %15 = call i64 @IS_ENABLED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %19 = call i32 @dw_pcie_msi_init(%struct.pcie_port* %18)
  %20 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %5, align 8
  %21 = getelementptr inbounds %struct.pcie_app_reg, %struct.pcie_app_reg* %20, i32 0, i32 0
  %22 = call i32 @readl(i32* %21)
  %23 = load i32, i32* @MSI_CTRL_INT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %5, align 8
  %26 = getelementptr inbounds %struct.pcie_app_reg, %struct.pcie_app_reg* %25, i32 0, i32 0
  %27 = call i32 @writel(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dw_pcie_msi_init(%struct.pcie_port*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
