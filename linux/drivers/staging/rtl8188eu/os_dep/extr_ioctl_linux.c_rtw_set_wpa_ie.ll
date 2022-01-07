; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i16, i32, i8*, i32, i8*, i8*, i32, i8* }

@MAX_WPA_IE_LEN = common dso_local global i16 0, align 2
@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
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
@_TKIP_ = common dso_local global i8* null, align 8
@Ndis802_11Encryption2Enabled = common dso_local global i8* null, align 8
@_AES_ = common dso_local global i8* null, align 8
@Ndis802_11Encryption3Enabled = common dso_local global i8* null, align 8
@_WEP104_ = common dso_local global i8* null, align 8
@__const.rtw_set_wpa_ie.wps_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 4], align 16
@_VENDOR_SPECIFIC_IE_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SET WPS_IE\0A\00", align 1
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
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @MAX_WPA_IE_LEN, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.adapter*, %struct.adapter** %5, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  %27 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %28 = call i32 @_clr_fwstate_(i32* %26, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %375

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %375

36:                                               ; preds = %21
  %37 = load i16, i16* %7, align 2
  %38 = icmp ne i16 %37, 0
  br i1 %38, label %39, label %356

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i16, i16* %7, align 2
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32* @kmemdup(i8* %40, i16 zeroext %41, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %371

49:                                               ; preds = %39
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %107, %49
  %54 = load i32, i32* %12, align 4
  %55 = load i16, i16* %7, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %110

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 5
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 6
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 7
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %69, i32 %75, i32 %81, i32 %87, i32 %93, i32 %99, i32 %105)
  br label %107

107:                                              ; preds = %58
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 8
  store i32 %109, i32* %12, align 4
  br label %53

110:                                              ; preds = %53
  %111 = load i16, i16* %7, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16, i16* @RSN_HEADER_LEN, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %118 = load i32, i32* @_drv_err_, align 4
  %119 = load i16, i16* %7, align 2
  %120 = zext i16 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @RT_TRACE(i32 %117, i32 %118, i8* %121)
  store i32 -1, i32* %11, align 4
  br label %371

123:                                              ; preds = %110
  %124 = load i32*, i32** %8, align 8
  %125 = load i16, i16* %7, align 2
  %126 = call i64 @rtw_parse_wpa_ie(i32* %124, i16 zeroext %125, i32* %9, i32* %10, i32* null)
  %127 = load i64, i64* @_SUCCESS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %123
  %130 = load i8*, i8** @dot11AuthAlgrthm_8021X, align 8
  %131 = load %struct.adapter*, %struct.adapter** %5, align 8
  %132 = getelementptr inbounds %struct.adapter, %struct.adapter* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 7
  store i8* %130, i8** %133, align 8
  %134 = load i32, i32* @Ndis802_11AuthModeWPAPSK, align 4
  %135 = load %struct.adapter*, %struct.adapter** %5, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load %struct.adapter*, %struct.adapter** %5, align 8
  %139 = getelementptr inbounds %struct.adapter, %struct.adapter* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i16, i16* %7, align 2
  %145 = call i32 @memcpy(i32 %141, i32* %143, i16 zeroext %144)
  br label %146

146:                                              ; preds = %129, %123
  %147 = load i32*, i32** %8, align 8
  %148 = load i16, i16* %7, align 2
  %149 = call i64 @rtw_parse_wpa2_ie(i32* %147, i16 zeroext %148, i32* %9, i32* %10, i32* null)
  %150 = load i64, i64* @_SUCCESS, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %146
  %153 = load i8*, i8** @dot11AuthAlgrthm_8021X, align 8
  %154 = load %struct.adapter*, %struct.adapter** %5, align 8
  %155 = getelementptr inbounds %struct.adapter, %struct.adapter* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 7
  store i8* %153, i8** %156, align 8
  %157 = load i32, i32* @Ndis802_11AuthModeWPA2PSK, align 4
  %158 = load %struct.adapter*, %struct.adapter** %5, align 8
  %159 = getelementptr inbounds %struct.adapter, %struct.adapter* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 4
  %161 = load %struct.adapter*, %struct.adapter** %5, align 8
  %162 = getelementptr inbounds %struct.adapter, %struct.adapter* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i16, i16* %7, align 2
  %168 = call i32 @memcpy(i32 %164, i32* %166, i16 zeroext %167)
  br label %169

169:                                              ; preds = %152, %146
  %170 = load i32, i32* %9, align 4
  switch i32 %170, label %216 [
    i32 131, label %171
    i32 128, label %180
    i32 130, label %189
    i32 132, label %198
    i32 129, label %207
  ]

171:                                              ; preds = %169
  %172 = load i8*, i8** @_NO_PRIVACY_, align 8
  %173 = load %struct.adapter*, %struct.adapter** %5, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 5
  store i8* %172, i8** %175, align 8
  %176 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %177 = load %struct.adapter*, %struct.adapter** %5, align 8
  %178 = getelementptr inbounds %struct.adapter, %struct.adapter* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  store i8* %176, i8** %179, align 8
  br label %216

180:                                              ; preds = %169
  %181 = load i8*, i8** @_WEP40_, align 8
  %182 = load %struct.adapter*, %struct.adapter** %5, align 8
  %183 = getelementptr inbounds %struct.adapter, %struct.adapter* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 5
  store i8* %181, i8** %184, align 8
  %185 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %186 = load %struct.adapter*, %struct.adapter** %5, align 8
  %187 = getelementptr inbounds %struct.adapter, %struct.adapter* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  store i8* %185, i8** %188, align 8
  br label %216

189:                                              ; preds = %169
  %190 = load i8*, i8** @_TKIP_, align 8
  %191 = load %struct.adapter*, %struct.adapter** %5, align 8
  %192 = getelementptr inbounds %struct.adapter, %struct.adapter* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 5
  store i8* %190, i8** %193, align 8
  %194 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %195 = load %struct.adapter*, %struct.adapter** %5, align 8
  %196 = getelementptr inbounds %struct.adapter, %struct.adapter* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  store i8* %194, i8** %197, align 8
  br label %216

198:                                              ; preds = %169
  %199 = load i8*, i8** @_AES_, align 8
  %200 = load %struct.adapter*, %struct.adapter** %5, align 8
  %201 = getelementptr inbounds %struct.adapter, %struct.adapter* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 5
  store i8* %199, i8** %202, align 8
  %203 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %204 = load %struct.adapter*, %struct.adapter** %5, align 8
  %205 = getelementptr inbounds %struct.adapter, %struct.adapter* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  store i8* %203, i8** %206, align 8
  br label %216

207:                                              ; preds = %169
  %208 = load i8*, i8** @_WEP104_, align 8
  %209 = load %struct.adapter*, %struct.adapter** %5, align 8
  %210 = getelementptr inbounds %struct.adapter, %struct.adapter* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 5
  store i8* %208, i8** %211, align 8
  %212 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %213 = load %struct.adapter*, %struct.adapter** %5, align 8
  %214 = getelementptr inbounds %struct.adapter, %struct.adapter* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  store i8* %212, i8** %215, align 8
  br label %216

216:                                              ; preds = %169, %207, %198, %189, %180, %171
  %217 = load i32, i32* %10, align 4
  switch i32 %217, label %263 [
    i32 131, label %218
    i32 128, label %227
    i32 130, label %236
    i32 132, label %245
    i32 129, label %254
  ]

218:                                              ; preds = %216
  %219 = load i8*, i8** @_NO_PRIVACY_, align 8
  %220 = load %struct.adapter*, %struct.adapter** %5, align 8
  %221 = getelementptr inbounds %struct.adapter, %struct.adapter* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 4
  store i8* %219, i8** %222, align 8
  %223 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %224 = load %struct.adapter*, %struct.adapter** %5, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 2
  store i8* %223, i8** %226, align 8
  br label %263

227:                                              ; preds = %216
  %228 = load i8*, i8** @_WEP40_, align 8
  %229 = load %struct.adapter*, %struct.adapter** %5, align 8
  %230 = getelementptr inbounds %struct.adapter, %struct.adapter* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 4
  store i8* %228, i8** %231, align 8
  %232 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %233 = load %struct.adapter*, %struct.adapter** %5, align 8
  %234 = getelementptr inbounds %struct.adapter, %struct.adapter* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  store i8* %232, i8** %235, align 8
  br label %263

236:                                              ; preds = %216
  %237 = load i8*, i8** @_TKIP_, align 8
  %238 = load %struct.adapter*, %struct.adapter** %5, align 8
  %239 = getelementptr inbounds %struct.adapter, %struct.adapter* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 4
  store i8* %237, i8** %240, align 8
  %241 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %242 = load %struct.adapter*, %struct.adapter** %5, align 8
  %243 = getelementptr inbounds %struct.adapter, %struct.adapter* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 2
  store i8* %241, i8** %244, align 8
  br label %263

245:                                              ; preds = %216
  %246 = load i8*, i8** @_AES_, align 8
  %247 = load %struct.adapter*, %struct.adapter** %5, align 8
  %248 = getelementptr inbounds %struct.adapter, %struct.adapter* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 4
  store i8* %246, i8** %249, align 8
  %250 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %251 = load %struct.adapter*, %struct.adapter** %5, align 8
  %252 = getelementptr inbounds %struct.adapter, %struct.adapter* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  store i8* %250, i8** %253, align 8
  br label %263

254:                                              ; preds = %216
  %255 = load i8*, i8** @_WEP104_, align 8
  %256 = load %struct.adapter*, %struct.adapter** %5, align 8
  %257 = getelementptr inbounds %struct.adapter, %struct.adapter* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 4
  store i8* %255, i8** %258, align 8
  %259 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %260 = load %struct.adapter*, %struct.adapter** %5, align 8
  %261 = getelementptr inbounds %struct.adapter, %struct.adapter* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 2
  store i8* %259, i8** %262, align 8
  br label %263

263:                                              ; preds = %216, %254, %245, %236, %227, %218
  %264 = load %struct.adapter*, %struct.adapter** %5, align 8
  %265 = getelementptr inbounds %struct.adapter, %struct.adapter* %264, i32 0, i32 1
  %266 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %267 = call i32 @_clr_fwstate_(i32* %265, i32 %266)
  store i16 0, i16* %13, align 2
  %268 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %268, i8* align 16 bitcast ([4 x i32]* @__const.rtw_set_wpa_ie.wps_oui to i8*), i64 16, i1 false)
  br label %269

