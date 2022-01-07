; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_cfg80211_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_cfg80211_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i8*, i32*, i8*, i32*, i8* }

@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@MAX_WPA_IE_LEN = common dso_local global i64 0, align 8
@MAX_WPS_IE_LEN = common dso_local global i64 0, align 8
@MAX_P2P_IE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set wpa_ie(length:%zu):\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\0A\00", align 1
@RSN_HEADER_LEN = common dso_local global i64 0, align 8
@_module_rtl871x_ioctl_os_c = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Ie len too short %d\0A\00", align 1
@_SUCCESS = common dso_local global i64 0, align 8
@dot11AuthAlgrthm_8021X = common dso_local global i8* null, align 8
@Ndis802_11AuthModeWPAPSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"got wpa_ie, wpa_ielen:%u\0A\00", align 1
@Ndis802_11AuthModeWPA2PSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"got wpa2_ie, wpa2_ielen:%u\0A\00", align 1
@_NO_PRIVACY_ = common dso_local global i8* null, align 8
@Ndis802_11EncryptionDisabled = common dso_local global i8* null, align 8
@_WEP40_ = common dso_local global i8* null, align 8
@Ndis802_11Encryption1Enabled = common dso_local global i8* null, align 8
@_TKIP_ = common dso_local global i64 0, align 8
@Ndis802_11Encryption2Enabled = common dso_local global i8* null, align 8
@_AES_ = common dso_local global i64 0, align 8
@Ndis802_11Encryption3Enabled = common dso_local global i8* null, align 8
@_WEP104_ = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"got wps_ie, wps_ielen:%u\0A\00", align 1
@_TKIP_WTMIC_ = common dso_local global i64 0, align 8
@HW_VAR_OFF_RCR_AM = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [127 x i8] c"rtw_set_wpa_ie: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32*, i64)* @rtw_cfg80211_set_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_cfg80211_set_wpa_ie(%struct.adapter* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [6 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = bitcast [6 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 24, i1 false)
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %30 = call i32 @_clr_fwstate_(i32* %28, i32 %29)
  br label %395

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @MAX_WPA_IE_LEN, align 8
  %34 = load i64, i64* @MAX_WPS_IE_LEN, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* @MAX_P2P_IE_LEN, align 8
  %37 = add i64 %35, %36
  %38 = icmp ugt i64 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %395

42:                                               ; preds = %31
  %43 = load i64, i64* %6, align 8
  %44 = call i32* @rtw_zmalloc(i64 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %395

50:                                               ; preds = %42
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i32* %51, i32* %52, i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = call i32 (i8*, i64, ...) @DBG_8192C(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %56)
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %113, %50
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %116

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 5
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 7
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i64, ...) @DBG_8192C(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %69, i32 %75, i32 %81, i32 %87, i32 %93, i32 %99, i32 %105, i32 %111)
  br label %113

113:                                              ; preds = %63
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 8
  store i32 %115, i32* %17, align 4
  br label %58

116:                                              ; preds = %58
  %117 = load i32*, i32** %7, align 8
  store i32* %117, i32** %8, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @RSN_HEADER_LEN, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %123 = load i32, i32* @_drv_err_, align 4
  %124 = load i64, i64* %6, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @RT_TRACE(i32 %122, i32 %123, i8* %125)
  store i32 -1, i32* %11, align 4
  br label %395

127:                                              ; preds = %116
  %128 = load i32*, i32** %7, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i32* @rtw_get_wpa_ie(i32* %128, i32* %12, i64 %129)
  store i32* %130, i32** %14, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %165

133:                                              ; preds = %127
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %133
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 2
  %140 = call i64 @rtw_parse_wpa_ie(i32* %137, i32 %139, i32* %9, i32* %10, i32* null)
  %141 = load i64, i64* @_SUCCESS, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %164

