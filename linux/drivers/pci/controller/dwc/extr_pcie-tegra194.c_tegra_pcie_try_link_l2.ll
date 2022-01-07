; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_try_link_l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_try_link_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i64, i32 }

@APPL_RADM_STATUS = common dso_local global i32 0, align 4
@APPL_PM_XMT_TURNOFF_STATE = common dso_local global i32 0, align 4
@APPL_DEBUG = common dso_local global i64 0, align 8
@APPL_DEBUG_PM_LINKST_IN_L2_LAT = common dso_local global i32 0, align 4
@PME_ACK_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @tegra_pcie_try_link_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_try_link_l2(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_dw*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %3, align 8
  %5 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %5, i32 0, i32 1
  %7 = call i32 @tegra_pcie_dw_link_up(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %12 = load i32, i32* @APPL_RADM_STATUS, align 4
  %13 = call i32 @appl_readl(%struct.tegra_pcie_dw* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @APPL_PM_XMT_TURNOFF_STATE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @APPL_RADM_STATUS, align 4
  %20 = call i32 @appl_writel(%struct.tegra_pcie_dw* %17, i32 %18, i32 %19)
  %21 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @APPL_DEBUG, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @APPL_DEBUG_PM_LINKST_IN_L2_LAT, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @PME_ACK_TIMEOUT, align 4
  %31 = call i32 @readl_poll_timeout_atomic(i64 %25, i32 %26, i32 %29, i32 1, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %10, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @tegra_pcie_dw_link_up(i32*) #1

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
