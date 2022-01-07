; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_raise_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_raise_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dra7xx_pcie = type { i32 }

@MSI_VECTOR_SHIFT = common dso_local global i32 0, align 4
@MSI_REQ_GRANT = common dso_local global i32 0, align 4
@PCIECTRL_TI_CONF_MSI_XMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dra7xx_pcie*, i32)* @dra7xx_pcie_raise_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dra7xx_pcie_raise_msi_irq(%struct.dra7xx_pcie* %0, i32 %1) #0 {
  %3 = alloca %struct.dra7xx_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dra7xx_pcie* %0, %struct.dra7xx_pcie** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %6, 1
  %8 = load i32, i32* @MSI_VECTOR_SHIFT, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @MSI_REQ_GRANT, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %3, align 8
  %14 = load i32, i32* @PCIECTRL_TI_CONF_MSI_XMT, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dra7xx_pcie_writel(%struct.dra7xx_pcie* %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @dra7xx_pcie_writel(%struct.dra7xx_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
