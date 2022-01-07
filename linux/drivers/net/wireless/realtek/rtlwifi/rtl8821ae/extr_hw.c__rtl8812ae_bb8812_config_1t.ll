; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8812ae_bb8812_config_1t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8812ae_bb8812_config_1t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@MASKLWORD = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8812ae_bb8812_config_1t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_bb8812_config_1t(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %3 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %4 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %3, i32 2056, i32 255, i32 17)
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = load i32, i32* @MASKLWORD, align 4
  %7 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %5, i32 2060, i32 %6, i32 4369)
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %8, i32 2564, i32 201326592, i32 0)
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %10, i32 2236, i32 -1073741728, i32 4)
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %12, i32 3584, i32 15, i32 4)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = load i32, i32* @MASKDWORD, align 4
  %16 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %14, i32 3728, i32 %15, i32 0)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = load i32, i32* @MASKDWORD, align 4
  %19 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %17, i32 3680, i32 %18, i32 0)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = load i32, i32* @MASKDWORD, align 4
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %20, i32 3684, i32 %21, i32 0)
  ret void
}

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