269:                                              ; preds = %354, %263
  %270 = load i16, i16* %13, align 2
  %271 = zext i16 %270 to i32
  %272 = load i16, i16* %7, align 2
  %273 = zext i16 %272 to i32
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %355

275:                                              ; preds = %269
  %276 = load i32*, i32** %8, align 8
  %277 = load i16, i16* %13, align 2
  %278 = zext i16 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %14, align 4
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* @_VENDOR_SPECIFIC_IE_, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %341

284:                                              ; preds = %275
  %285 = load i32*, i32** %8, align 8
  %286 = load i16, i16* %13, align 2
  %287 = zext i16 %286 to i32
  %288 = add nsw i32 %287, 2
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %285, i64 %289
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %292 = call i32 @memcmp(i32* %290, i32* %291, i32 4)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %341, label %294

294:                                              ; preds = %284
  %295 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %296 = load i32*, i32** %8, align 8
  %297 = load i16, i16* %13, align 2
  %298 = zext i16 %297 to i32
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %296, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 2
  %304 = load i16, i16* @MAX_WPA_IE_LEN, align 2
  %305 = zext i16 %304 to i32
  %306 = shl i32 %305, 2
  %307 = trunc i32 %306 to i16
  %308 = call zeroext i16 @min(i32 %303, i16 zeroext %307)
  %309 = load %struct.adapter*, %struct.adapter** %5, align 8
  %310 = getelementptr inbounds %struct.adapter, %struct.adapter* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 0
  store i16 %308, i16* %311, align 8
  %312 = load %struct.adapter*, %struct.adapter** %5, align 8
  %313 = getelementptr inbounds %struct.adapter, %struct.adapter* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = load i32*, i32** %8, align 8
  %317 = load i16, i16* %13, align 2
  %318 = zext i16 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load %struct.adapter*, %struct.adapter** %5, align 8
  %321 = getelementptr inbounds %struct.adapter, %struct.adapter* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 0
  %323 = load i16, i16* %322, align 8
  %324 = call i32 @memcpy(i32 %315, i32* %319, i16 zeroext %323)
  %325 = load %struct.adapter*, %struct.adapter** %5, align 8
  %326 = getelementptr inbounds %struct.adapter, %struct.adapter* %325, i32 0, i32 1
  %327 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %328 = call i32 @set_fwstate(i32* %326, i32 %327)
  %329 = load i32*, i32** %8, align 8
  %330 = load i16, i16* %13, align 2
  %331 = zext i16 %330 to i32
  %332 = add nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %329, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 2
  %337 = load i16, i16* %13, align 2
  %338 = zext i16 %337 to i32
  %339 = add nsw i32 %338, %336
  %340 = trunc i32 %339 to i16
  store i16 %340, i16* %13, align 2
  br label %355

