; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_update_hal_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i64, i32 }
%struct.rtl_sta_info = type { i32, i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"wireless mode = 0x%x\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WIRELESS_MODE_AC_ONLY = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_B = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_GB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_G = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NG = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_AC_24N = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_AC_5N = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ratr_bitmap :%x\0A\00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x:%x:%x\0A\00", align 1
@H2C_8821AE_RA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl8821ae_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  %12 = alloca %struct.rtl_sta_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [7 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  store %struct.rtl_priv* %23, %struct.rtl_priv** %9, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  store %struct.rtl_phy* %25, %struct.rtl_phy** %10, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %27)
  store %struct.rtl_mac* %28, %struct.rtl_mac** %11, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %12, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %38, i32* %20, align 4
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %42, %struct.rtl_sta_info** %12, align 8
  %43 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %44 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %47 = load i32, i32* @COMP_RATR, align 4
  %48 = load i32, i32* @DBG_LOUD, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %52 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %4
  %57 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %58 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %4
  %63 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %64 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %16, align 4
  br label %84

66:                                               ; preds = %56
  %67 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %68 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %74 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %66
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %83

83:                                               ; preds = %78, %72
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 132
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %91, 134
  br i1 %92, label %93, label %101

93:                                               ; preds = %90, %87, %84
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 4
  store i32 %100, i32* %13, align 4
  br label %108

101:                                              ; preds = %90
  %102 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %101, %93
  %109 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %110 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 4095, i32* %13, align 4
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 129
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %15, align 4
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %141

121:                                              ; preds = %118, %115
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 20
  %130 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %131 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 12
  %138 = or i32 %129, %137
  %139 = load i32, i32* %13, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %13, align 4
  br label %162

141:                                              ; preds = %118
  %142 = load i32, i32* %15, align 4
  %143 = icmp eq i32 %142, 133
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %145, 132
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @WIRELESS_MODE_AC_ONLY, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147, %144, %141
  %152 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %153 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @_rtl8821ae_rate_to_bitmap_2ssvht(i32 %156)
  %158 = shl i32 %157, 12
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %151, %147
  br label %162

162:                                              ; preds = %161, %121
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %164 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @_rtl8821ae_get_ra_shortgi(%struct.ieee80211_hw* %163, %struct.ieee80211_sta* %164, i32 %165)
  store i32 %166, i32* %17, align 4
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @_rtl8821ae_get_ra_rftype(%struct.ieee80211_hw* %167, i32 %168, i32 %169)
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %15, align 4
  switch i32 %171, label %377 [
    i32 131, label %172
    i32 130, label %184
    i32 134, label %202
    i32 129, label %206
    i32 128, label %206
    i32 133, label %320
    i32 132, label %337
  ]

172:                                              ; preds = %162
  %173 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %13, align 4
  %175 = and i32 %174, 12
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* %13, align 4
  %179 = and i32 %178, 13
  store i32 %179, i32* %13, align 4
  br label %183

180:                                              ; preds = %172
  %181 = load i32, i32* %13, align 4
  %182 = and i32 %181, 15
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %180, %177
  br label %389

184:                                              ; preds = %162
  %185 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* %13, align 4
  %190 = and i32 %189, 3840
  store i32 %190, i32* %13, align 4
  br label %201

191:                                              ; preds = %184
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = and i32 %195, 4080
  store i32 %196, i32* %13, align 4
  br label %200

197:                                              ; preds = %191
  %198 = load i32, i32* %13, align 4
  %199 = and i32 %198, 4085
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %197, %194
  br label %201

201:                                              ; preds = %200, %188
  br label %389

202:                                              ; preds = %162
  %203 = load i32, i32* @RATR_INX_WIRELESS_G, align 4
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %13, align 4
  %205 = and i32 %204, 4080
  store i32 %205, i32* %13, align 4
  br label %389

206:                                              ; preds = %162, %162
  %207 = load i32, i32* %15, align 4
  %208 = icmp eq i32 %207, 129
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %210, i32* %14, align 4
  br label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @RATR_INX_WIRELESS_NG, align 4
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %217, %213
  %222 = load i32, i32* %7, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* %13, align 4
  %226 = and i32 %225, 983040
  store i32 %226, i32* %13, align 4
  br label %237

227:                                              ; preds = %221
  %228 = load i32, i32* %7, align 4
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32, i32* %13, align 4
  %232 = and i32 %231, 1044480
  store i32 %232, i32* %13, align 4
  br label %236

233:                                              ; preds = %227
  %234 = load i32, i32* %13, align 4
  %235 = and i32 %234, 1044485
  store i32 %235, i32* %13, align 4
  br label %236

236:                                              ; preds = %233, %230
  br label %237

237:                                              ; preds = %236, %224
  br label %319

238:                                              ; preds = %217
  %239 = load i32, i32* %21, align 4
  %240 = load i32, i32* @RF_1T1R, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %280

242:                                              ; preds = %238
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %242
  %246 = load i32, i32* %7, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32, i32* %13, align 4
  %250 = and i32 %249, 983040
  store i32 %250, i32* %13, align 4
  br label %261

251:                                              ; preds = %245
  %252 = load i32, i32* %7, align 4
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i32, i32* %13, align 4
  %256 = and i32 %255, 1044480
  store i32 %256, i32* %13, align 4
  br label %260

257:                                              ; preds = %251
  %258 = load i32, i32* %13, align 4
  %259 = and i32 %258, 1044501
  store i32 %259, i32* %13, align 4
  br label %260

260:                                              ; preds = %257, %254
  br label %261

261:                                              ; preds = %260, %248
  br label %279

262:                                              ; preds = %242
  %263 = load i32, i32* %7, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* %13, align 4
  %267 = and i32 %266, 983040
  store i32 %267, i32* %13, align 4
  br label %278

268:                                              ; preds = %262
  %269 = load i32, i32* %7, align 4
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32, i32* %13, align 4
  %273 = and i32 %272, 1044480
  store i32 %273, i32* %13, align 4
  br label %277

274:                                              ; preds = %268
  %275 = load i32, i32* %13, align 4
  %276 = and i32 %275, 1044485
  store i32 %276, i32* %13, align 4
  br label %277

277:                                              ; preds = %274, %271
  br label %278

278:                                              ; preds = %277, %265
  br label %279

279:                                              ; preds = %278, %261
  br label %318

280:                                              ; preds = %238
  %281 = load i32, i32* %16, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %280
  %284 = load i32, i32* %7, align 4
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* %13, align 4
  %288 = and i32 %287, 268369920
  store i32 %288, i32* %13, align 4
  br label %299

289:                                              ; preds = %283
  %290 = load i32, i32* %7, align 4
  %291 = icmp eq i32 %290, 2
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* %13, align 4
  %294 = and i32 %293, 268431360
  store i32 %294, i32* %13, align 4
  br label %298

295:                                              ; preds = %289
  %296 = load i32, i32* %13, align 4
  %297 = and i32 %296, 268431381
  store i32 %297, i32* %13, align 4
  br label %298

298:                                              ; preds = %295, %292
  br label %299

299:                                              ; preds = %298, %286
  br label %317

300:                                              ; preds = %280
  %301 = load i32, i32* %7, align 4
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = load i32, i32* %13, align 4
  %305 = and i32 %304, 268369920
  store i32 %305, i32* %13, align 4
  br label %316

306:                                              ; preds = %300
  %307 = load i32, i32* %7, align 4
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i32, i32* %13, align 4
  %311 = and i32 %310, 268431360
  store i32 %311, i32* %13, align 4
  br label %315

312:                                              ; preds = %306
  %313 = load i32, i32* %13, align 4
  %314 = and i32 %313, 268431365
  store i32 %314, i32* %13, align 4
  br label %315

315:                                              ; preds = %312, %309
  br label %316

316:                                              ; preds = %315, %303
  br label %317

317:                                              ; preds = %316, %299
  br label %318

318:                                              ; preds = %317, %279
  br label %319

319:                                              ; preds = %318, %237
  br label %389

320:                                              ; preds = %162
  %321 = load i32, i32* @RATR_INX_WIRELESS_AC_24N, align 4
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %7, align 4
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load i32, i32* %13, align 4
  %326 = and i32 %325, -62980096
  store i32 %326, i32* %13, align 4
  br label %336

327:                                              ; preds = %320
  %328 = load i32, i32* %7, align 4
  %329 = icmp eq i32 %328, 2
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32, i32* %13, align 4
  %332 = and i32 %331, -4096
  store i32 %332, i32* %13, align 4
  br label %335

333:                                              ; preds = %327
  %334 = load i32, i32* %13, align 4
  store i32 %334, i32* %13, align 4
  br label %335

335:                                              ; preds = %333, %330
  br label %336

336:                                              ; preds = %335, %324
  br label %389

337:                                              ; preds = %162
  %338 = load i32, i32* @RATR_INX_WIRELESS_AC_5N, align 4
  store i32 %338, i32* %14, align 4
  %339 = load i32, i32* %21, align 4
  %340 = load i32, i32* @RF_1T1R, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %359

342:                                              ; preds = %337
  %343 = load i32, i32* %7, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load i32, i32* %13, align 4
  %347 = and i32 %346, 4161536
  store i32 %347, i32* %13, align 4
  br label %358

348:                                              ; preds = %342
  %349 = load i32, i32* %7, align 4
  %350 = icmp eq i32 %349, 2
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load i32, i32* %13, align 4
  %353 = and i32 %352, 4190208
  store i32 %353, i32* %13, align 4
  br label %357

354:                                              ; preds = %348
  %355 = load i32, i32* %13, align 4
  %356 = and i32 %355, 4190224
  store i32 %356, i32* %13, align 4
  br label %357

357:                                              ; preds = %354, %351
  br label %358

358:                                              ; preds = %357, %345
  br label %376

359:                                              ; preds = %337
  %360 = load i32, i32* %7, align 4
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i32, i32* %13, align 4
  %364 = and i32 %363, -29392896
  store i32 %364, i32* %13, align 4
  br label %375

365:                                              ; preds = %359
  %366 = load i32, i32* %7, align 4
  %367 = icmp eq i32 %366, 2
  br i1 %367, label %368, label %371

368:                                              ; preds = %365
  %369 = load i32, i32* %13, align 4
  %370 = and i32 %369, -4096
  store i32 %370, i32* %13, align 4
  br label %374

371:                                              ; preds = %365
  %372 = load i32, i32* %13, align 4
  %373 = and i32 %372, -4080
  store i32 %373, i32* %13, align 4
  br label %374

374:                                              ; preds = %371, %368
  br label %375

375:                                              ; preds = %374, %362
  br label %376

376:                                              ; preds = %375, %358
  br label %389

377:                                              ; preds = %162
  %378 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %378, i32* %14, align 4
  %379 = load i32, i32* %21, align 4
  %380 = load i32, i32* @RF_1T2R, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load i32, i32* %13, align 4
  %384 = and i32 %383, 1044735
  store i32 %384, i32* %13, align 4
  br label %388

385:                                              ; preds = %377
  %386 = load i32, i32* %13, align 4
  %387 = and i32 %386, 261091583
  store i32 %387, i32* %13, align 4
  br label %388

388:                                              ; preds = %385, %382
  br label %389

389:                                              ; preds = %388, %376, %336, %319, %202, %201, %183
  %390 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %391 = load i32, i32* %14, align 4
  %392 = load i32, i32* %15, align 4
  %393 = call i32 @rtl_mrate_idx_to_arfr_id(%struct.ieee80211_hw* %390, i32 %391, i32 %392)
  store i32 %393, i32* %14, align 4
  %394 = load i32, i32* %14, align 4
  %395 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %396 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %395, i32 0, i32 1
  store i32 %394, i32* %396, align 4
  %397 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %398 = load i32, i32* %15, align 4
  %399 = load i32, i32* %13, align 4
  %400 = call i32 @_rtl8821ae_set_ra_vht_ratr_bitmap(%struct.ieee80211_hw* %397, i32 %398, i32 %399)
  store i32 %400, i32* %13, align 4
  %401 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %402 = load i32, i32* @COMP_RATR, align 4
  %403 = load i32, i32* @DBG_LOUD, align 4
  %404 = load i32, i32* %13, align 4
  %405 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %401, i32 %402, i32 %403, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %404)
  %406 = load i32, i32* %19, align 4
  %407 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  store i32 %406, i32* %407, align 16
  %408 = load i32, i32* %14, align 4
  %409 = load i32, i32* %17, align 4
  %410 = icmp ne i32 %409, 0
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i32 128, i32 0
  %413 = or i32 %408, %412
  %414 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 1
  store i32 %413, i32* %414, align 4
  %415 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %416 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %8, align 4
  %419 = icmp ne i32 %418, 0
  %420 = xor i1 %419, true
  %421 = zext i1 %420 to i32
  %422 = shl i32 %421, 3
  %423 = or i32 %417, %422
  %424 = load i32, i32* %15, align 4
  %425 = load i32, i32* %13, align 4
  %426 = call i32 @_rtl8821ae_get_vht_eni(i32 %424, i32 %425)
  %427 = or i32 %423, %426
  %428 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %429 = load i32, i32* %19, align 4
  %430 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %431 = load i32, i32* %15, align 4
  %432 = call i32 @_rtl8821ae_get_ra_ldpc(%struct.ieee80211_hw* %428, i32 %429, %struct.rtl_sta_info* %430, i32 %431)
  %433 = or i32 %427, %432
  %434 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 2
  store i32 %433, i32* %434, align 8
  %435 = load i32, i32* %13, align 4
  %436 = and i32 %435, 255
  %437 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 3
  store i32 %436, i32* %437, align 4
  %438 = load i32, i32* %13, align 4
  %439 = and i32 %438, 65280
  %440 = ashr i32 %439, 8
  %441 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 4
  store i32 %440, i32* %441, align 16
  %442 = load i32, i32* %13, align 4
  %443 = and i32 %442, 16711680
  %444 = ashr i32 %443, 16
  %445 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 5
  store i32 %444, i32* %445, align 4
  %446 = load i32, i32* %13, align 4
  %447 = and i32 %446, -16777216
  %448 = lshr i32 %447, 24
  %449 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 6
  store i32 %448, i32* %449, align 8
  %450 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %451 = load i32, i32* @COMP_RATR, align 4
  %452 = load i32, i32* @DBG_DMESG, align 4
  %453 = load i32, i32* %14, align 4
  %454 = load i32, i32* %13, align 4
  %455 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %456 = load i32, i32* %455, align 16
  %457 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 1
  %458 = load i32, i32* %457, align 4
  %459 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 2
  %460 = load i32, i32* %459, align 8
  %461 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 3
  %462 = load i32, i32* %461, align 4
  %463 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 4
  %464 = load i32, i32* %463, align 16
  %465 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 5
  %466 = load i32, i32* %465, align 4
  %467 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 6
  %468 = load i32, i32* %467, align 8
  %469 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %450, i32 %451, i32 %452, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %453, i32 %454, i32 %456, i32 %458, i32 %460, i32 %462, i32 %464, i32 %466, i32 %468)
  %470 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %471 = load i32, i32* @H2C_8821AE_RA_MASK, align 4
  %472 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %473 = call i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw* %470, i32 %471, i32 7, i32* %472)
  %474 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %475 = call i32 @BIT(i32 3)
  %476 = call i32 @_rtl8821ae_set_bcn_ctrl_reg(%struct.ieee80211_hw* %474, i32 %475, i32 0)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @_rtl8821ae_rate_to_bitmap_2ssvht(i32) #1

declare dso_local i32 @_rtl8821ae_get_ra_shortgi(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @_rtl8821ae_get_ra_rftype(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_mrate_idx_to_arfr_id(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl8821ae_set_ra_vht_ratr_bitmap(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl8821ae_get_vht_eni(i32, i32) #1

declare dso_local i32 @_rtl8821ae_get_ra_ldpc(%struct.ieee80211_hw*, i32, %struct.rtl_sta_info*, i32) #1

declare dso_local i32 @rtl8821ae_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

declare dso_local i32 @_rtl8821ae_set_bcn_ctrl_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
