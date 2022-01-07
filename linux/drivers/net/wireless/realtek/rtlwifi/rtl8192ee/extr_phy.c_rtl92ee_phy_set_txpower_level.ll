; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_set_txpower_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_set_txpower_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32 }
%struct.rtl_phy = type { i32 }
%struct.TYPE_3__ = type { %struct.rtl_phy }

@RF90_PATH_A = common dso_local global i32 0, align 4
@CCK = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_phy_set_txpower_level(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.TYPE_3__* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_3__* %9)
  store %struct.rtl_efuse* %10, %struct.rtl_efuse** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.TYPE_3__* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %6, align 8
  %14 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  %20 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %54, %19
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CCK, align 4
  %32 = call i32 @phy_set_txpower_index_by_rate_section(%struct.ieee80211_hw* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @OFDM, align 4
  %37 = call i32 @phy_set_txpower_index_by_rate_section(%struct.ieee80211_hw* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @HT_MCS0_MCS7, align 4
  %42 = call i32 @phy_set_txpower_index_by_rate_section(%struct.ieee80211_hw* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %53

47:                                               ; preds = %27
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @HT_MCS8_MCS15, align 4
  %52 = call i32 @phy_set_txpower_index_by_rate_section(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %27
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %21

57:                                               ; preds = %18, %21
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @phy_set_txpower_index_by_rate_section(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
