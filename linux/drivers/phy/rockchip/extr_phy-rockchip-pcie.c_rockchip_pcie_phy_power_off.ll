; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_pcie_instance = type { i64 }
%struct.rockchip_pcie_phy = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@PHY_LANE_IDLE_OFF = common dso_local global i32 0, align 4
@PHY_LANE_IDLE_MASK = common dso_local global i32 0, align 4
@PHY_LANE_IDLE_A_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"assert phy_rst err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_pcie_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.phy_pcie_instance*, align 8
  %5 = alloca %struct.rockchip_pcie_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy* %7)
  store %struct.phy_pcie_instance* %8, %struct.phy_pcie_instance** %4, align 8
  %9 = load %struct.phy_pcie_instance*, %struct.phy_pcie_instance** %4, align 8
  %10 = call %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance* %9)
  store %struct.rockchip_pcie_phy* %10, %struct.rockchip_pcie_phy** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %15 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %18 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PHY_LANE_IDLE_OFF, align 4
  %23 = load i32, i32* @PHY_LANE_IDLE_MASK, align 4
  %24 = load i64, i64* @PHY_LANE_IDLE_A_SHIFT, align 8
  %25 = load %struct.phy_pcie_instance*, %struct.phy_pcie_instance** %4, align 8
  %26 = getelementptr inbounds %struct.phy_pcie_instance, %struct.phy_pcie_instance* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @HIWORD_UPDATE(i32 %22, i32 %23, i64 %28)
  %30 = call i32 @regmap_write(i32 %16, i32 %21, i32 %29)
  %31 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %50

37:                                               ; preds = %1
  %38 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %39 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @reset_control_assert(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.phy*, %struct.phy** %3, align 8
  %46 = getelementptr inbounds %struct.phy, %struct.phy* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %54

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %36
  %51 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %52 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %2, align 4
  br label %83

54:                                               ; preds = %44
  %55 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %56 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %60 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %63 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PHY_LANE_IDLE_OFF, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* @PHY_LANE_IDLE_MASK, align 4
  %72 = load i64, i64* @PHY_LANE_IDLE_A_SHIFT, align 8
  %73 = load %struct.phy_pcie_instance*, %struct.phy_pcie_instance** %4, align 8
  %74 = getelementptr inbounds %struct.phy_pcie_instance, %struct.phy_pcie_instance* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = call i32 @HIWORD_UPDATE(i32 %70, i32 %71, i64 %76)
  %78 = call i32 @regmap_write(i32 %61, i32 %66, i32 %77)
  %79 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %80 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %54, %50
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32, i64) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
