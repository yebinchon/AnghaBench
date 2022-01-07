; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-comphy.c_mvebu_a3700_comphy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-comphy.c_mvebu_a3700_comphy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_a3700_comphy_lane = type { i32, i32, i32, i32, i32 }

@PHY_INTERFACE_MODE_1000BASEX = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid COMPHY mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @mvebu_a3700_comphy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_a3700_comphy_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvebu_a3700_comphy_lane*, align 8
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.phy*, %struct.phy** %5, align 8
  %11 = call %struct.mvebu_a3700_comphy_lane* @phy_get_drvdata(%struct.phy* %10)
  store %struct.mvebu_a3700_comphy_lane* %11, %struct.mvebu_a3700_comphy_lane** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PHY_INTERFACE_MODE_1000BASEX, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %8, align 8
  %19 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %8, align 8
  %22 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mvebu_a3700_comphy_get_fw_mode(i32 %20, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %8, align 8
  %31 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %17
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %8, align 8
  %38 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %8, align 8
  %41 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.mvebu_a3700_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mvebu_a3700_comphy_get_fw_mode(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
