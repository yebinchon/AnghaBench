; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_stop_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_stop_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }
%struct.artpec6_pcie = type { i32 }

@PCIECFG = common dso_local global i32 0, align 4
@PCIECFG_LTSSM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_pcie*)* @artpec6_pcie_stop_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_stop_link(%struct.dw_pcie* %0) #0 {
  %2 = alloca %struct.dw_pcie*, align 8
  %3 = alloca %struct.artpec6_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %2, align 8
  %5 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %6 = call %struct.artpec6_pcie* @to_artpec6_pcie(%struct.dw_pcie* %5)
  store %struct.artpec6_pcie* %6, %struct.artpec6_pcie** %3, align 8
  %7 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %3, align 8
  %8 = load i32, i32* @PCIECFG, align 4
  %9 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @PCIECFG_LTSSM_ENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %3, align 8
  %15 = load i32, i32* @PCIECFG, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local %struct.artpec6_pcie* @to_artpec6_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @artpec6_pcie_readl(%struct.artpec6_pcie*, i32) #1

declare dso_local i32 @artpec6_pcie_writel(%struct.artpec6_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