341:                                              ; preds = %284, %275
  %342 = load i32*, i32** %8, align 8
  %343 = load i16, i16* %13, align 2
  %344 = zext i16 %343 to i32
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, 2
  %350 = load i16, i16* %13, align 2
  %351 = zext i16 %350 to i32
  %352 = add nsw i32 %351, %349
  %353 = trunc i32 %352 to i16
  store i16 %353, i16* %13, align 2
  br label %354

354:                                              ; preds = %341
  br label %269

355:                                              ; preds = %294, %269
  br label %356

356:                                              ; preds = %355, %36
  %357 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %358 = load i32, i32* @_drv_info_, align 4
  %359 = load i32, i32* %10, align 4
  %360 = load %struct.adapter*, %struct.adapter** %5, align 8
  %361 = getelementptr inbounds %struct.adapter, %struct.adapter* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.adapter*, %struct.adapter** %5, align 8
  %365 = getelementptr inbounds %struct.adapter, %struct.adapter* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = inttoptr i64 %368 to i8*
  %370 = call i32 @RT_TRACE(i32 %357, i32 %358, i8* %369)
  br label %371

371:                                              ; preds = %356, %116, %46
  %372 = load i32*, i32** %8, align 8
  %373 = call i32 @kfree(i32* %372)
  %374 = load i32, i32* %11, align 4
  store i32 %374, i32* %4, align 4
  br label %375

375:                                              ; preds = %371, %33, %31
  %376 = load i32, i32* %4, align 4
  ret i32 %376
}

declare dso_local i32 @_clr_fwstate_(i32*, i32) #1

declare dso_local i32* @kmemdup(i8*, i16 zeroext, i32) #1

declare dso_local i32 @DBG_88E(i8*, ...) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @rtw_parse_wpa_ie(i32*, i16 zeroext, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i16 zeroext) #1

declare dso_local i64 @rtw_parse_wpa2_ie(i32*, i16 zeroext, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local zeroext i16 @min(i32, i16 zeroext) #1

declare dso_local i32 @set_fwstate(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
