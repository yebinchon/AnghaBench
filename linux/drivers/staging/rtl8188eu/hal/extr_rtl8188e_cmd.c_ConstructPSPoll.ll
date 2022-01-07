; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_cmd.c_ConstructPSPoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_cmd.c_ConstructPSPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i64 }

@WIFI_PSPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i32*)* @ConstructPSPoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConstructPSPoll(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.mlme_ext_info*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %8, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 0
  store %struct.mlme_ext_info* %15, %struct.mlme_ext_info** %9, align 8
  %16 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %16, i32 0, i32 1
  store %struct.wlan_bssid_ex* %17, %struct.wlan_bssid_ex** %11, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %7, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 2
  store i64* %21, i64** %10, align 8
  %22 = load i64*, i64** %10, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = call i32 @SetPwrMgt(i64* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @WIFI_PSPOLL, align 4
  %27 = call i32 @SetFrameSubType(i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %30 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 49152
  %33 = call i32 @SetDuration(i32* %28, i32 %32)
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %11, align 8
  %38 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ether_addr_copy(i32 %36, i32 %39)
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.adapter*, %struct.adapter** %4, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = call i32 @myid(i32* %45)
  %47 = call i32 @ether_addr_copy(i32 %43, i32 %46)
  %48 = load i32*, i32** %6, align 8
  store i32 16, i32* %48, align 4
  ret void
}

declare dso_local i32 @SetPwrMgt(i64*) #1

declare dso_local i32 @SetFrameSubType(i32*, i32) #1

declare dso_local i32 @SetDuration(i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @myid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
