; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c__issue_probereq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c__issue_probereq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.mlme_priv, %struct.xmit_priv }
%struct.mlme_ext_priv = type { i32 }
%struct.mlme_priv = type { i64, i8* }
%struct.xmit_priv = type { i32 }
%struct.ndis_802_11_ssid = type { i32, i32* }
%struct.xmit_frame = type { i64, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i32 }
%struct.ieee80211_hdr = type { i8*, i8*, i8*, i64 }

@_FAIL = common dso_local global i32 0, align 4
@NumRates = common dso_local global i32 0, align 4
@__const._issue_probereq.bc_addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"+issue_probereq\0A\00", align 1
@WLANHDR_OFFSET = common dso_local global i32 0, align 4
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@WIFI_PROBEREQ = common dso_local global i32 0, align 4
@_SSID_IE_ = common dso_local global i32 0, align 4
@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_EXT_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_DSSET_IE_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"issuing probe_req, tx_len =%d\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.ndis_802_11_ssid*, i32*, i32, i32, i32)* @_issue_probereq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_issue_probereq(%struct.adapter* %0, %struct.ndis_802_11_ssid* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.ndis_802_11_ssid*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xmit_frame*, align 8
  %15 = alloca %struct.pkt_attrib*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ieee80211_hdr*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.xmit_priv*, align 8
  %23 = alloca %struct.mlme_priv*, align 8
  %24 = alloca %struct.mlme_ext_priv*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [6 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.ndis_802_11_ssid* %1, %struct.ndis_802_11_ssid** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %27 = load i32, i32* @_FAIL, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @NumRates, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %20, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  %32 = load %struct.adapter*, %struct.adapter** %7, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 3
  store %struct.xmit_priv* %33, %struct.xmit_priv** %22, align 8
  %34 = load %struct.adapter*, %struct.adapter** %7, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 2
  store %struct.mlme_priv* %35, %struct.mlme_priv** %23, align 8
  %36 = load %struct.adapter*, %struct.adapter** %7, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 1
  store %struct.mlme_ext_priv* %37, %struct.mlme_ext_priv** %24, align 8
  store i32 0, i32* %25, align 4
  %38 = bitcast [6 x i32]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([6 x i32]* @__const._issue_probereq.bc_addr to i8*), i64 24, i1 false)
  %39 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %40 = load i32, i32* @_drv_notice_, align 4
  %41 = call i32 @RT_TRACE(i32 %39, i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.xmit_priv*, %struct.xmit_priv** %22, align 8
  %43 = call %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv* %42)
  store %struct.xmit_frame* %43, %struct.xmit_frame** %14, align 8
  %44 = load %struct.xmit_frame*, %struct.xmit_frame** %14, align 8
  %45 = icmp ne %struct.xmit_frame* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %6
  br label %245

47:                                               ; preds = %6
  %48 = load %struct.xmit_frame*, %struct.xmit_frame** %14, align 8
  %49 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %48, i32 0, i32 1
  store %struct.pkt_attrib* %49, %struct.pkt_attrib** %15, align 8
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %52 = call i32 @update_mgntframe_attrib(%struct.adapter* %50, %struct.pkt_attrib* %51)
  %53 = load %struct.xmit_frame*, %struct.xmit_frame** %14, align 8
  %54 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @WLANHDR_OFFSET, align 4
  %57 = load i32, i32* @TXDESC_OFFSET, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @memset(i64 %55, i32 0, i32 %58)
  %60 = load %struct.xmit_frame*, %struct.xmit_frame** %14, align 8
  %61 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* @TXDESC_OFFSET, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %16, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = bitcast i8* %68 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %69, %struct.ieee80211_hdr** %17, align 8
  %70 = load %struct.adapter*, %struct.adapter** %7, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = call i8* @myid(i32* %71)
  store i8* %72, i8** %19, align 8
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 3
  store i64* %74, i64** %18, align 8
  %75 = load i64*, i64** %18, align 8
  store i64 0, i64* %75, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %47
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* @ETH_ALEN, align 8
  %84 = call i32 (i8*, ...) @memcpy(i8* %81, i32* %82, i64 %83)
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i64, i64* @ETH_ALEN, align 8
  %90 = call i32 (i8*, ...) @memcpy(i8* %87, i32* %88, i64 %89)
  br label %104

91:                                               ; preds = %47
  %92 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  %96 = load i64, i64* @ETH_ALEN, align 8
  %97 = call i32 (i8*, ...) @memcpy(i8* %94, i32* %95, i64 %96)
  %98 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  %102 = load i64, i64* @ETH_ALEN, align 8
  %103 = call i32 (i8*, ...) @memcpy(i8* %100, i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %91, %78
  %105 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = load i64, i64* @ETH_ALEN, align 8
  %110 = call i32 (i8*, ...) @memcpy(i8* %107, i8* %108, i64 %109)
  %111 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %112 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %24, align 8
  %113 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %111, i32 %114)
  %116 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %24, align 8
  %117 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = load i32, i32* @WIFI_PROBEREQ, align 4
  %122 = call i32 @SetFrameSubType(i8* %120, i32 %121)
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  store i8* %124, i8** %16, align 8
  %125 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %126 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %125, i32 0, i32 0
  store i32 4, i32* %126, align 4
  %127 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %8, align 8
  %128 = icmp ne %struct.ndis_802_11_ssid* %127, null
  br i1 %128, label %129, label %141

129:                                              ; preds = %104
  %130 = load i8*, i8** %16, align 8
  %131 = load i32, i32* @_SSID_IE_, align 4
  %132 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %8, align 8
  %133 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %8, align 8
  %136 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %139 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %138, i32 0, i32 0
  %140 = call i8* (i8*, i32, i32, ...) @rtw_set_ie(i8* %130, i32 %131, i32 %134, i32* %137, i32* %139)
  store i8* %140, i8** %16, align 8
  br label %147

