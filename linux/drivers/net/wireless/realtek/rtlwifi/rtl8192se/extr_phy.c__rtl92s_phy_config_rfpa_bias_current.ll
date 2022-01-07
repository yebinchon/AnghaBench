; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_config_rfpa_bias_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_config_rfpa_bias_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i64 }

@IC_INFERIORITY_A = common dso_local global i64 0, align 8
@RF_IPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92s_phy_config_rfpa_bias_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_phy_config_rfpa_bias_current(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(i32 %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %5, align 8
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IC_INFERIORITY_A, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RF_IPA, align 4
  %20 = call i64 @rtl92s_phy_query_rf_reg(%struct.ieee80211_hw* %17, i32 %18, i32 %19, i32 15)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RF_IPA, align 4
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @rtl92s_phy_set_rf_reg(%struct.ieee80211_hw* %21, i32 %22, i32 %23, i32 15, i64 %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl92s_phy_query_rf_reg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92s_phy_set_rf_reg(%struct.ieee80211_hw*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
