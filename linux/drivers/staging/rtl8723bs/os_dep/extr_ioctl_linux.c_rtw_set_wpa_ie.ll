; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64, i32, i32*, i32, i8*, i8*, i8* }

@MAX_WPA_IE_LEN = common dso_local global i16 0, align 2
@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0A wpa_ie(length:%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\0A\00", align 1
@RSN_HEADER_LEN = common dso_local global i16 0, align 2
@_module_rtl871x_ioctl_os_c = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Ie len too short %d\0A\00", align 1
@_SUCCESS = common dso_local global i64 0, align 8
@dot11AuthAlgrthm_8021X = common dso_local global i8* null, align 8
@Ndis802_11AuthModeWPAPSK = common dso_local global i32 0, align 4
@Ndis802_11AuthModeWPA2PSK = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i8* null, align 8
@Ndis802_11EncryptionDisabled = common dso_local global i8* null, align 8
@_WEP40_ = common dso_local global i8* null, align 8
@Ndis802_11Encryption1Enabled = common dso_local global i8* null, align 8
@_TKIP_ = common dso_local global i64 0, align 8
@Ndis802_11Encryption2Enabled = common dso_local global i8* null, align 8
@_AES_ = common dso_local global i64 0, align 8
@Ndis802_11Encryption3Enabled = common dso_local global i8* null, align 8
@_WEP104_ = common dso_local global i8* null, align 8
@__const.rtw_set_wpa_ie.wps_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 4], align 16
@_VENDOR_SPECIFIC_IE_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SET WPS_IE\0A\00", align 1
@MAX_WPS_IE_LEN = common dso_local global i32 0, align 4
@_TKIP_WTMIC_ = common dso_local global i64 0, align 8
@HW_VAR_OFF_RCR_AM = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [127 x i8] c"rtw_set_wpa_ie: pairwise_cipher = 0x%08x padapter->securitypriv.ndisencryptstatus =%d padapter->securitypriv.ndisauthtype =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8*, i16)* @rtw_set_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_set_wpa_ie(%struct.adapter* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 24, i1 false)
  %18 = load i16, i16* %7, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @MAX_WPA_IE_LEN, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23, %3
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %30 = call i32 @_clr_fwstate_(i32* %28, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %431

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %431

38:                                               ; preds = %23
  %39 = load i16, i16* %7, align 2
  %40 = icmp ne i16 %39, 0
  br i1 %40, label %41, label %386

41:                                               ; preds = %38
  %42 = load i16, i16* %7, align 2
  %43 = call i32* @rtw_zmalloc(i16 zeroext %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %427

49:                                               ; preds = %41
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i16, i16* %7, align 2
  %53 = zext i16 %52 to i32
  %54 = call i32 (i32*, ...) @memcpy(i32* %50, i8* %51, i32 %53)
  %55 = load i16, i16* %7, align 2
  %56 = zext i16 %55 to i32
  %57 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %112, %49
  %59 = load i32, i32* %13, align 4
  %60 = load i16, i16* %7, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %115

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 5
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 6
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 7
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %74, i32 %80, i32 %86, i32 %92, i32 %98, i32 %104, i32 %110)
  br label %112

112:                                              ; preds = %63
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 8
  store i32 %114, i32* %13, align 4
  br label %58

115:                                              ; preds = %58
  %116 = load i16, i16* %7, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @RSN_HEADER_LEN, align 2
  %119 = zext i16 %118 to i32
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %123 = load i32, i32* @_drv_err_, align 4
  %124 = load i16, i16* %7, align 2
  %125 = zext i16 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @RT_TRACE(i32 %122, i32 %123, i8* %126)
  store i32 -1, i32* %11, align 4
  br label %427

128:                                              ; preds = %115
  %129 = load i32*, i32** %8, align 8
  %130 = load i16, i16* %7, align 2
  %131 = call i64 @rtw_parse_wpa_ie(i32* %129, i16 zeroext %130, i32* %9, i32* %10, i32* null)
  %132 = load i64, i64* @_SUCCESS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %128
  %135 = load i8*, i8** @dot11AuthAlgrthm_8021X, align 8
  %136 = load %struct.adapter*, %struct.adapter** %5, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 7
  store i8* %135, i8** %138, align 8
  %139 = load i32, i32* @Ndis802_11AuthModeWPAPSK, align 4
  %140 = load %struct.adapter*, %struct.adapter** %5, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 8
  %143 = load %struct.adapter*, %struct.adapter** %5, align 8
  %144 = getelementptr inbounds %struct.adapter, %struct.adapter* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i16, i16* %7, align 2
  %150 = zext i16 %149 to i32
  %151 = call i32 (i32*, ...) @memcpy(i32* %146, i32* %148, i32 %150)
  br label %152

152:                                              ; preds = %134, %128
  %153 = load i32*, i32** %8, align 8
  %154 = load i16, i16* %7, align 2
  %155 = call i64 @rtw_parse_wpa2_ie(i32* %153, i16 zeroext %154, i32* %9, i32* %10, i32* null)
  %156 = load i64, i64* @_SUCCESS, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %176

158:                                              ; preds = %152
  %159 = load i8*, i8** @dot11AuthAlgrthm_8021X, align 8
  %160 = load %struct.adapter*, %struct.adapter** %5, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 7
  store i8* %159, i8** %162, align 8
  %163 = load i32, i32* @Ndis802_11AuthModeWPA2PSK, align 4
  %164 = load %struct.adapter*, %struct.adapter** %5, align 8
  %165 = getelementptr inbounds %struct.adapter, %struct.adapter* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 4
  store i32 %163, i32* %166, align 8
  %167 = load %struct.adapter*, %struct.adapter** %5, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i16, i16* %7, align 2
  %174 = zext i16 %173 to i32
  %175 = call i32 (i32*, ...) @memcpy(i32* %170, i32* %172, i32 %174)
  br label %176

176:                                              ; preds = %158, %152
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 131, i32* %9, align 4
  br label %180

180:                                              ; preds = %179, %176
  %181 = load i32, i32* %10, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 131, i32* %10, align 4
  br label %184

184:                                              ; preds = %183, %180
  %185 = load i32, i32* %9, align 4
  switch i32 %185, label %233 [
    i32 131, label %186
    i32 128, label %195
    i32 130, label %204
    i32 132, label %214
    i32 129, label %224
  ]

186:                                              ; preds = %184
  %187 = load i8*, i8** @_NO_PRIVACY_, align 8
  %188 = load %struct.adapter*, %struct.adapter** %5, align 8
  %189 = getelementptr inbounds %struct.adapter, %struct.adapter* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 6
  store i8* %187, i8** %190, align 8
  %191 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %192 = load %struct.adapter*, %struct.adapter** %5, align 8
  %193 = getelementptr inbounds %struct.adapter, %struct.adapter* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 5
  store i8* %191, i8** %194, align 8
  br label %233

195:                                              ; preds = %184
  %196 = load i8*, i8** @_WEP40_, align 8
  %197 = load %struct.adapter*, %struct.adapter** %5, align 8
  %198 = getelementptr inbounds %struct.adapter, %struct.adapter* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 6
  store i8* %196, i8** %199, align 8
  %200 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %201 = load %struct.adapter*, %struct.adapter** %5, align 8
  %202 = getelementptr inbounds %struct.adapter, %struct.adapter* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 5
  store i8* %200, i8** %203, align 8
  br label %233

204:                                              ; preds = %184
  %205 = load i64, i64* @_TKIP_, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = load %struct.adapter*, %struct.adapter** %5, align 8
  %208 = getelementptr inbounds %struct.adapter, %struct.adapter* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 6
  store i8* %206, i8** %209, align 8
  %210 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %211 = load %struct.adapter*, %struct.adapter** %5, align 8
  %212 = getelementptr inbounds %struct.adapter, %struct.adapter* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 5
  store i8* %210, i8** %213, align 8
  br label %233

214:                                              ; preds = %184
  %215 = load i64, i64* @_AES_, align 8
  %216 = inttoptr i64 %215 to i8*
  %217 = load %struct.adapter*, %struct.adapter** %5, align 8
  %218 = getelementptr inbounds %struct.adapter, %struct.adapter* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 6
  store i8* %216, i8** %219, align 8
  %220 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %221 = load %struct.adapter*, %struct.adapter** %5, align 8
  %222 = getelementptr inbounds %struct.adapter, %struct.adapter* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 5
  store i8* %220, i8** %223, align 8
  br label %233

224:                                              ; preds = %184
  %225 = load i8*, i8** @_WEP104_, align 8
  %226 = load %struct.adapter*, %struct.adapter** %5, align 8
  %227 = getelementptr inbounds %struct.adapter, %struct.adapter* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 6
  store i8* %225, i8** %228, align 8
  %229 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %230 = load %struct.adapter*, %struct.adapter** %5, align 8
  %231 = getelementptr inbounds %struct.adapter, %struct.adapter* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 5
  store i8* %229, i8** %232, align 8
  br label %233

233:                                              ; preds = %184, %224, %214, %204, %195, %186
  %234 = load i32, i32* %10, align 4
  switch i32 %234, label %283 [
    i32 131, label %235
    i32 128, label %245
    i32 130, label %255
    i32 132, label %264
    i32 129, label %273
  ]

235:                                              ; preds = %233
  %236 = load i8*, i8** @_NO_PRIVACY_, align 8
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.adapter*, %struct.adapter** %5, align 8
  %239 = getelementptr inbounds %struct.adapter, %struct.adapter* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  store i64 %237, i64* %240, align 8
  %241 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %242 = load %struct.adapter*, %struct.adapter** %5, align 8
  %243 = getelementptr inbounds %struct.adapter, %struct.adapter* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  store i8* %241, i8** %244, align 8
  br label %283

245:                                              ; preds = %233
  %246 = load i8*, i8** @_WEP40_, align 8
  %247 = ptrtoint i8* %246 to i64
  %248 = load %struct.adapter*, %struct.adapter** %5, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 1
  store i64 %247, i64* %250, align 8
  %251 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %252 = load %struct.adapter*, %struct.adapter** %5, align 8
  %253 = getelementptr inbounds %struct.adapter, %struct.adapter* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 5
  store i8* %251, i8** %254, align 8
  br label %283

255:                                              ; preds = %233
  %256 = load i64, i64* @_TKIP_, align 8
  %257 = load %struct.adapter*, %struct.adapter** %5, align 8
  %258 = getelementptr inbounds %struct.adapter, %struct.adapter* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  store i64 %256, i64* %259, align 8
  %260 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %261 = load %struct.adapter*, %struct.adapter** %5, align 8
  %262 = getelementptr inbounds %struct.adapter, %struct.adapter* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 5
  store i8* %260, i8** %263, align 8
  br label %283

264:                                              ; preds = %233
  %265 = load i64, i64* @_AES_, align 8
  %266 = load %struct.adapter*, %struct.adapter** %5, align 8
  %267 = getelementptr inbounds %struct.adapter, %struct.adapter* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  store i64 %265, i64* %268, align 8
  %269 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %270 = load %struct.adapter*, %struct.adapter** %5, align 8
  %271 = getelementptr inbounds %struct.adapter, %struct.adapter* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 5
  store i8* %269, i8** %272, align 8
  br label %283

273:                                              ; preds = %233
  %274 = load i8*, i8** @_WEP104_, align 8
  %275 = ptrtoint i8* %274 to i64
  %276 = load %struct.adapter*, %struct.adapter** %5, align 8
  %277 = getelementptr inbounds %struct.adapter, %struct.adapter* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 1
  store i64 %275, i64* %278, align 8
  %279 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %280 = load %struct.adapter*, %struct.adapter** %5, align 8
  %281 = getelementptr inbounds %struct.adapter, %struct.adapter* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 5
  store i8* %279, i8** %282, align 8
  br label %283

283:                                              ; preds = %233, %273, %264, %255, %245, %235
  %284 = load %struct.adapter*, %struct.adapter** %5, align 8
  %285 = getelementptr inbounds %struct.adapter, %struct.adapter* %284, i32 0, i32 1
  %286 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %287 = call i32 @_clr_fwstate_(i32* %285, i32 %286)
  store i16 0, i16* %14, align 2
  %288 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %288, i8* align 16 bitcast ([4 x i32]* @__const.rtw_set_wpa_ie.wps_oui to i8*), i64 16, i1 false)
  br label %289

