; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_pme_turnoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_pme_turnoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"PCIe link is not up...!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Link didn't transition to L2 state\0A\00", align 1
@APPL_PINMUX = common dso_local global i32 0, align 4
@APPL_PINMUX_PEX_RST = common dso_local global i32 0, align 4
@APPL_DEBUG = common dso_local global i64 0, align 8
@APPL_DEBUG_LTSSM_STATE_MASK = common dso_local global i32 0, align 4
@APPL_DEBUG_LTSSM_STATE_SHIFT = common dso_local global i32 0, align 4
@LTSSM_STATE_PRE_DETECT = common dso_local global i32 0, align 4
@LTSSM_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Link didn't go to detect state\0A\00", align 1
@APPL_CTRL = common dso_local global i32 0, align 4
@APPL_CTRL_LTSSM_EN = common dso_local global i32 0, align 4
@APPL_PINMUX_CLKREQ_OVERRIDE_EN = common dso_local global i32 0, align 4
@APPL_PINMUX_CLKREQ_OVERRIDE = common dso_local global i32 0, align 4
@APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN = common dso_local global i32 0, align 4
@APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_dw*)* @tegra_pcie_dw_pme_turnoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_dw_pme_turnoff(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca %struct.tegra_pcie_dw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %2, align 8
  %5 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %5, i32 0, i32 2
  %7 = call i32 @tegra_pcie_dw_link_up(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %16 = call i64 @tegra_pcie_try_link_l2(%struct.tegra_pcie_dw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %20 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %24 = load i32, i32* @APPL_PINMUX, align 4
  %25 = call i32 @appl_readl(%struct.tegra_pcie_dw* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @APPL_PINMUX_PEX_RST, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @APPL_PINMUX, align 4
  %33 = call i32 @appl_writel(%struct.tegra_pcie_dw* %30, i32 %31, i32 %32)
  %34 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @APPL_DEBUG, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @APPL_DEBUG_LTSSM_STATE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @APPL_DEBUG_LTSSM_STATE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* @LTSSM_STATE_PRE_DETECT, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @LTSSM_TIMEOUT, align 4
  %49 = call i32 @readl_poll_timeout_atomic(i64 %38, i32 %39, i32 %47, i32 1, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %18
  %53 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %54 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_info(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %69

57:                                               ; preds = %18
  %58 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %59 = load i32, i32* @APPL_CTRL, align 4
  %60 = call i32 @appl_readl(%struct.tegra_pcie_dw* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @APPL_CTRL_LTSSM_EN, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @APPL_CTRL, align 4
  %68 = call i32 @appl_writel(%struct.tegra_pcie_dw* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %57, %52
  br label %70

70:                                               ; preds = %69, %14
  %71 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %72 = load i32, i32* @APPL_PINMUX, align 4
  %73 = call i32 @appl_readl(%struct.tegra_pcie_dw* %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* @APPL_PINMUX_CLKREQ_OVERRIDE_EN, align 4
  %75 = load i32, i32* @APPL_PINMUX_CLKREQ_OVERRIDE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN, align 4
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %3, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %2, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @APPL_PINMUX, align 4
  %89 = call i32 @appl_writel(%struct.tegra_pcie_dw* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %70, %9
  ret void
}

declare dso_local i32 @tegra_pcie_dw_link_up(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @tegra_pcie_try_link_l2(%struct.tegra_pcie_dw*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
