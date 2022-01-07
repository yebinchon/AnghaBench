; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_on_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_on_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_comphy_lane = type { i32, i32, i32, i32, %struct.mvebu_comphy_priv* }
%struct.mvebu_comphy_priv = type { i64, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@MVEBU_COMPHY_PIPE_SELECTOR = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SELECTOR = common dso_local global i32 0, align 4
@MVEBU_COMPHY_SERDES_CFG1_RF_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_comphy_power_on_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_power_on_legacy(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mvebu_comphy_lane*, align 8
  %5 = alloca %struct.mvebu_comphy_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy* %9)
  store %struct.mvebu_comphy_lane* %10, %struct.mvebu_comphy_lane** %4, align 8
  %11 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %12 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %11, i32 0, i32 4
  %13 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %12, align 8
  store %struct.mvebu_comphy_priv* %13, %struct.mvebu_comphy_priv** %5, align 8
  %14 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %15 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %18 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %21 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %24 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mvebu_comphy_get_mux(i32 %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %118

32:                                               ; preds = %1
  %33 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MVEBU_COMPHY_PIPE_SELECTOR, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %8)
  %38 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %39 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MVEBU_COMPHY_PIPE_SELECTOR_PIPE(i32 %40)
  %42 = shl i32 15, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MVEBU_COMPHY_PIPE_SELECTOR, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %53 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MVEBU_COMPHY_SELECTOR, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %8)
  %57 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %58 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MVEBU_COMPHY_SELECTOR_PHY(i32 %59)
  %61 = shl i32 15, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %67 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MVEBU_COMPHY_SELECTOR_PHY(i32 %68)
  %70 = shl i32 %65, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %74 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MVEBU_COMPHY_SELECTOR, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @regmap_write(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %80 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %91 [
    i32 128, label %82
    i32 130, label %82
    i32 129, label %85
    i32 131, label %88
  ]

82:                                               ; preds = %32, %32
  %83 = load %struct.phy*, %struct.phy** %3, align 8
  %84 = call i32 @mvebu_comphy_set_mode_sgmii(%struct.phy* %83)
  store i32 %84, i32* %6, align 4
  br label %94

85:                                               ; preds = %32
  %86 = load %struct.phy*, %struct.phy** %3, align 8
  %87 = call i32 @mvebu_comphy_set_mode_rxaui(%struct.phy* %86)
  store i32 %87, i32* %6, align 4
  br label %94

88:                                               ; preds = %32
  %89 = load %struct.phy*, %struct.phy** %3, align 8
  %90 = call i32 @mvebu_comphy_set_mode_10gkr(%struct.phy* %89)
  store i32 %90, i32* %6, align 4
  br label %94

91:                                               ; preds = %32
  %92 = load i32, i32* @ENOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %118

94:                                               ; preds = %88, %85, %82
  %95 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %96 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %99 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %100)
  %102 = add nsw i64 %97, %101
  %103 = call i32 @readl(i64 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @MVEBU_COMPHY_SERDES_CFG1_RF_RESET, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %109 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %112 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @MVEBU_COMPHY_SERDES_CFG1(i32 %113)
  %115 = add nsw i64 %110, %114
  %116 = call i32 @writel(i32 %107, i64 %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %94, %91, %29
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mvebu_comphy_get_mux(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MVEBU_COMPHY_PIPE_SELECTOR_PIPE(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @MVEBU_COMPHY_SELECTOR_PHY(i32) #1

declare dso_local i32 @mvebu_comphy_set_mode_sgmii(%struct.phy*) #1

declare dso_local i32 @mvebu_comphy_set_mode_rxaui(%struct.phy*) #1

declare dso_local i32 @mvebu_comphy_set_mode_10gkr(%struct.phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MVEBU_COMPHY_SERDES_CFG1(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
