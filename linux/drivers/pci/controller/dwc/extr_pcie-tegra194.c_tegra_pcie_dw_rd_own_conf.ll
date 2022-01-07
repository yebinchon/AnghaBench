; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_rd_own_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_rd_own_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i64 }

@PORT_LOGIC_MSIX_DOORBELL = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*, i32, i32, i32*)* @tegra_pcie_dw_rd_own_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_dw_rd_own_conf(%struct.pcie_port* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcie_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dw_pcie*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %12 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %11)
  store %struct.dw_pcie* %12, %struct.dw_pcie** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PORT_LOGIC_MSIX_DOORBELL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %18, i32* %5, align 4
  br label %29

19:                                               ; preds = %4
  %20 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %21 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @dw_pcie_read(i64 %25, i32 %26, i32* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local i32 @dw_pcie_read(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
