; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_off_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_off_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_comphy_lane = type { i32, %struct.mvebu_comphy_priv* }
%struct.mvebu_comphy_priv = type { i32, i64 }

@MVEBU_COMPHY_SERDES_CFG1_RESET = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_CFG1_CORE_RESET = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_CFG1_RF_RESET = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SELECTOR = common dso_local global i32 0, align 4
@MVEBU_COMPHY_PIPE_SELECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_comphy_power_off_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_power_off_legacy(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mvebu_comphy_lane*, align 8
  %4 = alloca %struct.mvebu_comphy_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy* %6)
  store %struct.mvebu_comphy_lane* %7, %struct.mvebu_comphy_lane** %3, align 8
  %8 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %9 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %8, i32 0, i32 1
  %10 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %9, align 8
  store %struct.mvebu_comphy_priv* %10, %struct.mvebu_comphy_priv** %4, align 8
  %11 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %15 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %16)
  %18 = add nsw i64 %13, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG1_RESET, align 4
  %21 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG1_CORE_RESET, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG1_RF_RESET, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %33 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %34)
  %36 = add nsw i64 %31, %35
  %37 = call i32 @writel(i32 %28, i64 %36)
  %38 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MVEBU_COMPHY_SELECTOR, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %5)
  %43 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %44 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MVEBU_COMPHY_SELECTOR_PHY(i32 %45)
  %47 = shl i32 15, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %52 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MVEBU_COMPHY_SELECTOR, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @regmap_write(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %58 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MVEBU_COMPHY_PIPE_SELECTOR, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %5)
  %62 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %3, align 8
  %63 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @MVEBU_COMPHY_PIPE_SELECTOR_PIPE(i32 %64)
  %66 = shl i32 15, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %4, align 8
  %71 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MVEBU_COMPHY_PIPE_SELECTOR, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @regmap_write(i32 %72, i32 %73, i32 %74)
  ret i32 0
}

declare dso_local %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MVEBU_COMPHY_SERDES_CFG1(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MVEBU_COMPHY_SELECTOR_PHY(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @MVEBU_COMPHY_PIPE_SELECTOR_PIPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
