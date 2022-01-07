; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_mtk_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_mtk_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xsphy_instance = type { i64 }
%struct.mtk_xsphy = type { i32 }

@PHY_TYPE_USB2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mtk_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.xsphy_instance*, align 8
  %4 = alloca %struct.mtk_xsphy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.xsphy_instance* @phy_get_drvdata(%struct.phy* %5)
  store %struct.xsphy_instance* %6, %struct.xsphy_instance** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %2, align 8
  %8 = getelementptr inbounds %struct.phy, %struct.phy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mtk_xsphy* @dev_get_drvdata(i32 %10)
  store %struct.mtk_xsphy* %11, %struct.mtk_xsphy** %4, align 8
  %12 = load %struct.xsphy_instance*, %struct.xsphy_instance** %3, align 8
  %13 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PHY_TYPE_USB2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %4, align 8
  %19 = load %struct.xsphy_instance*, %struct.xsphy_instance** %3, align 8
  %20 = call i32 @u2_phy_instance_power_on(%struct.mtk_xsphy* %18, %struct.xsphy_instance* %19)
  %21 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %4, align 8
  %22 = load %struct.xsphy_instance*, %struct.xsphy_instance** %3, align 8
  %23 = call i32 @u2_phy_slew_rate_calibrate(%struct.mtk_xsphy* %21, %struct.xsphy_instance* %22)
  br label %24

24:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local %struct.xsphy_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.mtk_xsphy* @dev_get_drvdata(i32) #1

declare dso_local i32 @u2_phy_instance_power_on(%struct.mtk_xsphy*, %struct.xsphy_instance*) #1

declare dso_local i32 @u2_phy_slew_rate_calibrate(%struct.mtk_xsphy*, %struct.xsphy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
