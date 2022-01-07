; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i32 }

@MAX_WPA_IE_LEN = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RSN_HEADER_LEN = common dso_local global i16 0, align 2
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
@__const.r871x_set_wpa_ie.wps_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 4], align 16
@_VENDOR_SPECIFIC_IE_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"r8712u: SET WPS_IE\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"r8712u: SET WPS_IE, wps_phase==true\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, i8*, i16)* @r871x_set_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r871x_set_wpa_ie(%struct._adapter* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i16, i16* %7, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @MAX_WPA_IE_LEN, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %284

26:                                               ; preds = %20
  %27 = load i16, i16* %7, align 2
  %28 = icmp ne i16 %27, 0
  br i1 %28, label %29, label %279

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i16, i16* %7, align 2
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32* @kmemdup(i8* %30, i16 zeroext %31, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %284

39:                                               ; preds = %29
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @RSN_HEADER_LEN, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %280

48:                                               ; preds = %39
  %49 = load i32*, i32** %8, align 8
  %50 = load i16, i16* %7, align 2
  %51 = call i64 @r8712_parse_wpa_ie(i32* %49, i16 zeroext %50, i32* %9, i32* %10)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct._adapter*, %struct._adapter** %5, align 8
  %55 = getelementptr inbounds %struct._adapter, %struct._adapter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = load i32, i32* @Ndis802_11AuthModeWPAPSK, align 4
  %58 = load %struct._adapter*, %struct._adapter** %5, align 8
  %59 = getelementptr inbounds %struct._adapter, %struct._adapter* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 7
  store i32 %57, i32* %60, align 8
  br label %61

61:                                               ; preds = %53, %48
  %62 = load i32*, i32** %8, align 8
  %63 = load i16, i16* %7, align 2
  %64 = call i64 @r8712_parse_wpa2_ie(i32* %62, i16 zeroext %63, i32* %9, i32* %10)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct._adapter*, %struct._adapter** %5, align 8
  %68 = getelementptr inbounds %struct._adapter, %struct._adapter* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 2, i32* %69, align 8
  %70 = load i32, i32* @Ndis802_11AuthModeWPA2PSK, align 4
  %71 = load %struct._adapter*, %struct._adapter** %5, align 8
  %72 = getelementptr inbounds %struct._adapter, %struct._adapter* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 7
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %61
  %75 = load i32, i32* %9, align 4
  switch i32 %75, label %121 [
    i32 131, label %76
    i32 128, label %85
    i32 130, label %94
    i32 132, label %103
    i32 129, label %112
  ]

76:                                               ; preds = %74
  %77 = load i8*, i8** @_NO_PRIVACY_, align 8
  %78 = load %struct._adapter*, %struct._adapter** %5, align 8
  %79 = getelementptr inbounds %struct._adapter, %struct._adapter* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %82 = load %struct._adapter*, %struct._adapter** %5, align 8
  %83 = getelementptr inbounds %struct._adapter, %struct._adapter* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i8* %81, i8** %84, align 8
  br label %121

85:                                               ; preds = %74
  %86 = load i8*, i8** @_WEP40_, align 8
  %87 = load %struct._adapter*, %struct._adapter** %5, align 8
  %88 = getelementptr inbounds %struct._adapter, %struct._adapter* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %91 = load %struct._adapter*, %struct._adapter** %5, align 8
  %92 = getelementptr inbounds %struct._adapter, %struct._adapter* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store i8* %90, i8** %93, align 8
  br label %121

94:                                               ; preds = %74
  %95 = load i8*, i8** @_TKIP_, align 8
  %96 = load %struct._adapter*, %struct._adapter** %5, align 8
  %97 = getelementptr inbounds %struct._adapter, %struct._adapter* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 6
  store i8* %95, i8** %98, align 8
  %99 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %100 = load %struct._adapter*, %struct._adapter** %5, align 8
  %101 = getelementptr inbounds %struct._adapter, %struct._adapter* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i8* %99, i8** %102, align 8
  br label %121

103:                                              ; preds = %74
  %104 = load i8*, i8** @_AES_, align 8
  %105 = load %struct._adapter*, %struct._adapter** %5, align 8
  %106 = getelementptr inbounds %struct._adapter, %struct._adapter* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 6
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %109 = load %struct._adapter*, %struct._adapter** %5, align 8
  %110 = getelementptr inbounds %struct._adapter, %struct._adapter* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i8* %108, i8** %111, align 8
  br label %121

112:                                              ; preds = %74
  %113 = load i8*, i8** @_WEP104_, align 8
  %114 = load %struct._adapter*, %struct._adapter** %5, align 8
  %115 = getelementptr inbounds %struct._adapter, %struct._adapter* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  store i8* %113, i8** %116, align 8
  %117 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %118 = load %struct._adapter*, %struct._adapter** %5, align 8
  %119 = getelementptr inbounds %struct._adapter, %struct._adapter* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %74, %112, %103, %94, %85, %76
  %122 = load i32, i32* %10, align 4
  switch i32 %122, label %168 [
    i32 131, label %123
    i32 128, label %132
    i32 130, label %141
    i32 132, label %150
    i32 129, label %159
  ]

123:                                              ; preds = %121
  %124 = load i8*, i8** @_NO_PRIVACY_, align 8
  %125 = load %struct._adapter*, %struct._adapter** %5, align 8
  %126 = getelementptr inbounds %struct._adapter, %struct._adapter* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  store i8* %124, i8** %127, align 8
  %128 = load i8*, i8** @Ndis802_11EncryptionDisabled, align 8
  %129 = load %struct._adapter*, %struct._adapter** %5, align 8
  %130 = getelementptr inbounds %struct._adapter, %struct._adapter* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  store i8* %128, i8** %131, align 8
  br label %168

132:                                              ; preds = %121
  %133 = load i8*, i8** @_WEP40_, align 8
  %134 = load %struct._adapter*, %struct._adapter** %5, align 8
  %135 = getelementptr inbounds %struct._adapter, %struct._adapter* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 5
  store i8* %133, i8** %136, align 8
  %137 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %138 = load %struct._adapter*, %struct._adapter** %5, align 8
  %139 = getelementptr inbounds %struct._adapter, %struct._adapter* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  store i8* %137, i8** %140, align 8
  br label %168

141:                                              ; preds = %121
  %142 = load i8*, i8** @_TKIP_, align 8
  %143 = load %struct._adapter*, %struct._adapter** %5, align 8
  %144 = getelementptr inbounds %struct._adapter, %struct._adapter* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 5
  store i8* %142, i8** %145, align 8
  %146 = load i8*, i8** @Ndis802_11Encryption2Enabled, align 8
  %147 = load %struct._adapter*, %struct._adapter** %5, align 8
  %148 = getelementptr inbounds %struct._adapter, %struct._adapter* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  store i8* %146, i8** %149, align 8
  br label %168

150:                                              ; preds = %121
  %151 = load i8*, i8** @_AES_, align 8
  %152 = load %struct._adapter*, %struct._adapter** %5, align 8
  %153 = getelementptr inbounds %struct._adapter, %struct._adapter* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 5
  store i8* %151, i8** %154, align 8
  %155 = load i8*, i8** @Ndis802_11Encryption3Enabled, align 8
  %156 = load %struct._adapter*, %struct._adapter** %5, align 8
  %157 = getelementptr inbounds %struct._adapter, %struct._adapter* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 4
  store i8* %155, i8** %158, align 8
  br label %168

159:                                              ; preds = %121
  %160 = load i8*, i8** @_WEP104_, align 8
  %161 = load %struct._adapter*, %struct._adapter** %5, align 8
  %162 = getelementptr inbounds %struct._adapter, %struct._adapter* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 5
  store i8* %160, i8** %163, align 8
  %164 = load i8*, i8** @Ndis802_11Encryption1Enabled, align 8
  %165 = load %struct._adapter*, %struct._adapter** %5, align 8
  %166 = getelementptr inbounds %struct._adapter, %struct._adapter* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 4
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %121, %159, %150, %141, %132, %123
  %169 = load %struct._adapter*, %struct._adapter** %5, align 8
  %170 = getelementptr inbounds %struct._adapter, %struct._adapter* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  store i32 0, i32* %171, align 4
  store i16 0, i16* %12, align 2
  %172 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %172, i8* align 16 bitcast ([4 x i32]* @__const.r871x_set_wpa_ie.wps_oui to i8*), i64 16, i1 false)
  br label %173

173:                                              ; preds = %265, %168
  %174 = load i16, i16* %12, align 2
  %175 = zext i16 %174 to i32
  %176 = load i16, i16* %7, align 2
  %177 = zext i16 %176 to i32
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %179, label %278

179:                                              ; preds = %173
  %180 = load i32*, i32** %8, align 8
  %181 = load i16, i16* %12, align 2
  %182 = zext i16 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @_VENDOR_SPECIFIC_IE_, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %265

188:                                              ; preds = %179
  %189 = load i32*, i32** %8, align 8
  %190 = load i16, i16* %12, align 2
  %191 = zext i16 %190 to i32
  %192 = add nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %196 = call i32 @memcmp(i32* %194, i32* %195, i32 4)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %265, label %198

198:                                              ; preds = %188
  %199 = load %struct._adapter*, %struct._adapter** %5, align 8
  %200 = getelementptr inbounds %struct._adapter, %struct._adapter* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @netdev_info(i32 %201, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %203 = load i32*, i32** %8, align 8
  %204 = load i16, i16* %12, align 2
  %205 = zext i16 %204 to i32
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 2
  %211 = load i16, i16* @MAX_WPA_IE_LEN, align 2
  %212 = zext i16 %211 to i32
  %213 = shl i32 %212, 2
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %198
  %216 = load i32*, i32** %8, align 8
  %217 = load i16, i16* %12, align 2
  %218 = zext i16 %217 to i32
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 2
  br label %228

224:                                              ; preds = %198
  %225 = load i16, i16* @MAX_WPA_IE_LEN, align 2
  %226 = zext i16 %225 to i32
  %227 = shl i32 %226, 2
  br label %228

228:                                              ; preds = %224, %215
  %229 = phi i32 [ %223, %215 ], [ %227, %224 ]
  %230 = load %struct._adapter*, %struct._adapter** %5, align 8
  %231 = getelementptr inbounds %struct._adapter, %struct._adapter* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 2
  store i32 %229, i32* %232, align 8
  %233 = load %struct._adapter*, %struct._adapter** %5, align 8
  %234 = getelementptr inbounds %struct._adapter, %struct._adapter* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %8, align 8
  %238 = load i16, i16* %12, align 2
  %239 = zext i16 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load %struct._adapter*, %struct._adapter** %5, align 8
  %242 = getelementptr inbounds %struct._adapter, %struct._adapter* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @memcpy(i32 %236, i32* %240, i32 %244)
  %246 = load %struct._adapter*, %struct._adapter** %5, align 8
  %247 = getelementptr inbounds %struct._adapter, %struct._adapter* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  store i32 1, i32* %248, align 4
  %249 = load %struct._adapter*, %struct._adapter** %5, align 8
  %250 = getelementptr inbounds %struct._adapter, %struct._adapter* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @netdev_info(i32 %251, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %253 = load i32*, i32** %8, align 8
  %254 = load i16, i16* %12, align 2
  %255 = zext i16 %254 to i32
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 2
  %261 = load i16, i16* %12, align 2
  %262 = zext i16 %261 to i32
  %263 = add nsw i32 %262, %260
  %264 = trunc i32 %263 to i16
  store i16 %264, i16* %12, align 2
  br label %278

265:                                              ; preds = %188, %179
  %266 = load i32*, i32** %8, align 8
  %267 = load i16, i16* %12, align 2
  %268 = zext i16 %267 to i32
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %266, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 2
  %274 = load i16, i16* %12, align 2
  %275 = zext i16 %274 to i32
  %276 = add nsw i32 %275, %273
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %12, align 2
  br label %173

278:                                              ; preds = %228, %173
  br label %279

279:                                              ; preds = %278, %26
  br label %280

280:                                              ; preds = %279, %45
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @kfree(i32* %281)
  %283 = load i32, i32* %11, align 4
  store i32 %283, i32* %4, align 4
  br label %284

284:                                              ; preds = %280, %36, %23
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i32* @kmemdup(i8*, i16 zeroext, i32) #1

declare dso_local i64 @r8712_parse_wpa_ie(i32*, i16 zeroext, i32*, i32*) #1

declare dso_local i64 @r8712_parse_wpa2_ie(i32*, i16 zeroext, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
