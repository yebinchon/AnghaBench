; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_cmd.c_ConstructProbeRsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_cmd.c_ConstructProbeRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i64, i32, i32* }
%struct.ieee80211_hdr = type { i32, i32, i32, i64 }

@WIFI_PROBERSP = common dso_local global i32 0, align 4
@MAX_IE_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i32*, i32*, i32)* @ConstructProbeRsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConstructProbeRsp(%struct.adapter* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlme_ext_priv*, align 8
  %17 = alloca %struct.mlme_ext_info*, align 8
  %18 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  store %struct.mlme_ext_priv* %20, %struct.mlme_ext_priv** %16, align 8
  %21 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %16, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %21, i32 0, i32 0
  store %struct.mlme_ext_info* %22, %struct.mlme_ext_info** %17, align 8
  %23 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %17, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %23, i32 0, i32 0
  store %struct.wlan_bssid_ex* %24, %struct.wlan_bssid_ex** %18, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %26, %struct.ieee80211_hdr** %11, align 8
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = call i32* @myid(i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %18, align 8
  %31 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %14, align 8
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %33, i32 0, i32 3
  store i64* %34, i64** %12, align 8
  %35 = load i64*, i64** %12, align 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @ether_addr_copy(i32 %38, i32* %39)
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @ether_addr_copy(i32 %43, i32* %44)
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @ether_addr_copy(i32 %48, i32* %49)
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %52 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %51, i32 0)
  %53 = load i64*, i64** %12, align 8
  %54 = load i32, i32* @WIFI_PROBERSP, align 4
  %55 = call i32 @SetFrameSubType(i64* %53, i32 %54)
  store i32 4, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %7, align 8
  %60 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %18, align 8
  %61 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAX_IE_SZ, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %5
  br label %89

66:                                               ; preds = %5
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %18, align 8
  %69 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %18, align 8
  %72 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memcpy(i32* %67, i32 %70, i64 %73)
  %75 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %18, align 8
  %76 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %7, align 8
  %80 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %18, align 8
  %81 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %66, %65
  ret void
}

declare dso_local i32* @myid(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @SetSeqNum(%struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @SetFrameSubType(i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
