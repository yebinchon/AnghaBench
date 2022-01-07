; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_make_del_ba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_make_del_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32* }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__, i8*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_BACK = common dso_local global i32 0, align 4
@WLAN_ACTION_DELBA = common dso_local global i32 0, align 4
@WLAN_REASON_QSTA_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @rtl_make_del_ba(%struct.ieee80211_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_efuse*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_mgmt*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %15 = call i32 @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_efuse* @rtl_efuse(i32 %15)
  store %struct.rtl_efuse* %16, %struct.rtl_efuse** %10, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 34, %19
  %21 = call %struct.sk_buff* @dev_alloc_skb(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %92

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @skb_reserve(%struct.sk_buff* %26, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %31, i32 34)
  store %struct.ieee80211_mgmt* %32, %struct.ieee80211_mgmt** %12, align 8
  %33 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %34 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %35, i32* %36, i32 %37)
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rtl_efuse*, %struct.rtl_efuse** %10, align 8
  %43 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i32 %41, i32* %44, i32 %45)
  %47 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %48 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32 %49, i32* %50, i32 %51)
  %53 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %54 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @WLAN_CATEGORY_BACK, align 4
  %60 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* @WLAN_ACTION_DELBA, align 4
  %65 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 %64, i32* %70, align 8
  store i32 2048, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 12
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %78 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i8* %76, i8** %82, align 8
  %83 = load i32, i32* @WLAN_REASON_QSTA_TIMEOUT, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i8* %84, i8** %90, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %91, %struct.sk_buff** %5, align 8
  br label %92

92:                                               ; preds = %25, %24
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %93
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
