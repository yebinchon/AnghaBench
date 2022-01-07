; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c__issue_deauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c__issue_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.xmit_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { i64, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i64 }

@_FAIL = common dso_local global i32 0, align 4
@WLANHDR_OFFSET = common dso_local global i32 0, align 4
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
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
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  store %struct.xmit_priv* %20, %struct.xmit_priv** %14, align 8
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  store %struct.mlme_ext_priv* %22, %struct.mlme_ext_priv** %15, align 8
  %23 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %23, i32 0, i32 1
  store %struct.mlme_ext_info* %24, %struct.mlme_ext_info** %16, align 8
  %25 = load i32, i32* @_FAIL, align 4
  store i32 %25, i32* %17, align 4
  %26 = load %struct.xmit_priv*, %struct.xmit_priv** %14, align 8
  %27 = call %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv* %26)
  store %struct.xmit_frame* %27, %struct.xmit_frame** %9, align 8
  %28 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %29 = icmp eq %struct.xmit_frame* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %121

31:                                               ; preds = %4
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %33 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %32, i32 0, i32 1
  store %struct.pkt_attrib* %33, %struct.pkt_attrib** %10, align 8
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %36 = call i32 @update_mgntframe_attrib(%struct.adapter* %34, %struct.pkt_attrib* %35)
  %37 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %38 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %40 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @WLANHDR_OFFSET, align 4
  %43 = load i32, i32* @TXDESC_OFFSET, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @memset(i64 %41, i32 0, i32 %44)
  %46 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %47 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i32, i32* @TXDESC_OFFSET, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i8* %53 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %54, %struct.ieee80211_hdr** %12, align 8
  %55 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %55, i32 0, i32 3
  store i64* %56, i64** %13, align 8
  %57 = load i64*, i64** %13, align 8
  store i64 0, i64* %57, align 8
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %60, i8* %61, i32 %62)
  %64 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.adapter*, %struct.adapter** %5, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = call i8* @myid(i32* %68)
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = call i32 @memcpy(i32 %66, i8* %69, i32 %70)
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %76 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %75, i32 0, i32 0
  %77 = call i8* @get_my_bssid(i32* %76)
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i32 @memcpy(i32 %74, i8* %77, i32 %78)
  %80 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %81 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %82 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %80, i32 %83)
  %85 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %86 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
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
  store i64 %97, i64* %18, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* @_RSON_CODE_, align 4
  %100 = bitcast i64* %18 to i8*
  %101 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %102 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %101, i32 0, i32 1
  %103 = call i8* @rtw_set_fixed_ie(i8* %98, i32 %99, i8* %100, i32* %102)
  store i8* %103, i8** %11, align 8
  %104 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %105 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %108 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %31
  %112 = load %struct.adapter*, %struct.adapter** %5, align 8
  %113 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %114 = call i32 @dump_mgntframe_and_wait_ack(%struct.adapter* %112, %struct.xmit_frame* %113)
  store i32 %114, i32* %17, align 4
  br label %120

115:                                              ; preds = %31
  %116 = load %struct.adapter*, %struct.adapter** %5, align 8
  %117 = load %struct.xmit_frame*, %struct.xmit_frame** %9, align 8
  %118 = call i32 @dump_mgntframe(%struct.adapter* %116, %struct.xmit_frame* %117)
  %119 = load i32, i32* @_SUCCESS, align 4
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %115, %111
  br label %121

121:                                              ; preds = %120, %30
  %122 = load i32, i32* %17, align 4
  ret i32 %122
}

declare dso_local %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv*) #1

declare dso_local i32 @update_mgntframe_attrib(%struct.adapter*, %struct.pkt_attrib*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @myid(i32*) #1

declare dso_local i8* @get_my_bssid(i32*) #1

declare dso_local i32 @SetSeqNum(%struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @SetFrameSubType(i8*, i32) #1

declare dso_local i64 @cpu_to_le16(i16 zeroext) #1

declare dso_local i8* @rtw_set_fixed_ie(i8*, i32, i8*, i32*) #1

declare dso_local i32 @dump_mgntframe_and_wait_ack(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @dump_mgntframe(%struct.adapter*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
