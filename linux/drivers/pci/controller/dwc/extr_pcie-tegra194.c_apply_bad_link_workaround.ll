; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_apply_bad_link_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_apply_bad_link_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.tegra_pcie_dw = type { i32, i64 }

@PCI_EXP_LNKSTA = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_LBMS = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_NLW = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_NLW_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PCIe link is bad, width reduced\0A\00", align 1
@PCI_EXP_LNKCTL2 = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL2_TLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2_TLS_2_5GT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL_RL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_port*)* @apply_bad_link_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_bad_link_workaround(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %7 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %8 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %7)
  store %struct.dw_pcie* %8, %struct.dw_pcie** %3, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %10 = call %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie* %9)
  store %struct.tegra_pcie_dw* %10, %struct.tegra_pcie_dw** %4, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %12 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %11, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PCI_EXP_LNKSTA_LBMS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @PCI_EXP_LNKSTA_NLW_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %22
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %35 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %39 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %38, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @PCI_EXP_LNKCTL2_TLS, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @PCI_EXP_LNKCTL2_TLS_2_5GT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %53 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %54 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %52, i64 %57, i32 %58)
  %60 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %61 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @dw_pcie_readw_dbi(%struct.dw_pcie* %60, i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @PCI_EXP_LNKCTL_RL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %71 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %70, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %33, %22
  br label %79

79:                                               ; preds = %78, %1
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_readw_dbi(%struct.dw_pcie*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dw_pcie_writew_dbi(%struct.dw_pcie*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
