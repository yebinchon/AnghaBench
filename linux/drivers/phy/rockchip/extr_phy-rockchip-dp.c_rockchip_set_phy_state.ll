; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-dp.c_rockchip_set_phy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-dp.c_rockchip_set_phy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rockchip_dp_phy = type { i32, i32, i32 }

@GRF_SOC_CON12 = common dso_local global i32 0, align 4
@GRF_EDP_PHY_SIDDQ_HIWORD_MASK = common dso_local global i32 0, align 4
@GRF_EDP_PHY_SIDDQ_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't enable PHY power %d\0A\00", align 1
@GRF_EDP_PHY_SIDDQ_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32)* @rockchip_set_phy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_set_phy_state(%struct.phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_dp_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.phy*, %struct.phy** %4, align 8
  %9 = call %struct.rockchip_dp_phy* @phy_get_drvdata(%struct.phy* %8)
  store %struct.rockchip_dp_phy* %9, %struct.rockchip_dp_phy** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %6, align 8
  %14 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GRF_SOC_CON12, align 4
  %17 = load i32, i32* @GRF_EDP_PHY_SIDDQ_HIWORD_MASK, align 4
  %18 = load i32, i32* @GRF_EDP_PHY_SIDDQ_ON, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @regmap_write(i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %6, align 8
  %25 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %12
  %31 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %6, align 8
  %32 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_prepare_enable(i32 %33)
  store i32 %34, i32* %7, align 4
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %6, align 8
  %37 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_disable_unprepare(i32 %38)
  %40 = load %struct.rockchip_dp_phy*, %struct.rockchip_dp_phy** %6, align 8
  %41 = getelementptr inbounds %struct.rockchip_dp_phy, %struct.rockchip_dp_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GRF_SOC_CON12, align 4
  %44 = load i32, i32* @GRF_EDP_PHY_SIDDQ_HIWORD_MASK, align 4
  %45 = load i32, i32* @GRF_EDP_PHY_SIDDQ_OFF, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @regmap_write(i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %35, %30
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.rockchip_dp_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
