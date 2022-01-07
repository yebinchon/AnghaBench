; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_tx_power_track_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_tx_power_track_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32** }
%struct.rtl_dm = type { i64, i64*, i32 }

@TXAGC = common dso_local global i32 0, align 4
@BBSWING = common dso_local global i32 0, align 4
@CCK_TABLE_SIZE = common dso_local global i64 0, align 8
@cckswing_table_ch1ch13 = common dso_local global i32** null, align 8
@cckswing_table_ch14 = common dso_local global i32** null, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i64, i64)* @rtl8723be_dm_tx_power_track_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_dm_tx_power_track_set_power(%struct.ieee80211_hw* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca %struct.rtl_dm*, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %9, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  store %struct.rtl_phy* %16, %struct.rtl_phy** %10, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %18)
  store %struct.rtl_dm* %19, %struct.rtl_dm** %11, align 8
  store i64 36, i64* %12, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TXAGC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %26 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rtl8723be_phy_set_txpower_level(%struct.ieee80211_hw* %24, i32 %27)
  br label %319

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BBSWING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %317

33:                                               ; preds = %29
  %34 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %35 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CCK_TABLE_SIZE, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i64, i64* @CCK_TABLE_SIZE, align 8
  %41 = sub i64 %40, 1
  %42 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %43 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %46 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %130, label %49

49:                                               ; preds = %44
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %51 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %52 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %53 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtl_write_byte(%struct.rtl_priv* %50, i32 2594, i32 %58)
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %61 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %62 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %63 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rtl_write_byte(%struct.rtl_priv* %60, i32 2595, i32 %68)
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %71 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %72 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %73 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32*, i32** %71, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rtl_write_byte(%struct.rtl_priv* %70, i32 2596, i32 %78)
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %81 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %82 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %83 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32*, i32** %81, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rtl_write_byte(%struct.rtl_priv* %80, i32 2597, i32 %88)
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %91 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %92 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %93 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rtl_write_byte(%struct.rtl_priv* %90, i32 2598, i32 %98)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %101 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %102 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %103 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32*, i32** %101, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rtl_write_byte(%struct.rtl_priv* %100, i32 2599, i32 %108)
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %111 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %112 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %113 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32*, i32** %111, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @rtl_write_byte(%struct.rtl_priv* %110, i32 2600, i32 %118)
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %121 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %122 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %123 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32*, i32** %121, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @rtl_write_byte(%struct.rtl_priv* %120, i32 2601, i32 %128)
  br label %211

130:                                              ; preds = %44
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %132 = load i32**, i32*** @cckswing_table_ch14, align 8
  %133 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %134 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32*, i32** %132, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @rtl_write_byte(%struct.rtl_priv* %131, i32 2594, i32 %139)
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %142 = load i32**, i32*** @cckswing_table_ch14, align 8
  %143 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %144 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32*, i32** %142, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @rtl_write_byte(%struct.rtl_priv* %141, i32 2595, i32 %149)
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %152 = load i32**, i32*** @cckswing_table_ch14, align 8
  %153 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %154 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32*, i32** %152, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @rtl_write_byte(%struct.rtl_priv* %151, i32 2596, i32 %159)
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %162 = load i32**, i32*** @cckswing_table_ch14, align 8
  %163 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %164 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32*, i32** %162, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @rtl_write_byte(%struct.rtl_priv* %161, i32 2597, i32 %169)
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %172 = load i32**, i32*** @cckswing_table_ch14, align 8
  %173 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %174 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32*, i32** %172, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @rtl_write_byte(%struct.rtl_priv* %171, i32 2598, i32 %179)
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %182 = load i32**, i32*** @cckswing_table_ch14, align 8
  %183 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %184 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32*, i32** %182, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 5
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @rtl_write_byte(%struct.rtl_priv* %181, i32 2599, i32 %189)
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %192 = load i32**, i32*** @cckswing_table_ch14, align 8
  %193 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %194 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32*, i32** %192, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 6
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @rtl_write_byte(%struct.rtl_priv* %191, i32 2600, i32 %199)
  %201 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %202 = load i32**, i32*** @cckswing_table_ch14, align 8
  %203 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %204 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32*, i32** %202, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 7
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @rtl_write_byte(%struct.rtl_priv* %201, i32 2601, i32 %209)
  br label %211

211:                                              ; preds = %130, %49
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* @RF90_PATH_A, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %263

215:                                              ; preds = %211
  %216 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %217 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = load i64, i64* @RF90_PATH_A, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %12, align 8
  %223 = icmp ult i64 %221, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %215
  %225 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %226 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* @RF90_PATH_A, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %12, align 8
  br label %231

231:                                              ; preds = %224, %215
  %232 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %233 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %234 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %233, i32 0, i32 1
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* %7, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %7, align 8
  %240 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %241 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %240, i32 0, i32 0
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = load i64, i64* %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32**, i32*** %245, align 8
  %247 = getelementptr inbounds i32*, i32** %246, i64 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %252 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %251, i32 0, i32 0
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = load i64, i64* %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32**, i32*** %256, align 8
  %258 = getelementptr inbounds i32*, i32** %257, i64 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @rtl8723be_set_iqk_matrix(%struct.ieee80211_hw* %232, i64 %238, i64 %239, i32 %250, i32 %261)
  br label %316

263:                                              ; preds = %211
  %264 = load i64, i64* %7, align 8
  %265 = load i64, i64* @RF90_PATH_B, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %315

267:                                              ; preds = %263
  %268 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %269 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %268, i32 0, i32 1
  %270 = load i64*, i64** %269, align 8
  %271 = load i64, i64* @RF90_PATH_B, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* %12, align 8
  %275 = icmp ult i64 %273, %274
  br i1 %275, label %276, label %283

276:                                              ; preds = %267
  %277 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %278 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = load i64, i64* @RF90_PATH_B, align 8
  %281 = getelementptr inbounds i64, i64* %279, i64 %280
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %12, align 8
  br label %283

283:                                              ; preds = %276, %267
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %285 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %286 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* %7, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %7, align 8
  %292 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %293 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %292, i32 0, i32 0
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = load i64, i64* %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32**, i32*** %297, align 8
  %299 = getelementptr inbounds i32*, i32** %298, i64 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 4
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %304 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %303, i32 0, i32 0
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** %304, align 8
  %306 = load i64, i64* %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i32**, i32*** %308, align 8
  %310 = getelementptr inbounds i32*, i32** %309, i64 0
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 5
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @rtl8723be_set_iqk_matrix(%struct.ieee80211_hw* %284, i64 %290, i64 %291, i32 %302, i32 %313)
  br label %315

315:                                              ; preds = %283, %263
  br label %316

316:                                              ; preds = %315, %231
  br label %318

317:                                              ; preds = %29
  br label %319

318:                                              ; preds = %316
  br label %319

319:                                              ; preds = %317, %318, %23
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8723be_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl8723be_set_iqk_matrix(%struct.ieee80211_hw*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
