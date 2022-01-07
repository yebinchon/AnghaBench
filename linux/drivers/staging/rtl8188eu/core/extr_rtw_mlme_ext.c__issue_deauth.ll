; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c__issue_deauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c__issue_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.xmit_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i8* }
%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { i64, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i64 }

@_FAIL = common dso_local global i32 0, align 4
@WLANHDR_OFFSET = common dso_local global i32 0, align 4
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@WIFI_DEAUTH = common dso_local global i32 0, align 4
@_RSON_CODE_ = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8*, i16, i32)* @_issue_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_issue_deauth(%struct.adapter* %0, i8* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.xmit_frame*, align 8
  %10 = alloca %struct.pkt_attrib*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.xmit_priv*, align 8
  %15 = alloca %struct.mlme_ext_priv*, align 8
  %16 = alloca %struct.mlme_ext_info*, align 8
  %17 = alloca %struct.wlan_bssid_ex*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 2
  store %struct.xmit_priv* %21, %struct.xmit_priv** %14, align 8
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  store %struct.mlme_ext_priv* %23, %struct.mlme_ext_priv** %15, align 8
  %24 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %25 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %24, i32 0, i32 1
  store %struct.mlme_ext_info* %25, %struct.mlme_ext_info** %16, align 8
  %26 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %27 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %26, i32 0, i32 0
  store %struct.wlan_bssid_ex* %27, %struct.wlan_bssid_ex** %17, align 8
  %28 = load i32, i32* @_FAIL, align 4
  store i32 %28, i32* %18, align 4
  %29 = load %struct.xmit_priv*, %struct.xmit_priv** %14, align 8
  %30 = call %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv* %29)
  store %struct.xmit_frame* %30, %struct.xmit_frame** %9, align 8
  %31 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %32 = icmp eq %struct.xmit_frame* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %120

34:                                               ; preds = %4
  %35 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %36 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %35, i32 0, i32 1
  store %struct.pkt_attrib* %36, %struct.pkt_attrib** %10, align 8
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %39 = call i32 @update_mgntframe_attrib(%struct.adapter* %37, %struct.pkt_attrib* %38)
  %40 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %41 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %43 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @WLANHDR_OFFSET, align 4
  %46 = load i32, i32* @TXDESC_OFFSET, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @memset(i64 %44, i32 0, i32 %47)
  %49 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %50 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32, i32* @TXDESC_OFFSET, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = bitcast i8* %56 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %57, %struct.ieee80211_hdr** %12, align 8
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 3
  store i64* %59, i64** %13, align 8
  %60 = load i64*, i64** %13, align 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @ether_addr_copy(i32 %63, i8* %64)
  %66 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.adapter*, %struct.adapter** %5, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = call i8* @myid(i32* %70)
  %72 = call i32 @ether_addr_copy(i32 %68, i8* %71)
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %17, align 8
  %77 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @ether_addr_copy(i32 %75, i8* %78)
  %80 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %81 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %82 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %80, i32 %83)
  %85 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %86 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @WIFI_DEAUTH, align 4
  %91 = call i32 @SetFrameSubType(i8* %89, i32 %90)
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  store i8* %93, i8** %11, align 8
  %94 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %95 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %94, i32 0, i32 1
  store i32 4, i32* %95, align 4
  %96 = load i16, i16* %7, align 2
  %97 = call i64 @cpu_to_le16(i16 zeroext %96)
  store i64 %97, i64* %19, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* @_RSON_CODE_, align 4
  %100 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %101 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %100, i32 0, i32 1
  %102 = call i8* @rtw_set_fixed_ie(i8* %98, i32 %99, i64* %19, i32* %101)
  store i8* %102, i8** %11, align 8
  %103 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %104 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %107 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %34
  %111 = load %struct.adapter*, %struct.adapter** %5, align 8
  %112 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %113 = call i32 @dump_mgntframe_and_wait_ack(%struct.adapter* %111, %struct.xmit_frame* %112)
  store i32 %113, i32* %18, align 4
  br label %119

114:                                              ; preds = %34
  %115 = load %struct.adapter*, %struct.adapter** %5, align 8
  %116 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %117 = call i32 @dump_mgntframe(%struct.adapter* %115, %struct.xmit_frame* %116)
  %118 = load i32, i32* @_SUCCESS, align 4
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %114, %110
  br label %120

120:                                              ; preds = %119, %33
  %121 = load i32, i32* %18, align 4
  ret i32 %121
}

declare dso_local %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv*) #1

declare dso_local i32 @update_mgntframe_attrib(%struct.adapter*, %struct.pkt_attrib*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i8* @myid(i32*) #1

declare dso_local i32 @SetSeqNum(%struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @SetFrameSubType(i8*, i32) #1

declare dso_local i64 @cpu_to_le16(i16 zeroext) #1

declare dso_local i8* @rtw_set_fixed_ie(i8*, i32, i64*, i32*) #1

declare dso_local i32 @dump_mgntframe_and_wait_ack(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @dump_mgntframe(%struct.adapter*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
