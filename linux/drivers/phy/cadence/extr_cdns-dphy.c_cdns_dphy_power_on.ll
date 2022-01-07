; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.cdns_dphy = type { i64, i32, i32 }

@DPHY_CMN_SSM_EN = common dso_local global i32 0, align 4
@DPHY_CMN_TX_MODE_EN = common dso_local global i32 0, align 4
@DPHY_CMN_SSM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @cdns_dphy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dphy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.cdns_dphy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.cdns_dphy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.cdns_dphy* %5, %struct.cdns_dphy** %3, align 8
  %6 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %7 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_prepare_enable(i32 %8)
  %10 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %11 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_prepare_enable(i32 %12)
  %14 = load i32, i32* @DPHY_CMN_SSM_EN, align 4
  %15 = load i32, i32* @DPHY_CMN_TX_MODE_EN, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %18 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DPHY_CMN_SSM, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  ret i32 0
}

declare dso_local %struct.cdns_dphy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
