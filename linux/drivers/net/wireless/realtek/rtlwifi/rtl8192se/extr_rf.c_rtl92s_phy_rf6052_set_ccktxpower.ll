; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c_rtl92s_phy_rf6052_set_ccktxpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c_rtl92s_phy_rf6052_set_ccktxpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i32, i32, i64 }

@TX_HIGH_PWR_LEVEL_LEVEL1 = common dso_local global i64 0, align 8
@TX_HIGH_PWR_LEVEL_LEVEL2 = common dso_local global i64 0, align 8
@RF6052_MAX_TX_PWR = common dso_local global i32 0, align 4
@RTXAGC_CCK_MCS32 = common dso_local global i32 0, align 4
@BTX_AGCRATECCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_rf6052_set_ccktxpower(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca %struct.rtl_efuse*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %13)
  store %struct.rtl_mac* %14, %struct.rtl_mac** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %16)
  store %struct.rtl_efuse* %17, %struct.rtl_efuse** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %19 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %24 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %37, label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %29 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %34 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %22
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %32, %27
  %39 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %40 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  store i32 63, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %43
  br label %68

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TX_HIGH_PWR_LEVEL_LEVEL1, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 16, i32* %8, align 4
  br label %67

58:                                               ; preds = %49
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TX_HIGH_PWR_LEVEL_LEVEL2, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = load i32, i32* @RTXAGC_CCK_MCS32, align 4
  %77 = load i32, i32* @BTX_AGCRATECCK, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %75, i32 %76, i32 %77, i32 %78)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