143:                                              ; preds = %136
  %144 = load i8*, i8** @dot11AuthAlgrthm_8021X, align 8
  %145 = load %struct.adapter*, %struct.adapter** %4, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 7
  store i8* %144, i8** %147, align 8
  %148 = load i32, i32* @Ndis802_11AuthModeWPAPSK, align 4
  %149 = load %struct.adapter*, %struct.adapter** %4, align 8
  %150 = getelementptr inbounds %struct.adapter, %struct.adapter* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 8
  %152 = load %struct.adapter*, %struct.adapter** %4, align 8
  %153 = getelementptr inbounds %struct.adapter, %struct.adapter* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 2
  %160 = call i32 @memcpy(i32* %155, i32* %157, i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = call i32 (i8*, i64, ...) @DBG_8192C(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %162)
  br label %164

164:                                              ; preds = %143, %136
  br label %165

165:                                              ; preds = %164, %133, %127
  %166 = load i32*, i32** %7, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i32* @rtw_get_wpa2_ie(i32* %166, i32* %13, i64 %167)
  store i32* %168, i32** %15, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %203

171:                                              ; preds = %165
  %172 = load i32, i32* %13, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %203

174:                                              ; preds = %171
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 2
  %178 = call i64 @rtw_parse_wpa2_ie(i32* %175, i32 %177, i32* %9, i32* %10, i32* null)
  %179 = load i64, i64* @_SUCCESS, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %174
  %182 = load i8*, i8** @dot11AuthAlgrthm_8021X, align 8
  %183 = load %struct.adapter*, %struct.adapter** %4, align 8
  %184 = getelementptr inbounds %struct.adapter, %struct.adapter* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 7
  store i8* %182, i8** %185, align 8
  %186 = load i32, i32* @Ndis802_11AuthModeWPA2PSK, align 4
  %187 = load %struct.adapter*, %struct.adapter** %4, align 8
  %188 = getelementptr inbounds %struct.adapter, %struct.adapter* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 8
  %190 = load %struct.adapter*, %struct.adapter** %4, align 8
  %191 = getelementptr inbounds %struct.adapter, %struct.adapter* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 6
  %193 = load i32*, i32** %192, align 8
  %194 = load i32*, i32** %15, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, 2
  %198 = call i32 @memcpy(i32* %193, i32* %195, i32 %197)
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = call i32 (i8*, i64, ...) @DBG_8192C(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %200)
  br label %202

202:                                              ; preds = %181, %174
  br label %203

203:                                              ; preds = %202, %171, %165
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 131, i32* %9, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 131, i32* %10, align 4
  br label %211

211:                                              ; preds = %210, %207
  %212 = load i32, i32* %9, align 4
  switch i32 %212, label %260 [
    i32 131, label %213
    i32 128, label %222
    i32 130, label %231
    i32 132, label %241
    i32 129, label %251
  ]

213:                                              ; preds = %211
  %214 = load i8*, i8** @_NO_PRIVACY_, align 8
  %215 = load %struct.adapter*, %struct.adapter** %4, align 8
  %216 = getelementptr inbounds %struct.adapter, %struct.adapter* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 5
  store i8* %214, i8** %217, align 8
  %218 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %219 = load %struct.adapter*, %struct.adapter** %4, align 8
  %220 = getelementptr inbounds %struct.adapter, %struct.adapter* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 3
  store i8* %218, i8** %221, align 8
  br label %260

222:                                              ; preds = %211
  %223 = load i8*, i8** @_WEP40_, align 8
  %224 = load %struct.adapter*, %struct.adapter** %4, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 5
  store i8* %223, i8** %226, align 8
  %227 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %228 = load %struct.adapter*, %struct.adapter** %4, align 8
  %229 = getelementptr inbounds %struct.adapter, %struct.adapter* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 3
  store i8* %227, i8** %230, align 8
  br label %260

231:                                              ; preds = %211
  %232 = load i64, i64* @_TKIP_, align 8
  %233 = inttoptr i64 %232 to i8*
  %234 = load %struct.adapter*, %struct.adapter** %4, align 8
  %235 = getelementptr inbounds %struct.adapter, %struct.adapter* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 5
  store i8* %233, i8** %236, align 8
  %237 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %238 = load %struct.adapter*, %struct.adapter** %4, align 8
  %239 = getelementptr inbounds %struct.adapter, %struct.adapter* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 3
  store i8* %237, i8** %240, align 8
  br label %260

241:                                              ; preds = %211
  %242 = load i64, i64* @_AES_, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.adapter*, %struct.adapter** %4, align 8
  %245 = getelementptr inbounds %struct.adapter, %struct.adapter* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 5
  store i8* %243, i8** %246, align 8
  %247 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %248 = load %struct.adapter*, %struct.adapter** %4, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 3
  store i8* %247, i8** %250, align 8
  br label %260

251:                                              ; preds = %211
  %252 = load i8*, i8** @_WEP104_, align 8
  %253 = load %struct.adapter*, %struct.adapter** %4, align 8
  %254 = getelementptr inbounds %struct.adapter, %struct.adapter* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 5
  store i8* %252, i8** %255, align 8
  %256 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %257 = load %struct.adapter*, %struct.adapter** %4, align 8
  %258 = getelementptr inbounds %struct.adapter, %struct.adapter* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 3
  store i8* %256, i8** %259, align 8
  br label %260

260:                                              ; preds = %211, %251, %241, %231, %222, %213
  %261 = load i32, i32* %10, align 4
  switch i32 %261, label %310 [
    i32 131, label %262
    i32 128, label %272
    i32 130, label %282
    i32 132, label %291
    i32 129, label %300
  ]

262:                                              ; preds = %260
  %263 = load i8*, i8** @_NO_PRIVACY_, align 8
  %264 = ptrtoint i8* %263 to i64
  %265 = load %struct.adapter*, %struct.adapter** %4, align 8
  %266 = getelementptr inbounds %struct.adapter, %struct.adapter* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  store i64 %264, i64* %267, align 8
  %268 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %269 = load %struct.adapter*, %struct.adapter** %4, align 8
  %270 = getelementptr inbounds %struct.adapter, %struct.adapter* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 3
  store i8* %268, i8** %271, align 8
  br label %310

272:                                              ; preds = %260
  %273 = load i8*, i8** @_WEP40_, align 8
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.adapter*, %struct.adapter** %4, align 8
  %276 = getelementptr inbounds %struct.adapter, %struct.adapter* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  store i64 %274, i64* %277, align 8
  %278 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %279 = load %struct.adapter*, %struct.adapter** %4, align 8
  %280 = getelementptr inbounds %struct.adapter, %struct.adapter* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 3
  store i8* %278, i8** %281, align 8
  br label %310

282:                                              ; preds = %260
  %283 = load i64, i64* @_TKIP_, align 8
  %284 = load %struct.adapter*, %struct.adapter** %4, align 8
  %285 = getelementptr inbounds %struct.adapter, %struct.adapter* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  %287 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %288 = load %struct.adapter*, %struct.adapter** %4, align 8
  %289 = getelementptr inbounds %struct.adapter, %struct.adapter* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 3
  store i8* %287, i8** %290, align 8
  br label %310

291:                                              ; preds = %260
  %292 = load i64, i64* @_AES_, align 8
  %293 = load %struct.adapter*, %struct.adapter** %4, align 8
  %294 = getelementptr inbounds %struct.adapter, %struct.adapter* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  store i64 %292, i64* %295, align 8
  %296 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %297 = load %struct.adapter*, %struct.adapter** %4, align 8
  %298 = getelementptr inbounds %struct.adapter, %struct.adapter* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 3
  store i8* %296, i8** %299, align 8
  br label %310

300:                                              ; preds = %260
  %301 = load i8*, i8** @_WEP104_, align 8
  %302 = ptrtoint i8* %301 to i64
  %303 = load %struct.adapter*, %struct.adapter** %4, align 8
  %304 = getelementptr inbounds %struct.adapter, %struct.adapter* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  store i64 %302, i64* %305, align 8
  %306 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %307 = load %struct.adapter*, %struct.adapter** %4, align 8
  %308 = getelementptr inbounds %struct.adapter, %struct.adapter* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 3
  store i8* %306, i8** %309, align 8
  br label %310

310:                                              ; preds = %260, %300, %291, %282, %272, %262
  %311 = load i32*, i32** %7, align 8
  %312 = load i64, i64* %6, align 8
  %313 = call i32* @rtw_get_wps_ie(i32* %311, i64 %312, i32* null, i64* %18)
  store i32* %313, i32** %19, align 8
  %314 = load i32*, i32** %19, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %349

316:                                              ; preds = %310
  %317 = load i64, i64* %18, align 8
  %318 = icmp ugt i64 %317, 0
  br i1 %318, label %319, label %349

319:                                              ; preds = %316
  %320 = load i64, i64* %18, align 8
  %321 = call i32 (i8*, i64, ...) @DBG_8192C(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %320)
  %322 = load i64, i64* %18, align 8
  %323 = load i64, i64* @MAX_WPS_IE_LEN, align 8
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %319
  %326 = load i64, i64* %18, align 8
  br label %329

327:                                              ; preds = %319
  %328 = load i64, i64* @MAX_WPS_IE_LEN, align 8
  br label %329

329:                                              ; preds = %327, %325
  %330 = phi i64 [ %326, %325 ], [ %328, %327 ]
  %331 = load %struct.adapter*, %struct.adapter** %4, align 8
  %332 = getelementptr inbounds %struct.adapter, %struct.adapter* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 1
  store i64 %330, i64* %333, align 8
  %334 = load %struct.adapter*, %struct.adapter** %4, align 8
  %335 = getelementptr inbounds %struct.adapter, %struct.adapter* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 4
  %337 = load i32*, i32** %336, align 8
  %338 = load i32*, i32** %19, align 8
  %339 = load %struct.adapter*, %struct.adapter** %4, align 8
  %340 = getelementptr inbounds %struct.adapter, %struct.adapter* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = trunc i64 %342 to i32
  %344 = call i32 @memcpy(i32* %337, i32* %338, i32 %343)
  %345 = load %struct.adapter*, %struct.adapter** %4, align 8
  %346 = getelementptr inbounds %struct.adapter, %struct.adapter* %345, i32 0, i32 0
  %347 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %348 = call i32 @set_fwstate(i32* %346, i32 %347)
  br label %354

349:                                              ; preds = %316, %310
  %350 = load %struct.adapter*, %struct.adapter** %4, align 8
  %351 = getelementptr inbounds %struct.adapter, %struct.adapter* %350, i32 0, i32 0
  %352 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %353 = call i32 @_clr_fwstate_(i32* %351, i32 %352)
  br label %354

354:                                              ; preds = %349, %329
  %355 = load %struct.adapter*, %struct.adapter** %4, align 8
  %356 = getelementptr inbounds %struct.adapter, %struct.adapter* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @_TKIP_, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %375, label %361

361:                                              ; preds = %354
  %362 = load %struct.adapter*, %struct.adapter** %4, align 8
  %363 = getelementptr inbounds %struct.adapter, %struct.adapter* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @_TKIP_WTMIC_, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %375, label %368

368:                                              ; preds = %361
  %369 = load %struct.adapter*, %struct.adapter** %4, align 8
  %370 = getelementptr inbounds %struct.adapter, %struct.adapter* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @_AES_, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %368, %361, %354
  %376 = load %struct.adapter*, %struct.adapter** %4, align 8
  %377 = load i32, i32* @HW_VAR_OFF_RCR_AM, align 4
  %378 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %379 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %376, i32 %377, i32* %378)
  br label %380

