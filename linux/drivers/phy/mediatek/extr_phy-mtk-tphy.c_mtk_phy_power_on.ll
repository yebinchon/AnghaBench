; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_phy_instance = type { i64 }
%struct.mtk_tphy = type { i32 }

@PHY_TYPE_USB2 = common dso_local global i64 0, align 8
@PHY_TYPE_PCIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mtk_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mtk_phy_instance*, align 8
  %4 = alloca %struct.mtk_tphy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.mtk_phy_instance* @phy_get_drvdata(%struct.phy* %5)
  store %struct.mtk_phy_instance* %6, %struct.mtk_phy_instance** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %2, align 8
  %8 = getelementptr inbounds %struct.phy, %struct.phy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mtk_tphy* @dev_get_drvdata(i32 %10)
  store %struct.mtk_tphy* %11, %struct.mtk_tphy** %4, align 8
  %12 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PHY_TYPE_USB2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.mtk_tphy*, %struct.mtk_tphy** %4, align 8
  %19 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %3, align 8
  %20 = call i32 @u2_phy_instance_power_on(%struct.mtk_tphy* %18, %struct.mtk_phy_instance* %19)
  %21 = load %struct.mtk_tphy*, %struct.mtk_tphy** %4, align 8
  %22 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %3, align 8
  %23 = call i32 @hs_slew_rate_calibrate(%struct.mtk_tphy* %21, %struct.mtk_phy_instance* %22)
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %3, align 8
  %26 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PHY_TYPE_PCIE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.mtk_tphy*, %struct.mtk_tphy** %4, align 8
  %32 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %3, align 8
  %33 = call i32 @pcie_phy_instance_power_on(%struct.mtk_tphy* %31, %struct.mtk_phy_instance* %32)
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %17
  ret i32 0
}

declare dso_local %struct.mtk_phy_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.mtk_tphy* @dev_get_drvdata(i32) #1

declare dso_local i32 @u2_phy_instance_power_on(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @hs_slew_rate_calibrate(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @pcie_phy_instance_power_on(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
