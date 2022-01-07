; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_phy-tegra194-p2u.c_tegra_p2u_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_phy-tegra194-p2u.c_tegra_p2u_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_p2u = type { i32 }

@P2U_PERIODIC_EQ_CTRL_GEN3 = common dso_local global i32 0, align 4
@P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN = common dso_local global i32 0, align 4
@P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN = common dso_local global i32 0, align 4
@P2U_PERIODIC_EQ_CTRL_GEN4 = common dso_local global i32 0, align 4
@P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN = common dso_local global i32 0, align 4
@P2U_RX_DEBOUNCE_TIME = common dso_local global i32 0, align 4
@P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK = common dso_local global i32 0, align 4
@P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra_p2u_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_p2u_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.tegra_p2u*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.tegra_p2u* @phy_get_drvdata(%struct.phy* %5)
  store %struct.tegra_p2u* %6, %struct.tegra_p2u** %3, align 8
  %7 = load %struct.tegra_p2u*, %struct.tegra_p2u** %3, align 8
  %8 = load i32, i32* @P2U_PERIODIC_EQ_CTRL_GEN3, align 4
  %9 = call i32 @p2u_readl(%struct.tegra_p2u* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tegra_p2u*, %struct.tegra_p2u** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @P2U_PERIODIC_EQ_CTRL_GEN3, align 4
  %20 = call i32 @p2u_writel(%struct.tegra_p2u* %17, i32 %18, i32 %19)
  %21 = load %struct.tegra_p2u*, %struct.tegra_p2u** %3, align 8
  %22 = load i32, i32* @P2U_PERIODIC_EQ_CTRL_GEN4, align 4
  %23 = call i32 @p2u_readl(%struct.tegra_p2u* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.tegra_p2u*, %struct.tegra_p2u** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @P2U_PERIODIC_EQ_CTRL_GEN4, align 4
  %30 = call i32 @p2u_writel(%struct.tegra_p2u* %27, i32 %28, i32 %29)
  %31 = load %struct.tegra_p2u*, %struct.tegra_p2u** %3, align 8
  %32 = load i32, i32* @P2U_RX_DEBOUNCE_TIME, align 4
  %33 = call i32 @p2u_readl(%struct.tegra_p2u* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.tegra_p2u*, %struct.tegra_p2u** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @P2U_RX_DEBOUNCE_TIME, align 4
  %44 = call i32 @p2u_writel(%struct.tegra_p2u* %41, i32 %42, i32 %43)
  ret i32 0
}

declare dso_local %struct.tegra_p2u* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @p2u_readl(%struct.tegra_p2u*, i32) #1

declare dso_local i32 @p2u_writel(%struct.tegra_p2u*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
