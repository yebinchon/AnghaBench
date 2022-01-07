; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c_rtl92cu_phy_rf6052_set_ofdm_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c_rtl92cu_phy_rf6052_set_ofdm_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_phy_rf6052_set_ofdm_txpower(%struct.ieee80211_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %16 = call i32 @rtl92c_phy_get_power_base(%struct.ieee80211_hw* %11, i32* %12, i32 %13, i32* %14, i32* %15)
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %32, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = call i32 @_rtl92c_get_txpower_writeval_by_regulatory(%struct.ieee80211_hw* %21, i32 %22, i32 %23, i32* %24, i32* %25, i32* %26)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = call i32 @_rtl92c_write_ofdm_power_reg(%struct.ieee80211_hw* %28, i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %17

35:                                               ; preds = %17
  ret void
}

declare dso_local i32 @rtl92c_phy_get_power_base(%struct.ieee80211_hw*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl92c_get_txpower_writeval_by_regulatory(%struct.ieee80211_hw*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_rtl92c_write_ofdm_power_reg(%struct.ieee80211_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
