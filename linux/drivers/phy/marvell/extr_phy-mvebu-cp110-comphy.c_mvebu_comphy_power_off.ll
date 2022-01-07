; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_comphy_lane = type { i32, %struct.mvebu_comphy_priv* }
%struct.mvebu_comphy_priv = type { i32 }

@COMPHY_SIP_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_comphy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mvebu_comphy_lane*, align 8
  %5 = alloca %struct.mvebu_comphy_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy* %7)
  store %struct.mvebu_comphy_lane* %8, %struct.mvebu_comphy_lane** %4, align 8
  %9 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %10 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %9, i32 0, i32 1
  %11 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %10, align 8
  store %struct.mvebu_comphy_priv* %11, %struct.mvebu_comphy_priv** %5, align 8
  %12 = load i32, i32* @COMPHY_SIP_POWER_OFF, align 4
  %13 = load %struct.mvebu_comphy_priv*, %struct.mvebu_comphy_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mvebu_comphy_priv, %struct.mvebu_comphy_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %4, align 8
  %17 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mvebu_comphy_smc(i32 %12, i32 %15, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.phy*, %struct.phy** %3, align 8
  %26 = call i32 @mvebu_comphy_power_off_legacy(%struct.phy* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mvebu_comphy_smc(i32, i32, i32, i32) #1

declare dso_local i32 @mvebu_comphy_power_off_legacy(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
