; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_update_ap_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_update_ap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { i32, i32, i32 }
%struct.mlme_priv = type { %struct.ht_priv, %struct.TYPE_3__ }
%struct.ht_priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sta_info = type { i32, i32, i32, i32, i32*, i32 }
%struct.wlan_bssid_ex = type { %struct.ht_priv* }

@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sta_info*)* @update_ap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ap_info(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  %8 = alloca %struct.ht_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_priv* %10, %struct.mlme_priv** %5, align 8
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %14, %struct.wlan_bssid_ex** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store %struct.mlme_ext_priv* %16, %struct.mlme_ext_priv** %7, align 8
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 0
  store %struct.ht_priv* %18, %struct.ht_priv** %8, align 8
  %19 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %25 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %24, i32 0, i32 0
  %26 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %27 = call i32 @rtw_get_rateset_len(%struct.ht_priv* %26)
  %28 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %34 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %33, i32 0, i32 0
  %35 = load %struct.ht_priv*, %struct.ht_priv** %34, align 8
  %36 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32* %32, %struct.ht_priv* %35, i32 %38)
  %40 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %41 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %2
  %45 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %46 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %55 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %44
  %57 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %58 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %67 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %78

71:                                               ; preds = %2
  %72 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %73 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %75 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %77 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %68
  %79 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %80 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %85 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %88 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %90 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %92 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %91, i32 0, i32 4
  store i32 0, i32* %92, align 8
  %93 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 2
  %95 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %96 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %95, i32 0, i32 0
  %97 = call i32 @memcpy(i32* %94, %struct.ht_priv* %96, i32 40)
  ret void
}

declare dso_local i32 @rtw_get_rateset_len(%struct.ht_priv*) #1

declare dso_local i32 @memcpy(i32*, %struct.ht_priv*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
