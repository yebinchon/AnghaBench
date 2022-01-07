; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_sta_support_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_sta_support_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ndis_80211_var_ie = type { i32 }

@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_EXT_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_sta_support_rate(%struct.adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ndis_80211_var_ie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlme_ext_priv*, align 8
  %14 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store %struct.mlme_ext_priv* %16, %struct.mlme_ext_priv** %13, align 8
  %17 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %13, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %17, i32 0, i32 0
  store %struct.mlme_ext_info* %18, %struct.mlme_ext_info** %14, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @rtw_get_ie(i32* %19, i32 %20, i32* %10, i32 %21)
  %23 = inttoptr i64 %22 to %struct.ndis_80211_var_ie*
  store %struct.ndis_80211_var_ie* %23, %struct.ndis_80211_var_ie** %11, align 8
  %24 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %25 = icmp ne %struct.ndis_80211_var_ie* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @_FAIL, align 4
  store i32 %27, i32* %5, align 4
  br label %69

28:                                               ; preds = %4
  %29 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %14, align 8
  %30 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %38 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @memcpy(i64 %36, i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @_EXT_SUPPORTEDRATES_IE_, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @rtw_get_ie(i32* %43, i32 %44, i32* %10, i32 %45)
  %47 = inttoptr i64 %46 to %struct.ndis_80211_var_ie*
  store %struct.ndis_80211_var_ie* %47, %struct.ndis_80211_var_ie** %11, align 8
  %48 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %49 = icmp ne %struct.ndis_80211_var_ie* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %28
  %51 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %14, align 8
  %52 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %63 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @memcpy(i64 %61, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %50, %28
  %68 = load i32, i32* @_SUCCESS, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %26
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @rtw_get_ie(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
