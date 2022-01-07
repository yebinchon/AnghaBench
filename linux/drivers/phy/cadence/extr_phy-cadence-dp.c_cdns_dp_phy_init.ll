; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.cdns_dp_phy = type { i32, i64 }

@PHY_AUX_CTRL = common dso_local global i64 0, align 8
@PHY_PMA_XCVR_POWER_STATE_REQ = common dso_local global i64 0, align 8
@PHY_POWER_STATE_LN_0 = common dso_local global i32 0, align 4
@PHY_POWER_STATE_LN_1 = common dso_local global i32 0, align 4
@PHY_POWER_STATE_LN_2 = common dso_local global i32 0, align 4
@PHY_POWER_STATE_LN_3 = common dso_local global i32 0, align 4
@PHY_PMA_XCVR_PLLCLK_EN = common dso_local global i64 0, align 8
@PHY_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @cdns_dp_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dp_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.cdns_dp_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.cdns_dp_phy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.cdns_dp_phy* %6, %struct.cdns_dp_phy** %4, align 8
  %7 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %8 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_AUX_CTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 3, i64 %11)
  %13 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %14 = call i32 @cdns_dp_phy_pma_cfg(%struct.cdns_dp_phy* %13)
  %15 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %16 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %17 = load i32, i32* @PHY_POWER_STATE_LN_0, align 4
  %18 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %15, i64 %16, i32 %17, i32 6, i32 0)
  %19 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %20 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %1
  %24 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %25 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %26 = load i32, i32* @PHY_POWER_STATE_LN_1, align 4
  %27 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %24, i64 %25, i32 %26, i32 6, i32 0)
  %28 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %29 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %34 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %35 = load i32, i32* @PHY_POWER_STATE_LN_2, align 4
  %36 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %33, i64 %34, i32 %35, i32 6, i32 0)
  %37 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %38 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %39 = load i32, i32* @PHY_POWER_STATE_LN_3, align 4
  %40 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %37, i64 %38, i32 %39, i32 6, i32 0)
  br label %41

41:                                               ; preds = %32, %23
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %44 = load i64, i64* @PHY_PMA_XCVR_PLLCLK_EN, align 8
  %45 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %43, i64 %44, i32 0, i32 1, i32 0)
  %46 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %47 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %66

50:                                               ; preds = %42
  %51 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %52 = load i64, i64* @PHY_PMA_XCVR_PLLCLK_EN, align 8
  %53 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %51, i64 %52, i32 1, i32 1, i32 0)
  %54 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %55 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %60 = load i64, i64* @PHY_PMA_XCVR_PLLCLK_EN, align 8
  %61 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %59, i64 %60, i32 2, i32 1, i32 0)
  %62 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %63 = load i64, i64* @PHY_PMA_XCVR_PLLCLK_EN, align 8
  %64 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %62, i64 %63, i32 3, i32 1, i32 0)
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %68 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %3, align 1
  %73 = load i8, i8* %3, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, -1
  %76 = and i32 15, %75
  %77 = shl i32 %76, 4
  %78 = load i8, i8* %3, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 15, %79
  %81 = or i32 %77, %80
  %82 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %83 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PHY_RESET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %89 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PHY_PMA_XCVR_PLLCLK_EN, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 1, i64 %92)
  %94 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %95 = call i32 @cdns_dp_phy_pma_cmn_vco_cfg_25mhz(%struct.cdns_dp_phy* %94)
  %96 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %97 = call i32 @cdns_dp_phy_pma_cmn_rate(%struct.cdns_dp_phy* %96)
  %98 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %99 = load i64, i64* @PHY_RESET, align 8
  %100 = call i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %98, i64 %99, i32 8, i32 1, i32 1)
  %101 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %102 = call i32 @cdns_dp_phy_wait_pma_cmn_ready(%struct.cdns_dp_phy* %101)
  %103 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %4, align 8
  %104 = call i32 @cdns_dp_phy_run(%struct.cdns_dp_phy* %103)
  ret i32 0
}

declare dso_local %struct.cdns_dp_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cdns_dp_phy_pma_cfg(%struct.cdns_dp_phy*) #1

declare dso_local i32 @cdns_dp_phy_write_field(%struct.cdns_dp_phy*, i64, i32, i32, i32) #1

declare dso_local i32 @cdns_dp_phy_pma_cmn_vco_cfg_25mhz(%struct.cdns_dp_phy*) #1

declare dso_local i32 @cdns_dp_phy_pma_cmn_rate(%struct.cdns_dp_phy*) #1

declare dso_local i32 @cdns_dp_phy_wait_pma_cmn_ready(%struct.cdns_dp_phy*) #1

declare dso_local i32 @cdns_dp_phy_run(%struct.cdns_dp_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
