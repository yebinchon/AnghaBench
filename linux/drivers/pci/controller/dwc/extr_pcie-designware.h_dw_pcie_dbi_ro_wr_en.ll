; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.h_dw_pcie_dbi_ro_wr_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.h_dw_pcie_dbi_ro_wr_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32 }

@PCIE_MISC_CONTROL_1_OFF = common dso_local global i32 0, align 4
@PCIE_DBI_RO_WR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_pcie*)* @dw_pcie_dbi_ro_wr_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie* %0) #0 {
  %2 = alloca %struct.dw_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %2, align 8
  %5 = load i32, i32* @PCIE_MISC_CONTROL_1_OFF, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @PCIE_DBI_RO_WR_EN, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
