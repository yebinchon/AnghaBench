; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_cfg80211_check_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_cfg80211_check_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.ieee80211_channel = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_cfg80211_check_bss(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.wlan_bssid_ex* %11, %struct.wlan_bssid_ex** %4, align 8
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %5, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %6, align 8
  %12 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %13 = icmp ne %struct.wlan_bssid_ex* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %22 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %26 = call i32 @rtw_ieee80211_channel_to_frequency(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %31, i32 %32)
  store %struct.ieee80211_channel* %33, %struct.ieee80211_channel** %6, align 8
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %40 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %41 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %44 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %48 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %52 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %53 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %38, %struct.ieee80211_channel* %39, i32 %42, i32 %46, i32 %50, i32 %51, i32 %52)
  store %struct.cfg80211_bss* %53, %struct.cfg80211_bss** %5, align 8
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %60 = call i32 @cfg80211_put_bss(i32 %58, %struct.cfg80211_bss* %59)
  %61 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %62 = icmp ne %struct.cfg80211_bss* %61, null
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %20, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @rtw_ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, %struct.ieee80211_channel*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
