; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_dm_tx_pwr_track_set_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_dm_tx_pwr_track_set_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32** }
%struct.rtl_dm = type { i32, i32, i64, i32*, i32 }

@TXAGC = common dso_local global i32 0, align 4
@BBSWING = common dso_local global i32 0, align 4
@cck_tbl_ch1_13 = common dso_local global i32** null, align 8
@cck_tbl_ch14 = common dso_local global i32** null, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i64, i64)* @dm_tx_pwr_track_set_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_tx_pwr_track_set_pwr(%struct.ieee80211_hw* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca %struct.rtl_dm*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %9, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %17)
  store %struct.rtl_dm* %18, %struct.rtl_dm** %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TXAGC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %4
  %23 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %24 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %29 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27, %22
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %34 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %35 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @rtl88e_phy_set_txpower_level(%struct.ieee80211_hw* %33, i32 %36)
  %38 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %39 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %41 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %27
  br label %290

43:                                               ; preds = %4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BBSWING, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %288

47:                                               ; preds = %43
  %48 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %49 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %133, label %52

52:                                               ; preds = %47
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %54 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %55 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %56 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rtl_write_byte(%struct.rtl_priv* %53, i32 2594, i32 %61)
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %64 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %65 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %66 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rtl_write_byte(%struct.rtl_priv* %63, i32 2595, i32 %71)
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %74 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %75 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %76 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32*, i32** %74, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rtl_write_byte(%struct.rtl_priv* %73, i32 2596, i32 %81)
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %84 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %85 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %86 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32*, i32** %84, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @rtl_write_byte(%struct.rtl_priv* %83, i32 2597, i32 %91)
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %94 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %95 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %96 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32*, i32** %94, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @rtl_write_byte(%struct.rtl_priv* %93, i32 2598, i32 %101)
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %104 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %105 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %106 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32*, i32** %104, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @rtl_write_byte(%struct.rtl_priv* %103, i32 2599, i32 %111)
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %114 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %115 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %116 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32*, i32** %114, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @rtl_write_byte(%struct.rtl_priv* %113, i32 2600, i32 %121)
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %124 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %125 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %126 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32*, i32** %124, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 7
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rtl_write_byte(%struct.rtl_priv* %123, i32 2601, i32 %131)
  br label %214

133:                                              ; preds = %47
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %135 = load i32**, i32*** @cck_tbl_ch14, align 8
  %136 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %137 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32*, i32** %135, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @rtl_write_byte(%struct.rtl_priv* %134, i32 2594, i32 %142)
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %145 = load i32**, i32*** @cck_tbl_ch14, align 8
  %146 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %147 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32*, i32** %145, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @rtl_write_byte(%struct.rtl_priv* %144, i32 2595, i32 %152)
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %155 = load i32**, i32*** @cck_tbl_ch14, align 8
  %156 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %157 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32*, i32** %155, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rtl_write_byte(%struct.rtl_priv* %154, i32 2596, i32 %162)
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %165 = load i32**, i32*** @cck_tbl_ch14, align 8
  %166 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %167 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32*, i32** %165, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @rtl_write_byte(%struct.rtl_priv* %164, i32 2597, i32 %172)
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %175 = load i32**, i32*** @cck_tbl_ch14, align 8
  %176 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %177 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32*, i32** %175, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @rtl_write_byte(%struct.rtl_priv* %174, i32 2598, i32 %182)
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %185 = load i32**, i32*** @cck_tbl_ch14, align 8
  %186 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %187 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32*, i32** %185, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 5
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @rtl_write_byte(%struct.rtl_priv* %184, i32 2599, i32 %192)
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %195 = load i32**, i32*** @cck_tbl_ch14, align 8
  %196 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %197 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32*, i32** %195, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 6
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @rtl_write_byte(%struct.rtl_priv* %194, i32 2600, i32 %202)
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %205 = load i32**, i32*** @cck_tbl_ch14, align 8
  %206 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %207 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32*, i32** %205, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 7
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @rtl_write_byte(%struct.rtl_priv* %204, i32 2601, i32 %212)
  br label %214

214:                                              ; preds = %133, %52
  %215 = load i64, i64* %7, align 8
  %216 = load i64, i64* @RF90_PATH_A, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %220 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %221 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %7, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i64, i64* %7, align 8
  %227 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %228 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %227, i32 0, i32 0
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = load i64, i64* %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %239 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %238, i32 0, i32 0
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = load i64, i64* %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32**, i32*** %243, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @rtl88e_set_iqk_matrix(%struct.ieee80211_hw* %219, i32 %225, i64 %226, i32 %237, i32 %248)
  br label %287

250:                                              ; preds = %214
  %251 = load i64, i64* %7, align 8
  %252 = load i64, i64* @RF90_PATH_B, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %286

254:                                              ; preds = %250
  %255 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %256 = load %struct.rtl_dm*, %struct.rtl_dm** %11, align 8
  %257 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* %7, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i64, i64* %7, align 8
  %263 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %264 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %263, i32 0, i32 0
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = load i64, i64* %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i32**, i32*** %268, align 8
  %270 = getelementptr inbounds i32*, i32** %269, i64 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %275 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %274, i32 0, i32 0
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = load i64, i64* %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32**, i32*** %279, align 8
  %281 = getelementptr inbounds i32*, i32** %280, i64 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 5
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @rtl88e_set_iqk_matrix(%struct.ieee80211_hw* %255, i32 %261, i64 %262, i32 %273, i32 %284)
  br label %286

286:                                              ; preds = %254, %250
  br label %287

287:                                              ; preds = %286, %218
  br label %289

288:                                              ; preds = %43
  br label %290

289:                                              ; preds = %287
  br label %290

290:                                              ; preds = %288, %289, %42
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl88e_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl88e_set_iqk_matrix(%struct.ieee80211_hw*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
