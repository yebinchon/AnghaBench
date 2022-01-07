; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8822bwifionly.c_ex_hal8822b_wifi_only_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8822bwifionly.c_ex_hal8822b_wifi_only_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wifi_only_cfg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_hal8822b_wifi_only_hw_config(%struct.wifi_only_cfg* %0) #0 {
  %2 = alloca %struct.wifi_only_cfg*, align 8
  store %struct.wifi_only_cfg* %0, %struct.wifi_only_cfg** %2, align 8
  %3 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %4 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %3, i32 76, i32 25165824, i32 2)
  %5 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %6 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %5, i32 3252, i32 255, i32 119)
  %7 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %8 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %7, i32 2420, i32 768, i32 3)
  %9 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %10 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %9, i32 6544, i32 768, i32 0)
  %11 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %12 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %11, i32 3260, i32 524288, i32 0)
  %13 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %14 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %13, i32 112, i32 -16777216, i32 14)
  %15 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %16 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %15, i32 5892, i32 -1, i32 30464)
  %17 = load %struct.wifi_only_cfg*, %struct.wifi_only_cfg** %2, align 8
  %18 = call i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg* %17, i32 5888, i32 -1, i32 -1072758728)
  ret void
}

declare dso_local i32 @halwifionly_phy_set_bb_reg(%struct.wifi_only_cfg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