289:                                              ; preds = %384, %283
  %290 = load i16, i16* %14, align 2
  %291 = zext i16 %290 to i32
  %292 = load i16, i16* %7, align 2
  %293 = zext i16 %292 to i32
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %385

295:                                              ; preds = %289
  %296 = load i32*, i32** %8, align 8
  %297 = load i16, i16* %14, align 2
  %298 = zext i16 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %15, align 4
  %301 = load i32, i32* %15, align 4
  %302 = load i32, i32* @_VENDOR_SPECIFIC_IE_, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %371

304:                                              ; preds = %295
  %305 = load i32*, i32** %8, align 8
  %306 = load i16, i16* %14, align 2
  %307 = zext i16 %306 to i32
  %308 = add nsw i32 %307, 2
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %305, i64 %309
  %311 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %312 = call i32 @memcmp(i32* %310, i32* %311, i32 4)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %371, label %314

314:                                              ; preds = %304
  %315 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %316 = load i32*, i32** %8, align 8
  %317 = load i16, i16* %14, align 2
  %318 = zext i16 %317 to i32
  %319 = add nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %316, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 2
  %324 = load i32, i32* @MAX_WPS_IE_LEN, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %314
  %327 = load i32*, i32** %8, align 8
  %328 = load i16, i16* %14, align 2
  %329 = zext i16 %328 to i32
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %327, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, 2
  br label %337