380:                                              ; preds = %375, %368
  %381 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %382 = load i32, i32* @_drv_info_, align 4
  %383 = load i32, i32* %10, align 4
  %384 = load %struct.adapter*, %struct.adapter** %4, align 8
  %385 = getelementptr inbounds %struct.adapter, %struct.adapter* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 3
  %387 = load i8*, i8** %386, align 8
  %388 = load %struct.adapter*, %struct.adapter** %4, align 8
  %389 = getelementptr inbounds %struct.adapter, %struct.adapter* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = sext i32 %391 to i64
  %393 = inttoptr i64 %392 to i8*
  %394 = call i32 @RT_TRACE(i32 %381, i32 %382, i8* %393)
  br label %395

395:                                              ; preds = %380, %121, %47, %39, %26
  %396 = load i32*, i32** %7, align 8
  %397 = call i32 @kfree(i32* %396)
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = load %struct.adapter*, %struct.adapter** %4, align 8
  %402 = getelementptr inbounds %struct.adapter, %struct.adapter* %401, i32 0, i32 0
  %403 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %404 = call i32 @_clr_fwstate_(i32* %402, i32 %403)
  br label %405

405:                                              ; preds = %400, %395
  %406 = load i32, i32* %11, align 4
  ret i32 %406
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_clr_fwstate_(i32*, i32) #2

declare dso_local i32* @rtw_zmalloc(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @DBG_8192C(i8*, i64, ...) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

declare dso_local i32* @rtw_get_wpa_ie(i32*, i32*, i64) #2

declare dso_local i64 @rtw_parse_wpa_ie(i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32* @rtw_get_wpa2_ie(i32*, i32*, i64) #2

declare dso_local i64 @rtw_parse_wpa2_ie(i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32* @rtw_get_wps_ie(i32*, i64, i32*, i64*) #2

declare dso_local i32 @set_fwstate(i32*, i32) #2

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
