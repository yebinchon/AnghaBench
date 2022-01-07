; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_support_short_GI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_support_short_GI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, i32 }
%struct.ieee80211_ht_cap = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@HT_IOT_PEER_RALINK = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @support_short_GI(%struct.adapter* %0, %struct.ieee80211_ht_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ieee80211_ht_cap*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.mlme_ext_priv*, align 8
  %8 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.ieee80211_ht_cap* %1, %struct.ieee80211_ht_cap** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %7, align 8
  %11 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %12 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %11, i32 0, i32 1
  store %struct.mlme_ext_info* %12, %struct.mlme_ext_info** %8, align 8
  %13 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %8, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @_FAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %8, align 8
  %21 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HT_IOT_PEER_RALINK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @_FAIL, align 4
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %19
  %28 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HT_CHANNEL_WIDTH_40, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 6, i32 5
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %6, align 1
  %37 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__le16_to_cpu(i32 %39)
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 1, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @_SUCCESS, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @_FAIL, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %46, %25, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