335:                                              ; preds = %314
  %336 = load i32, i32* @MAX_WPS_IE_LEN, align 4
  br label %337

337:                                              ; preds = %335, %326
  %338 = phi i32 [ %334, %326 ], [ %336, %335 ]
  %339 = load %struct.adapter*, %struct.adapter** %5, align 8
  %340 = getelementptr inbounds %struct.adapter, %struct.adapter* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 2
  store i32 %338, i32* %341, align 8
  %342 = load %struct.adapter*, %struct.adapter** %5, align 8
  %343 = getelementptr inbounds %struct.adapter, %struct.adapter* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 3
  %345 = load i32*, i32** %344, align 8
  %346 = load i32*, i32** %8, align 8
  %347 = load i16, i16* %14, align 2
  %348 = zext i16 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load %struct.adapter*, %struct.adapter** %5, align 8
  %351 = getelementptr inbounds %struct.adapter, %struct.adapter* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = call i32 (i32*, ...) @memcpy(i32* %345, i32* %349, i32 %353)
  %355 = load %struct.adapter*, %struct.adapter** %5, align 8
  %356 = getelementptr inbounds %struct.adapter, %struct.adapter* %355, i32 0, i32 1
  %357 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %358 = call i32 @set_fwstate(i32* %356, i32 %357)
  %359 = load i32*, i32** %8, align 8
  %360 = load i16, i16* %14, align 2
  %361 = zext i16 %360 to i32
  %362 = add nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %359, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %365, 2
  %367 = load i16, i16* %14, align 2
  %368 = zext i16 %367 to i32
  %369 = add nsw i32 %368, %366
  %370 = trunc i32 %369 to i16
  store i16 %370, i16* %14, align 2
  br label %385

