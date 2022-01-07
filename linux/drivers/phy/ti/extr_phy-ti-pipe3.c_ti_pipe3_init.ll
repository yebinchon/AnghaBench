; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ti_pipe3 = type { i64, i32, i32, i32, i32 }

@PIPE3_MODE_PCIE = common dso_local global i64 0, align 8
@OMAP_CTRL_PCIE_PCS_DELAY_COUNT_SHIFT = common dso_local global i32 0, align 4
@PCIE_PCS_MASK = common dso_local global i32 0, align 4
@PLL_CONFIGURATION2 = common dso_local global i32 0, align 4
@PLL_IDLE = common dso_local global i32 0, align 4
@PLL_STATUS = common dso_local global i32 0, align 4
@PLL_LOCK = common dso_local global i32 0, align 4
@PIPE3_MODE_SATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ti_pipe3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.ti_pipe3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.ti_pipe3* @phy_get_drvdata(%struct.phy* %7)
  store %struct.ti_pipe3* %8, %struct.ti_pipe3** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %10 = call i32 @ti_pipe3_enable_clocks(%struct.ti_pipe3* %9)
  %11 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %12 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PIPE3_MODE_PCIE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %18 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %23 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @omap_control_pcie_pcs(i32 %24, i32 150)
  store i32 0, i32* %2, align 4
  br label %94

26:                                               ; preds = %16
  %27 = load i32, i32* @OMAP_CTRL_PCIE_PCS_DELAY_COUNT_SHIFT, align 4
  %28 = shl i32 150, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %30 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %33 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCIE_PCS_MASK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @regmap_update_bits(i32 %31, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %94

39:                                               ; preds = %1
  %40 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %41 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PLL_CONFIGURATION2, align 4
  %44 = call i32 @ti_pipe3_readl(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @PLL_IDLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %39
  %50 = load i32, i32* @PLL_IDLE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %55 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PLL_CONFIGURATION2, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ti_pipe3_writel(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %61 = call i32 @ti_pipe3_dpll_wait_lock(%struct.ti_pipe3* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %49, %39
  %63 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %64 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PLL_STATUS, align 4
  %67 = call i32 @ti_pipe3_readl(i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PLL_LOCK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %74 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %94

80:                                               ; preds = %72, %62
  %81 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %82 = call i32 @ti_pipe3_dpll_program(%struct.ti_pipe3* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %87 = call i32 @ti_pipe3_disable_clocks(%struct.ti_pipe3* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %94

90:                                               ; preds = %80
  %91 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %92 = call i32 @ti_pipe3_calibrate(%struct.ti_pipe3* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %85, %78, %26, %21
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.ti_pipe3* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @ti_pipe3_enable_clocks(%struct.ti_pipe3*) #1

declare dso_local i32 @omap_control_pcie_pcs(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ti_pipe3_readl(i32, i32) #1

declare dso_local i32 @ti_pipe3_writel(i32, i32, i32) #1

declare dso_local i32 @ti_pipe3_dpll_wait_lock(%struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_dpll_program(%struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_disable_clocks(%struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_calibrate(%struct.ti_pipe3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
