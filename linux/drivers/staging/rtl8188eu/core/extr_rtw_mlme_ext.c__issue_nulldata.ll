; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c__issue_nulldata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c__issue_nulldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.xmit_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i8* }
%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { i64, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i64 }

@_FAIL = common dso_local global i32 0, align 4
@WLANHDR_OFFSET = common dso_local global i32 0, align 4
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@WIFI_FW_AP_STATE = common dso_local global i32 0, align 4
@WIFI_FW_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_DATA_NULL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8*, i32, i32)* @_issue_nulldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_issue_nulldata(%struct.adapter* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xmit_frame*, align 8
  %11 = alloca %struct.pkt_attrib*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.xmit_priv*, align 8
  %16 = alloca %struct.mlme_ext_priv*, align 8
  %17 = alloca %struct.mlme_ext_info*, align 8
  %18 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @_FAIL, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = icmp ne %struct.adapter* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %143

23:                                               ; preds = %4
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  store %struct.xmit_priv* %25, %struct.xmit_priv** %15, align 8
  %26 = load %struct.adapter*, %struct.adapter** %5, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  store %struct.mlme_ext_priv* %27, %struct.mlme_ext_priv** %16, align 8
  %28 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %16, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %28, i32 0, i32 1
  store %struct.mlme_ext_info* %29, %struct.mlme_ext_info** %17, align 8
  %30 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %17, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %30, i32 0, i32 1
  store %struct.wlan_bssid_ex* %31, %struct.wlan_bssid_ex** %18, align 8
  %32 = load %struct.xmit_priv*, %struct.xmit_priv** %15, align 8
  %33 = call %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv* %32)
  store %struct.xmit_frame* %33, %struct.xmit_frame** %10, align 8
  %34 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %35 = icmp ne %struct.xmit_frame* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  br label %143

37:                                               ; preds = %23
  %38 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %39 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %38, i32 0, i32 1
  store %struct.pkt_attrib* %39, %struct.pkt_attrib** %11, align 8
  %40 = load %struct.adapter*, %struct.adapter** %5, align 8
  %41 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %42 = call i32 @update_mgntframe_attrib(%struct.adapter* %40, %struct.pkt_attrib* %41)
  %43 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %44 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %46 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @WLANHDR_OFFSET, align 4
  %49 = load i32, i32* @TXDESC_OFFSET, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @memset(i64 %47, i32 0, i32 %50)
  %52 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %53 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i32, i32* @TXDESC_OFFSET, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = bitcast i8* %59 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %60, %struct.ieee80211_hdr** %13, align 8
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 3
  store i64* %62, i64** %14, align 8
  %63 = load i64*, i64** %14, align 8
  store i64 0, i64* %63, align 8
  %64 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %17, align 8
  %65 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 3
  %68 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %37
  %71 = load i64*, i64** %14, align 8
  %72 = call i32 @SetFrDs(i64* %71)
  br label %84

73:                                               ; preds = %37
  %74 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %17, align 8
  %75 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 3
  %78 = load i32, i32* @WIFI_FW_STATION_STATE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i64*, i64** %14, align 8
  %82 = call i32 @SetToDs(i64* %81)
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64*, i64** %14, align 8
  %89 = call i32 @SetPwrMgt(i64* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @ether_addr_copy(i32 %93, i8* %94)
  %96 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %97 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.adapter*, %struct.adapter** %5, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 0
  %101 = call i8* @myid(i32* %100)
  %102 = call i32 @ether_addr_copy(i32 %98, i8* %101)
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %18, align 8
  %107 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @ether_addr_copy(i32 %105, i8* %108)
  %110 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %111 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %16, align 8
  %112 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %110, i32 %113)
  %115 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %16, align 8
  %116 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* @WIFI_DATA_NULL, align 4
  %121 = call i32 @SetFrameSubType(i8* %119, i32 %120)
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  store i8* %123, i8** %12, align 8
  %124 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %125 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %124, i32 0, i32 1
  store i32 4, i32* %125, align 4
  %126 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %127 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %130 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %90
  %134 = load %struct.adapter*, %struct.adapter** %5, align 8
  %135 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %136 = call i32 @dump_mgntframe_and_wait_ack(%struct.adapter* %134, %struct.xmit_frame* %135)
  store i32 %136, i32* %9, align 4
  br label %142

137:                                              ; preds = %90
  %138 = load %struct.adapter*, %struct.adapter** %5, align 8
  %139 = load %struct.xmit_frame*, %struct.xmit_frame** %10, align 8
  %140 = call i32 @dump_mgntframe(%struct.adapter* %138, %struct.xmit_frame* %139)
  %141 = load i32, i32* @_SUCCESS, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %137, %133
  br label %143

143:                                              ; preds = %142, %36, %22
  %144 = load i32, i32* %9, align 4
  ret i32 %144
}

declare dso_local %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv*) #1

declare dso_local i32 @update_mgntframe_attrib(%struct.adapter*, %struct.pkt_attrib*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @SetFrDs(i64*) #1

declare dso_local i32 @SetToDs(i64*) #1

declare dso_local i32 @SetPwrMgt(i64*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i8* @myid(i32*) #1

declare dso_local i32 @SetSeqNum(%struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @SetFrameSubType(i8*, i32) #1

declare dso_local i32 @dump_mgntframe_and_wait_ack(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @dump_mgntframe(%struct.adapter*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
