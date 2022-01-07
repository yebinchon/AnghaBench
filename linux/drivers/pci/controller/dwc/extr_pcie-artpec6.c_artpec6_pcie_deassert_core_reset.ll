; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_deassert_core_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_deassert_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { i32 }

@PCIECFG = common dso_local global i32 0, align 4
@PCIECFG_CORE_RESET_REQ = common dso_local global i32 0, align 4
@PCIECFG_NOC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_pcie*)* @artpec6_pcie_deassert_core_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_deassert_core_reset(%struct.artpec6_pcie* %0) #0 {
  %2 = alloca %struct.artpec6_pcie*, align 8
  %3 = alloca i32, align 4
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %2, align 8
  %4 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %5 = load i32, i32* @PCIECFG, align 4
  %6 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %8 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 129, label %10
    i32 128, label %15
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @PCIECFG_CORE_RESET_REQ, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @PCIECFG_NOC_RESET, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %1, %15, %10
  %20 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %21 = load i32, i32* @PCIECFG, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %20, i32 %21, i32 %22)
  %24 = call i32 @usleep_range(i32 100, i32 200)
  ret void
}

declare dso_local i32 @artpec6_pcie_readl(%struct.artpec6_pcie*, i32) #1

declare dso_local i32 @artpec6_pcie_writel(%struct.artpec6_pcie*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
