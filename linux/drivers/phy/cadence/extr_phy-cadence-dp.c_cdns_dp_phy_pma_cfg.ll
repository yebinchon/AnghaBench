; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dp_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dp_phy*)* @cdns_dp_phy_pma_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dp_phy_pma_cfg(%struct.cdns_dp_phy* %0) #0 {
  %2 = alloca %struct.cdns_dp_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.cdns_dp_phy* %0, %struct.cdns_dp_phy** %2, align 8
  %4 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %5 = call i32 @cdns_dp_phy_pma_cmn_cfg_25mhz(%struct.cdns_dp_phy* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %9 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @cdns_dp_phy_pma_lane_cfg(%struct.cdns_dp_phy* %13, i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %6

19:                                               ; preds = %6
  ret void
}

declare dso_local i32 @cdns_dp_phy_pma_cmn_cfg_25mhz(%struct.cdns_dp_phy*) #1

declare dso_local i32 @cdns_dp_phy_pma_lane_cfg(%struct.cdns_dp_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
