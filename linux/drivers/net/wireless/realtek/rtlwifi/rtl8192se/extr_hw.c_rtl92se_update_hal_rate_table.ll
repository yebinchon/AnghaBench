; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_update_hal_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_update_hal_rate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.rtl_phy }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i32, i32, i32, i64 }
%struct.rtl_hal = type { i64 }

@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@VERSION_8192S_BCUT = common dso_local global i64 0, align 8
@VERSION_8192S_ACUT = common dso_local global i64 0, align 8
@SG_RATE = common dso_local global i32 0, align 4
@ARFR0 = common dso_local global i64 0, align 8
@FW_CMD_RA_REFRESH_N = common dso_local global i32 0, align 4
@FW_CMD_RA_REFRESH_BG = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*)* @rtl92se_update_hal_rate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92se_update_hal_rate_table(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
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
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %5, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 1
  store %struct.rtl_phy* %23, %struct.rtl_phy** %6, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %25)
  store %struct.rtl_mac* %26, %struct.rtl_mac** %7, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %28)
  store %struct.rtl_hal* %29, %struct.rtl_hal** %8, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %31 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %17, align 4
  %55 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %56 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %18, align 4
  %58 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %59 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BAND_ON_5G, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %2
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 4
  store i32 %69, i32* %9, align 4
  br label %76

70:                                               ; preds = %2
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 4095, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 20
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 12
  %100 = or i32 %91, %99
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %18, align 4
  switch i32 %103, label %144 [
    i32 131, label %104
    i32 130, label %107
    i32 129, label %110
    i32 128, label %110
  ]

104:                                              ; preds = %83
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 13
  store i32 %106, i32* %9, align 4
  br label %157

107:                                              ; preds = %83
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 4085
  store i32 %109, i32* %9, align 4
  br label %157

110:                                              ; preds = %83, %83
  store i32 1, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 520197
  store i32 %116, i32* %9, align 4
  br label %143

117:                                              ; preds = %110
  %118 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %119 = call i32 @get_rf_type(%struct.rtl_phy* %118)
  %120 = load i32, i32* @RF_1T2R, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %124 = call i32 @get_rf_type(%struct.rtl_phy* %123)
  %125 = load i32, i32* @RF_1T1R, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %122, %117
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 1044501, i32* %19, align 4
  br label %132

131:                                              ; preds = %127
  store i32 1044485, i32* %19, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %139

133:                                              ; preds = %122
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 252702741, i32* %19, align 4
  br label %138

137:                                              ; preds = %133
  store i32 252702725, i32* %19, align 4
  br label %138

138:                                              ; preds = %137, %136
  br label %139

139:                                              ; preds = %138, %132
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %139, %114
  br label %157

144:                                              ; preds = %83
  %145 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %146 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RF_1T2R, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, 1044735
  store i32 %152, i32* %9, align 4
  br label %156

153:                                              ; preds = %144
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, 252702975
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %143, %107, %104
  %158 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %159 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @VERSION_8192S_BCUT, align 8
  %163 = icmp sge i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 268435455
  store i32 %166, i32* %9, align 4
  br label %178

167:                                              ; preds = %157
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %169 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @VERSION_8192S_ACUT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %175, 268435440
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %174, %167
  br label %178

178:                                              ; preds = %177, %164
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %227

181:                                              ; preds = %178
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %184, %181
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %227, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %227

193:                                              ; preds = %190, %184
  %194 = load i32, i32* %9, align 4
  %195 = or i32 %194, 268435456
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = ashr i32 %196, 12
  store i32 %197, i32* %14, align 4
  store i32 15, i32* %13, align 4
  br label %198

198:                                              ; preds = %209, %193
  %199 = load i32, i32* %13, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load i32, i32* %13, align 4
  %203 = shl i32 1, %202
  %204 = load i32, i32* %14, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %212

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %13, align 4
  br label %198

212:                                              ; preds = %207, %198
  %213 = load i32, i32* %13, align 4
  %214 = shl i32 %213, 12
  %215 = load i32, i32* %13, align 4
  %216 = shl i32 %215, 8
  %217 = or i32 %214, %216
  %218 = load i32, i32* %13, align 4
  %219 = shl i32 %218, 4
  %220 = or i32 %217, %219
  %221 = load i32, i32* %13, align 4
  %222 = or i32 %220, %221
  store i32 %222, i32* %13, align 4
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %224 = load i32, i32* @SG_RATE, align 4
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @rtl_write_byte(%struct.rtl_priv* %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %212, %190, %187, %178
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %229 = load i64, i64* @ARFR0, align 8
  %230 = load i32, i32* %10, align 4
  %231 = mul nsw i32 %230, 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %229, %232
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @rtl_write_dword(%struct.rtl_priv* %228, i64 %233, i32 %234)
  %236 = load i32, i32* %9, align 4
  %237 = and i32 %236, -4096
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %227
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %241 = load i32, i32* @FW_CMD_RA_REFRESH_N, align 4
  %242 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %240, i32 %241)
  br label %247

243:                                              ; preds = %227
  %244 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %245 = load i32, i32* @FW_CMD_RA_REFRESH_BG, align 4
  %246 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %239
  %248 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %249 = load i32, i32* @COMP_RATR, align 4
  %250 = load i32, i32* @DBG_DMESG, align 4
  %251 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %252 = load i64, i64* @ARFR0, align 8
  %253 = call i32 @rtl_read_dword(%struct.rtl_priv* %251, i64 %252)
  %254 = call i32 @RT_TRACE(%struct.rtl_priv* %248, i32 %249, i32 %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %253)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
