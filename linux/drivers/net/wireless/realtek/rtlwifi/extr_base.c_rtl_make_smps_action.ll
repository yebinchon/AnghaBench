; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_make_smps_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_make_smps_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32* }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_HT = common dso_local global i32 0, align 4
@WLAN_HT_ACTION_SMPS = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_DISABLED = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_STATIC = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ieee80211_hw*, i32, i32*, i32*)* @rtl_make_smps_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtl_make_smps_action(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rtl_efuse*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = call i32 @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_efuse* @rtl_efuse(i32 %14)
  store %struct.rtl_efuse* %15, %struct.rtl_efuse** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 27, %18
  %20 = call %struct.sk_buff* @dev_alloc_skb(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %99

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @skb_reserve(%struct.sk_buff* %25, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %30, i32 27)
  store %struct.ieee80211_mgmt* %31, %struct.ieee80211_mgmt** %12, align 8
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtl_efuse*, %struct.rtl_efuse** %10, align 8
  %42 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(i32 %40, i32* %43, i32 %44)
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %48, i32* %49, i32 %50)
  %52 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %53 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %57 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @WLAN_CATEGORY_HT, align 4
  %59 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @WLAN_HT_ACTION_SMPS, align 4
  %64 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %97 [
    i32 132, label %71
    i32 130, label %71
    i32 129, label %73
    i32 128, label %81
    i32 131, label %89
  ]

71:                                               ; preds = %24, %24
  %72 = call i32 @WARN_ON(i32 1)
  br label %73

73:                                               ; preds = %24, %71
  %74 = load i32, i32* @WLAN_HT_SMPS_CONTROL_DISABLED, align 4
  %75 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 4
  br label %97

81:                                               ; preds = %24
  %82 = load i32, i32* @WLAN_HT_SMPS_CONTROL_STATIC, align 4
  %83 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %84 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 4
  br label %97

89:                                               ; preds = %24
  %90 = load i32, i32* @WLAN_HT_SMPS_CONTROL_DYNAMIC, align 4
  %91 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %92 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %24, %89, %81, %73
  %98 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %98, %struct.sk_buff** %5, align 8
  br label %99

99:                                               ; preds = %97, %23
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %100
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
