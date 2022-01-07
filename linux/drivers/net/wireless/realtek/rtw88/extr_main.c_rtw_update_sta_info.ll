; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_update_sta_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_update_sta_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal, %struct.rtw_efuse }
%struct.rtw_hal = type { i64 }
%struct.rtw_efuse = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rtw_sta_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32*, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, i64 }

@RF_1T1R = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_MASK = common dso_local global i32 0, align 4
@VHT_STBC_EN = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@VHT_LDPC_EN = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@HT_STBC_EN = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@HT_LDPC_EN = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@RTW_BAND_5G = common dso_local global i64 0, align 8
@RA_MASK_VHT_RATES = common dso_local global i32 0, align 4
@RA_MASK_OFDM_IN_VHT = common dso_local global i32 0, align 4
@WIRELESS_OFDM = common dso_local global i32 0, align 4
@WIRELESS_VHT = common dso_local global i32 0, align 4
@RA_MASK_HT_RATES = common dso_local global i32 0, align 4
@RA_MASK_OFDM_IN_HT_5G = common dso_local global i32 0, align 4
@WIRELESS_HT = common dso_local global i32 0, align 4
@RTW_BAND_2G = common dso_local global i64 0, align 8
@RA_MASK_CCK_IN_VHT = common dso_local global i32 0, align 4
@WIRELESS_CCK = common dso_local global i32 0, align 4
@RA_MASK_CCK_IN_HT = common dso_local global i32 0, align 4
@RA_MASK_OFDM_IN_HT_2G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown band type\0A\00", align 1
@RA_MASK_VHT_RATES_1SS = common dso_local global i32 0, align 4
@RA_MASK_HT_RATES_1SS = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_update_sta_info(%struct.rtw_dev* %0, %struct.rtw_sta_info* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_sta_info*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca %struct.rtw_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_sta_info* %1, %struct.rtw_sta_info** %4, align 8
  %19 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %20 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %19, i32 0, i32 10
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %20, align 8
  store %struct.ieee80211_sta* %21, %struct.ieee80211_sta** %5, align 8
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %22, i32 0, i32 1
  store %struct.rtw_efuse* %23, %struct.rtw_efuse** %6, align 8
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %24, i32 0, i32 0
  store %struct.rtw_hal* %25, %struct.rtw_hal** %7, align 8
  %26 = load i32, i32* @RF_1T1R, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %2
  store i32 1, i32* %17, align 4
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %34 = call i32 @get_vht_ra_mask(%struct.ieee80211_sta* %33)
  %35 = load i32, i32* %16, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %16, align 4
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @VHT_STBC_EN, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %32
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @VHT_LDPC_EN, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %18, align 4
  br label %65

65:                                               ; preds = %64, %56
  br label %132

66:                                               ; preds = %2
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %131

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 20
  %82 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 12
  %91 = or i32 %81, %90
  %92 = load i32, i32* %16, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %16, align 4
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %72
  %102 = load i32, i32* @HT_STBC_EN, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %101, %72
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @HT_LDPC_EN, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %103
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121, %113
  store i32 1, i32* %18, align 4
  br label %130

130:                                              ; preds = %129, %121
  br label %131

131:                                              ; preds = %130, %66
  br label %132

132:                                              ; preds = %131, %65
  %133 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %134 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RTW_BAND_5G, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %132
  %139 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %140 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 4
  %146 = load i32, i32* %16, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %16, align 4
  %148 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %138
  %154 = load i32, i32* @RA_MASK_VHT_RATES, align 4
  %155 = load i32, i32* @RA_MASK_OFDM_IN_VHT, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %16, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* @WIRELESS_OFDM, align 4
  %160 = load i32, i32* @WIRELESS_VHT, align 4
  %161 = or i32 %159, %160
  store i32 %161, i32* %9, align 4
  br label %180

162:                                              ; preds = %138
  %163 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %164 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %162
  %169 = load i32, i32* @RA_MASK_HT_RATES, align 4
  %170 = load i32, i32* @RA_MASK_OFDM_IN_HT_5G, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %16, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* @WIRELESS_OFDM, align 4
  %175 = load i32, i32* @WIRELESS_HT, align 4
  %176 = or i32 %174, %175
  store i32 %176, i32* %9, align 4
  br label %179

177:                                              ; preds = %162
  %178 = load i32, i32* @WIRELESS_OFDM, align 4
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %177, %168
  br label %180

180:                                              ; preds = %179, %153
  br label %255

181:                                              ; preds = %132
  %182 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %183 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @RTW_BAND_2G, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %251

187:                                              ; preds = %181
  %188 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %189 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %16, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %16, align 4
  %196 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %197 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %187
  %202 = load i32, i32* @RA_MASK_VHT_RATES, align 4
  %203 = load i32, i32* @RA_MASK_CCK_IN_VHT, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @RA_MASK_OFDM_IN_VHT, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* %16, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* @WIRELESS_CCK, align 4
  %210 = load i32, i32* @WIRELESS_OFDM, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @WIRELESS_HT, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @WIRELESS_VHT, align 4
  %215 = or i32 %213, %214
  store i32 %215, i32* %9, align 4
  br label %250

216:                                              ; preds = %187
  %217 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %218 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %216
  %223 = load i32, i32* @RA_MASK_HT_RATES, align 4
  %224 = load i32, i32* @RA_MASK_CCK_IN_HT, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @RA_MASK_OFDM_IN_HT_2G, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %16, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %16, align 4
  %230 = load i32, i32* @WIRELESS_CCK, align 4
  %231 = load i32, i32* @WIRELESS_OFDM, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @WIRELESS_HT, align 4
  %234 = or i32 %232, %233
  store i32 %234, i32* %9, align 4
  br label %249

235:                                              ; preds = %216
  %236 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %237 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp sle i32 %240, 15
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = load i32, i32* @WIRELESS_CCK, align 4
  store i32 %243, i32* %9, align 4
  br label %248

244:                                              ; preds = %235
  %245 = load i32, i32* @WIRELESS_CCK, align 4
  %246 = load i32, i32* @WIRELESS_OFDM, align 4
  %247 = or i32 %245, %246
  store i32 %247, i32* %9, align 4
  br label %248

248:                                              ; preds = %244, %242
  br label %249

249:                                              ; preds = %248, %222
  br label %250

250:                                              ; preds = %249, %201
  br label %254

251:                                              ; preds = %181
  %252 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %253 = call i32 @rtw_err(%struct.rtw_dev* %252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %254

254:                                              ; preds = %251, %250
  br label %255

255:                                              ; preds = %254, %180
  %256 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %257 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %268

261:                                              ; preds = %255
  %262 = load i32, i32* @RA_MASK_VHT_RATES_1SS, align 4
  %263 = load i32, i32* %16, align 4
  %264 = and i32 %263, %262
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* @RA_MASK_HT_RATES_1SS, align 4
  %266 = load i32, i32* %16, align 4
  %267 = and i32 %266, %265
  store i32 %267, i32* %16, align 4
  br label %268

268:                                              ; preds = %261, %255
  %269 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %270 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  switch i32 %271, label %276 [
    i32 128, label %272
    i32 129, label %274
  ]

272:                                              ; preds = %268
  %273 = load i32, i32* @RTW_CHANNEL_WIDTH_80, align 4
  store i32 %273, i32* %10, align 4
  br label %278

274:                                              ; preds = %268
  %275 = load i32, i32* @RTW_CHANNEL_WIDTH_40, align 4
  store i32 %275, i32* %10, align 4
  br label %278

276:                                              ; preds = %268
  %277 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  store i32 %277, i32* %10, align 4
  br label %278

278:                                              ; preds = %276, %274, %272
  %279 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %280 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %278
  %285 = load i32, i32* %16, align 4
  %286 = and i32 %285, -4194304
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  store i32 2, i32* %15, align 4
  %289 = load i32, i32* @RF_2T2R, align 4
  store i32 %289, i32* %12, align 4
  br label %303

290:                                              ; preds = %284, %278
  %291 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %292 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %290
  %297 = load i32, i32* %16, align 4
  %298 = and i32 %297, -1048576
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  store i32 2, i32* %15, align 4
  %301 = load i32, i32* @RF_2T2R, align 4
  store i32 %301, i32* %12, align 4
  br label %302

302:                                              ; preds = %300, %296, %290
  br label %303

303:                                              ; preds = %302, %288
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* %15, align 4
  %307 = call i32 @get_rate_id(i32 %304, i32 %305, i32 %306)
  store i32 %307, i32* %11, align 4
  %308 = load i32, i32* %9, align 4
  %309 = load i32, i32* @WIRELESS_CCK, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %367

311:                                              ; preds = %303
  %312 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %313 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  store i32 %314, i32* %8, align 4
  %315 = load i32, i32* %8, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %311
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %16, align 4
  br label %366

321:                                              ; preds = %311
  %322 = load i32, i32* %8, align 4
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load i32, i32* %16, align 4
  %326 = sext i32 %325 to i64
  %327 = and i64 %326, -16
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %16, align 4
  br label %365

329:                                              ; preds = %321
  %330 = load i32, i32* %8, align 4
  %331 = icmp eq i32 %330, 2
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load i32, i32* %16, align 4
  %334 = sext i32 %333 to i64
  %335 = and i64 %334, -4128
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %16, align 4
  br label %364

337:                                              ; preds = %329
  %338 = load i32, i32* %8, align 4
  %339 = icmp eq i32 %338, 3
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = load i32, i32* %16, align 4
  %342 = sext i32 %341 to i64
  %343 = and i64 %342, -12352
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %16, align 4
  br label %363

345:                                              ; preds = %337
  %346 = load i32, i32* %8, align 4
  %347 = icmp eq i32 %346, 4
  br i1 %347, label %348, label %353

348:                                              ; preds = %345
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = and i64 %350, -28800
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %16, align 4
  br label %362

353:                                              ; preds = %345
  %354 = load i32, i32* %8, align 4
  %355 = icmp sge i32 %354, 5
  br i1 %355, label %356, label %361

356:                                              ; preds = %353
  %357 = load i32, i32* %16, align 4
  %358 = sext i32 %357 to i64
  %359 = and i64 %358, -61696
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %16, align 4
  br label %361

361:                                              ; preds = %356, %353
  br label %362

362:                                              ; preds = %361, %348
  br label %363

363:                                              ; preds = %362, %340
  br label %364

364:                                              ; preds = %363, %332
  br label %365

365:                                              ; preds = %364, %324
  br label %366

366:                                              ; preds = %365, %317
  br label %367

367:                                              ; preds = %366, %303
  %368 = load i32, i32* %10, align 4
  %369 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %370 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  %371 = load i32, i32* %13, align 4
  %372 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %373 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %372, i32 0, i32 2
  store i32 %371, i32* %373, align 8
  %374 = load i32, i32* %14, align 4
  %375 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %376 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %375, i32 0, i32 3
  store i32 %374, i32* %376, align 4
  %377 = load i32, i32* %12, align 4
  %378 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %379 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %378, i32 0, i32 4
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* %9, align 4
  %381 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %382 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %381, i32 0, i32 5
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* %18, align 4
  %384 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %385 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %384, i32 0, i32 6
  store i32 %383, i32* %385, align 8
  %386 = load i32, i32* %17, align 4
  %387 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %388 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %387, i32 0, i32 7
  store i32 %386, i32* %388, align 4
  %389 = load i32, i32* %16, align 4
  %390 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %391 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %390, i32 0, i32 8
  store i32 %389, i32* %391, align 8
  %392 = load i32, i32* %11, align 4
  %393 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %394 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %393, i32 0, i32 9
  store i32 %392, i32* %394, align 4
  %395 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %396 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %4, align 8
  %397 = call i32 @rtw_fw_send_ra_info(%struct.rtw_dev* %395, %struct.rtw_sta_info* %396)
  ret void
}

declare dso_local i32 @get_vht_ra_mask(%struct.ieee80211_sta*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @get_rate_id(i32, i32, i32) #1

declare dso_local i32 @rtw_fw_send_ra_info(%struct.rtw_dev*, %struct.rtw_sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