141:                                              ; preds = %104
  %142 = load i8*, i8** %16, align 8
  %143 = load i32, i32* @_SSID_IE_, align 4
  %144 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %145 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %144, i32 0, i32 0
  %146 = call i8* (i8*, i32, i32, ...) @rtw_set_ie(i8* %142, i32 %143, i32 0, i8* null, i32* %145)
  store i8* %146, i8** %16, align 8
  br label %147

147:                                              ; preds = %141, %129
  %148 = load %struct.adapter*, %struct.adapter** %7, align 8
  %149 = call i32 @get_rate_set(%struct.adapter* %148, i8* %31, i32* %25)
  %150 = load i32, i32* %25, align 4
  %151 = icmp sgt i32 %150, 8
  br i1 %151, label %152, label %166

152:                                              ; preds = %147
  %153 = load i8*, i8** %16, align 8
  %154 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %155 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %156 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %155, i32 0, i32 0
  %157 = call i8* (i8*, i32, i32, ...) @rtw_set_ie(i8* %153, i32 %154, i32 8, i8* %31, i32* %156)
  store i8* %157, i8** %16, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = load i32, i32* @_EXT_SUPPORTEDRATES_IE_, align 4
  %160 = load i32, i32* %25, align 4
  %161 = sub nsw i32 %160, 8
  %162 = getelementptr inbounds i8, i8* %31, i64 8
  %163 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %164 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %163, i32 0, i32 0
  %165 = call i8* (i8*, i32, i32, ...) @rtw_set_ie(i8* %158, i32 %159, i32 %161, i8* %162, i32* %164)
  store i8* %165, i8** %16, align 8
  br label %173

166:                                              ; preds = %147
  %167 = load i8*, i8** %16, align 8
  %168 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %169 = load i32, i32* %25, align 4
  %170 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %171 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %170, i32 0, i32 0
  %172 = call i8* (i8*, i32, i32, ...) @rtw_set_ie(i8* %167, i32 %168, i32 %169, i8* %31, i32* %171)
  store i8* %172, i8** %16, align 8
  br label %173

173:                                              ; preds = %166, %152
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i8*, i8** %16, align 8
  %178 = load i32, i32* @_DSSET_IE_, align 4
  %179 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %180 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %179, i32 0, i32 0
  %181 = call i8* (i8*, i32, i32, ...) @rtw_set_ie(i8* %177, i32 %178, i32 1, i32* %10, i32* %180)
  store i8* %181, i8** %16, align 8
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %219

185:                                              ; preds = %182
  %186 = load %struct.mlme_priv*, %struct.mlme_priv** %23, align 8
  %187 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %185
  %191 = load %struct.mlme_priv*, %struct.mlme_priv** %23, align 8
  %192 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %218

195:                                              ; preds = %190
  %196 = load i8*, i8** %16, align 8
  %197 = load %struct.mlme_priv*, %struct.mlme_priv** %23, align 8
  %198 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.mlme_priv*, %struct.mlme_priv** %23, align 8
  %201 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 (i8*, ...) @memcpy(i8* %196, i8* %199, i64 %202)
  %204 = load %struct.mlme_priv*, %struct.mlme_priv** %23, align 8
  %205 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 %206
  store i8* %208, i8** %16, align 8
  %209 = load %struct.mlme_priv*, %struct.mlme_priv** %23, align 8
  %210 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %213 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %211
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 4
  br label %218

218:                                              ; preds = %195, %190, %185
  br label %219

219:                                              ; preds = %218, %182
  %220 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %221 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %224 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %226 = load i32, i32* @_drv_notice_, align 4
  %227 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %228 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = call i32 @RT_TRACE(i32 %225, i32 %226, i8* %231)
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %219
  %236 = load %struct.adapter*, %struct.adapter** %7, align 8
  %237 = load %struct.xmit_frame*, %struct.xmit_frame** %14, align 8
  %238 = call i32 @dump_mgntframe_and_wait_ack(%struct.adapter* %236, %struct.xmit_frame* %237)
  store i32 %238, i32* %13, align 4
  br label %244

239:                                              ; preds = %219
  %240 = load %struct.adapter*, %struct.adapter** %7, align 8
  %241 = load %struct.xmit_frame*, %struct.xmit_frame** %14, align 8
  %242 = call i32 @dump_mgntframe(%struct.adapter* %240, %struct.xmit_frame* %241)
  %243 = load i32, i32* @_SUCCESS, align 4
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %239, %235
  br label %245

245:                                              ; preds = %244, %46
  %246 = load i32, i32* %13, align 4
  %247 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %247)
  ret i32 %246
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #3

declare dso_local %struct.xmit_frame* @alloc_mgtxmitframe(%struct.xmit_priv*) #3

declare dso_local i32 @update_mgntframe_attrib(%struct.adapter*, %struct.pkt_attrib*) #3

declare dso_local i32 @memset(i64, i32, i32) #3

declare dso_local i8* @myid(i32*) #3

declare dso_local i32 @memcpy(i8*, ...) #3

declare dso_local i32 @SetSeqNum(%struct.ieee80211_hdr*, i32) #3

declare dso_local i32 @SetFrameSubType(i8*, i32) #3

declare dso_local i8* @rtw_set_ie(i8*, i32, i32, ...) #3

declare dso_local i32 @get_rate_set(%struct.adapter*, i8*, i32*) #3

declare dso_local i32 @dump_mgntframe_and_wait_ack(%struct.adapter*, %struct.xmit_frame*) #3

declare dso_local i32 @dump_mgntframe(%struct.adapter*, %struct.xmit_frame*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
