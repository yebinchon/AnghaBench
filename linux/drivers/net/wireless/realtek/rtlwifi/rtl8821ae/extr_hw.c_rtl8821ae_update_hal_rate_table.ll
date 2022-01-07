; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_update_hal_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_update_hal_rate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.rtl_phy }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
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
@BT_CSR_BC4 = common dso_local global i64 0, align 8
@BT_SCO = common dso_local global i64 0, align 8
@BT_BUSY = common dso_local global i64 0, align 8
@REG_ARFR0 = common dso_local global i64 0, align 8
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*)* @rtl8821ae_update_hal_rate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_update_hal_rate_table(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1) #0 {
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
  switch i32 %103, label %142 [
    i32 131, label %104
    i32 130, label %115
    i32 129, label %118
    i32 128, label %118
  ]

104:                                              ; preds = %83
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 12
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 13
  store i32 %110, i32* %9, align 4
  br label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 15
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %155

115:                                              ; preds = %83
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 4085
  store i32 %117, i32* %9, align 4
  br label %155

118:                                              ; preds = %83, %83
  store i32 1, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 520197
  store i32 %124, i32* %9, align 4
  br label %141

125:                                              ; preds = %118
  %126 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %127 = call i32 @get_rf_type(%struct.rtl_phy* %126)
  %128 = load i32, i32* @RF_1T2R, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %132 = call i32 @get_rf_type(%struct.rtl_phy* %131)
  %133 = load i32, i32* @RF_1T1R, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %125
  store i32 1044485, i32* %19, align 4
  br label %137

136:                                              ; preds = %130
  store i32 252702725, i32* %19, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %137, %122
  br label %155

142:                                              ; preds = %83
  %143 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %144 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RF_1T2R, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %149, 1044735
  store i32 %150, i32* %9, align 4
  br label %154

151:                                              ; preds = %142
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 252702975
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %141, %115, %114
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %197

161:                                              ; preds = %155
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %163 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @BT_CSR_BC4, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %197

168:                                              ; preds = %161
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %170 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %168
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %176 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %174
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %182 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @BT_SCO, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %194, label %187

187:                                              ; preds = %180
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %189 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @BT_BUSY, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %187, %180
  %195 = load i32, i32* %9, align 4
  %196 = and i32 %195, 268423104
  store i32 %196, i32* %9, align 4
  br label %200

197:                                              ; preds = %187, %174, %168, %161, %155
  %198 = load i32, i32* %9, align 4
  %199 = and i32 %198, 268435455
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %245

203:                                              ; preds = %200
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %245, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %17, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %245

215:                                              ; preds = %212, %206
  %216 = load i32, i32* %9, align 4
  %217 = or i32 %216, 268435456
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = ashr i32 %218, 12
  store i32 %219, i32* %14, align 4
  store i32 15, i32* %13, align 4
  br label %220

220:                                              ; preds = %231, %215
  %221 = load i32, i32* %13, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %220
  %224 = load i32, i32* %13, align 4
  %225 = shl i32 1, %224
  %226 = load i32, i32* %14, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %234

230:                                              ; preds = %223
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %13, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %13, align 4
  br label %220

234:                                              ; preds = %229, %220
  %235 = load i32, i32* %13, align 4
  %236 = shl i32 %235, 12
  %237 = load i32, i32* %13, align 4
  %238 = shl i32 %237, 8
  %239 = or i32 %236, %238
  %240 = load i32, i32* %13, align 4
  %241 = shl i32 %240, 4
  %242 = or i32 %239, %241
  %243 = load i32, i32* %13, align 4
  %244 = or i32 %242, %243
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %234, %212, %209, %200
  %246 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %247 = load i64, i64* @REG_ARFR0, align 8
  %248 = load i32, i32* %10, align 4
  %249 = mul nsw i32 %248, 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %247, %250
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @rtl_write_dword(%struct.rtl_priv* %246, i64 %251, i32 %252)
  %254 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %255 = load i32, i32* @COMP_RATR, align 4
  %256 = load i32, i32* @DBG_DMESG, align 4
  %257 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %258 = load i64, i64* @REG_ARFR0, align 8
  %259 = call i32 @rtl_read_dword(%struct.rtl_priv* %257, i64 %258)
  %260 = call i32 @RT_TRACE(%struct.rtl_priv* %254, i32 %255, i32 %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %259)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
