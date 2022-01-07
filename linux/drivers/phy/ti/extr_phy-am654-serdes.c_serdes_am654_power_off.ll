; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.serdes_am654 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @serdes_am654_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_am654_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.serdes_am654*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.serdes_am654* @phy_get_drvdata(%struct.phy* %4)
  store %struct.serdes_am654* %5, %struct.serdes_am654** %3, align 8
  %6 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %7 = call i32 @serdes_am654_disable_txrx(%struct.serdes_am654* %6)
  %8 = load %struct.serdes_am654*, %struct.serdes_am654** %3, align 8
  %9 = call i32 @serdes_am654_disable_pll(%struct.serdes_am654* %8)
  ret i32 0
}

declare dso_local %struct.serdes_am654* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @serdes_am654_disable_txrx(%struct.serdes_am654*) #1

declare dso_local i32 @serdes_am654_disable_pll(%struct.serdes_am654*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
