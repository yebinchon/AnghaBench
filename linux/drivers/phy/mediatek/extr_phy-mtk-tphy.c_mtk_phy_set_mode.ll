; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_phy_instance = type { i64 }
%struct.mtk_tphy = type { i32 }

@PHY_TYPE_USB2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @mtk_phy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_phy_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_phy_instance*, align 8
  %8 = alloca %struct.mtk_tphy*, align 8
  store %struct.phy* %0, %struct.phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.phy*, %struct.phy** %4, align 8
  %10 = call %struct.mtk_phy_instance* @phy_get_drvdata(%struct.phy* %9)
  store %struct.mtk_phy_instance* %10, %struct.mtk_phy_instance** %7, align 8
  %11 = load %struct.phy*, %struct.phy** %4, align 8
  %12 = getelementptr inbounds %struct.phy, %struct.phy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mtk_tphy* @dev_get_drvdata(i32 %14)
  store %struct.mtk_tphy* %15, %struct.mtk_tphy** %8, align 8
  %16 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %17 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_TYPE_USB2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.mtk_tphy*, %struct.mtk_tphy** %8, align 8
  %23 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @u2_phy_instance_set_mode(%struct.mtk_tphy* %22, %struct.mtk_phy_instance* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  ret i32 0
}

declare dso_local %struct.mtk_phy_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.mtk_tphy* @dev_get_drvdata(i32) #1

declare dso_local i32 @u2_phy_instance_set_mode(%struct.mtk_tphy*, %struct.mtk_phy_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
