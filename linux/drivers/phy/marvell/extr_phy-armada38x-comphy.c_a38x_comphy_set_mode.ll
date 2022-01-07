; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada38x-comphy.c_a38x_comphy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada38x-comphy.c_a38x_comphy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.a38x_comphy_lane = type { i32 }

@PHY_MODE_ETHERNET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GEN_SGMII_1_25GBPS = common dso_local global i32 0, align 4
@GEN_SGMII_3_125GBPS = common dso_local global i32 0, align 4
@COMPHY_STAT1 = common dso_local global i32 0, align 4
@COMPHY_STAT1_PLL_RDY_TX = common dso_local global i32 0, align 4
@COMPHY_STAT1_PLL_RDY_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @a38x_comphy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a38x_comphy_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.a38x_comphy_lane*, align 8
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.phy*, %struct.phy** %5, align 8
  %11 = call %struct.a38x_comphy_lane* @phy_get_drvdata(%struct.phy* %10)
  store %struct.a38x_comphy_lane* %11, %struct.a38x_comphy_lane** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PHY_MODE_ETHERNET, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %24 [
    i32 128, label %20
    i32 130, label %20
    i32 129, label %22
  ]

20:                                               ; preds = %18, %18
  %21 = load i32, i32* @GEN_SGMII_1_25GBPS, align 4
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @GEN_SGMII_3_125GBPS, align 4
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %22, %20
  %28 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @a38x_comphy_set_speed(%struct.a38x_comphy_lane* %28, i32 %29, i32 %30)
  %32 = load %struct.a38x_comphy_lane*, %struct.a38x_comphy_lane** %8, align 8
  %33 = load i32, i32* @COMPHY_STAT1, align 4
  %34 = load i32, i32* @COMPHY_STAT1_PLL_RDY_TX, align 4
  %35 = load i32, i32* @COMPHY_STAT1_PLL_RDY_RX, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @COMPHY_STAT1_PLL_RDY_TX, align 4
  %38 = load i32, i32* @COMPHY_STAT1_PLL_RDY_RX, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @a38x_comphy_poll(%struct.a38x_comphy_lane* %32, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %24, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.a38x_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @a38x_comphy_set_speed(%struct.a38x_comphy_lane*, i32, i32) #1

declare dso_local i32 @a38x_comphy_poll(%struct.a38x_comphy_lane*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