371:                                              ; preds = %304, %295
  %372 = load i32*, i32** %8, align 8
  %373 = load i16, i16* %14, align 2
  %374 = zext i16 %373 to i32
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %372, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, 2
  %380 = load i16, i16* %14, align 2
  %381 = zext i16 %380 to i32
  %382 = add nsw i32 %381, %379
  %383 = trunc i32 %382 to i16
  store i16 %383, i16* %14, align 2
  br label %384

384:                                              ; preds = %371
  br label %289

385:                                              ; preds = %337, %289
  br label %386

386:                                              ; preds = %385, %38
  %387 = load %struct.adapter*, %struct.adapter** %5, align 8
  %388 = getelementptr inbounds %struct.adapter, %struct.adapter* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @_TKIP_, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %407, label %393

393:                                              ; preds = %386
  %394 = load %struct.adapter*, %struct.adapter** %5, align 8
  %395 = getelementptr inbounds %struct.adapter, %struct.adapter* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @_TKIP_WTMIC_, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %407, label %400

400:                                              ; preds = %393
  %401 = load %struct.adapter*, %struct.adapter** %5, align 8
  %402 = getelementptr inbounds %struct.adapter, %struct.adapter* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @_AES_, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %400, %393, %386
  %408 = load %struct.adapter*, %struct.adapter** %5, align 8
  %409 = load i32, i32* @HW_VAR_OFF_RCR_AM, align 4
  %410 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %411 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %408, i32 %409, i32* %410)
  br label %412

412:                                              ; preds = %407, %400
  %413 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %414 = load i32, i32* @_drv_info_, align 4
  %415 = load i32, i32* %10, align 4
  %416 = load %struct.adapter*, %struct.adapter** %5, align 8
  %417 = getelementptr inbounds %struct.adapter, %struct.adapter* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 5
  %419 = load i8*, i8** %418, align 8
  %420 = load %struct.adapter*, %struct.adapter** %5, align 8
  %421 = getelementptr inbounds %struct.adapter, %struct.adapter* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = sext i32 %423 to i64
  %425 = inttoptr i64 %424 to i8*
  %426 = call i32 @RT_TRACE(i32 %413, i32 %414, i8* %425)
  br label %427

427:                                              ; preds = %412, %121, %46
  %428 = load i32*, i32** %8, align 8
  %429 = call i32 @kfree(i32* %428)
  %430 = load i32, i32* %11, align 4
  store i32 %430, i32* %4, align 4
  br label %431

431:                                              ; preds = %427, %35, %33
  %432 = load i32, i32* %4, align 4
  ret i32 %432
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_clr_fwstate_(i32*, i32) #2

declare dso_local i32* @rtw_zmalloc(i16 zeroext) #2

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i32 @DBG_871X(i8*, ...) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

declare dso_local i64 @rtw_parse_wpa_ie(i32*, i16 zeroext, i32*, i32*, i32*) #2

declare dso_local i64 @rtw_parse_wpa2_ie(i32*, i16 zeroext, i32*, i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

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
