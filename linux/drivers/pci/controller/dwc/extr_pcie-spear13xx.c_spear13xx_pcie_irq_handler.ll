; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear13xx_pcie = type { %struct.dw_pcie*, %struct.pcie_app_reg* }
%struct.dw_pcie = type { %struct.pcie_port }
%struct.pcie_port = type { i32 }
%struct.pcie_app_reg = type { i32, i32 }

@MSI_CTRL_INT = common dso_local global i32 0, align 4
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spear13xx_pcie_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear13xx_pcie_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spear13xx_pcie*, align 8
  %6 = alloca %struct.pcie_app_reg*, align 8
  %7 = alloca %struct.dw_pcie*, align 8
  %8 = alloca %struct.pcie_port*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.spear13xx_pcie*
  store %struct.spear13xx_pcie* %11, %struct.spear13xx_pcie** %5, align 8
  %12 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %12, i32 0, i32 1
  %14 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %13, align 8
  store %struct.pcie_app_reg* %14, %struct.pcie_app_reg** %6, align 8
  %15 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %5, align 8
  %16 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %15, i32 0, i32 0
  %17 = load %struct.dw_pcie*, %struct.dw_pcie** %16, align 8
  store %struct.dw_pcie* %17, %struct.dw_pcie** %7, align 8
  %18 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %19 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %18, i32 0, i32 0
  store %struct.pcie_port* %19, %struct.pcie_port** %8, align 8
  %20 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %6, align 8
  %21 = getelementptr inbounds %struct.pcie_app_reg, %struct.pcie_app_reg* %20, i32 0, i32 1
  %22 = call i32 @readl(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MSI_CTRL_INT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %29 = call i32 @IS_ENABLED(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.pcie_port*, %struct.pcie_port** %8, align 8
  %35 = call i32 @dw_handle_msi_irq(%struct.pcie_port* %34)
  br label %36

36:                                               ; preds = %27, %2
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.pcie_app_reg*, %struct.pcie_app_reg** %6, align 8
  %39 = getelementptr inbounds %struct.pcie_app_reg, %struct.pcie_app_reg* %38, i32 0, i32 0
  %40 = call i32 @writel(i32 %37, i32* %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dw_handle_msi_irq(%struct.pcie_port*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
