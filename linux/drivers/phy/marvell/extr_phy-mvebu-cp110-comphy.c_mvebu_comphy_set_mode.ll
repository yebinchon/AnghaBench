; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_comphy_lane = type { i32, i32, i32, i32 }

@PHY_INTERFACE_MODE_1000BASEX = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PHY_MODE_PCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @mvebu_comphy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvebu_comphy_lane*, align 8
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.phy*, %struct.phy** %5, align 8
  %10 = call %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy* %9)
  store %struct.mvebu_comphy_lane* %10, %struct.mvebu_comphy_lane** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PHY_INTERFACE_MODE_1000BASEX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %8, align 8
  %18 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %8, align 8
  %21 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @mvebu_comphy_get_fw_mode(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %8, align 8
  %33 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %8, align 8
  %36 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PHY_MODE_PCIE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %8, align 8
  %42 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %8, align 8
  %47 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40, %30
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i64 @mvebu_comphy_get_fw_mode(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
