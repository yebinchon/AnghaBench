; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_stats.c_rtl_process_ui_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_stats.c_rtl_process_ui_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_stats = type { i32, i32*, i32*, i32*, i32*, i32*, i64, i32, i64, i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.rtl_phy }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, i32*, i64, i32 }
%struct.rtl_phy = type { i64 }

@PHY_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RX_SMOOTH_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_stats*)* @rtl_process_ui_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_process_ui_rssi(%struct.ieee80211_hw* %0, %struct.rtl_stats* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_stats*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_stats* %1, %struct.rtl_stats** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 1
  store %struct.rtl_phy* %13, %struct.rtl_phy** %6, align 8
  %14 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %305

24:                                               ; preds = %18, %2
  %25 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %27
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %47 = icmp uge i64 %44, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %24
  %49 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, %66
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %48, %24
  %74 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %75 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %76
  store i32 %82, i32* %80, align 8
  %83 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %84 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds i32, i32* %90, i64 %95
  store i32 %85, i32* %97, align 4
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %104 = icmp uge i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %73
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %107 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %73
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %112 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = udiv i64 %116, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 @rtl_translate_todbm(%struct.ieee80211_hw* %124, i64 %126)
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %129 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  store i32 %127, i32* %130, align 8
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %136 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  %137 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %138 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %110
  br label %305

142:                                              ; preds = %110
  %143 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %143, i64* %7, align 8
  br label %144

144:                                              ; preds = %302, %142
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %147 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ult i64 %145, %148
  br i1 %149, label %150, label %305

150:                                              ; preds = %144
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %152 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %150
  %160 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %161 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %7, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %167 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %165, i32* %171, align 4
  br label %172

172:                                              ; preds = %159, %150
  %173 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %174 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %7, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %180 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %7, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %178, %185
  br i1 %186, label %187, label %227

187:                                              ; preds = %172
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %189 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %196 = sub nsw i32 %195, 1
  %197 = mul nsw i32 %194, %196
  %198 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %199 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %7, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %197, %203
  %205 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %206 = sdiv i32 %204, %205
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %208 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %7, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 %206, i32* %212, align 4
  %213 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %214 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %222 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* %7, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 %220, i32* %226, align 4
  br label %253

227:                                              ; preds = %172
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %229 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* %7, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %236 = sub nsw i32 %235, 1
  %237 = mul nsw i32 %234, %236
  %238 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %239 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* %7, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %237, %243
  %245 = load i32, i32* @RX_SMOOTH_FACTOR, align 4
  %246 = sdiv i32 %244, %245
  %247 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %248 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* %7, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32 %246, i32* %252, align 4
  br label %253

253:                                              ; preds = %227, %187
  %254 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %255 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %254, i32 0, i32 5
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* %7, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %261 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* %7, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32 %259, i32* %265, align 4
  %266 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %267 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* %7, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %273 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* %7, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32 %271, i32* %277, align 4
  %278 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %279 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %278, i32 0, i32 3
  %280 = load i32*, i32** %279, align 8
  %281 = load i64, i64* %7, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %285 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* %7, align 8
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32 %283, i32* %289, align 4
  %290 = load %struct.rtl_stats*, %struct.rtl_stats** %4, align 8
  %291 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* %7, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %297 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* %7, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32 %295, i32* %301, align 4
  br label %302

302:                                              ; preds = %253
  %303 = load i64, i64* %7, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %7, align 8
  br label %144

305:                                              ; preds = %23, %141, %144
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_translate_todbm(%struct.ieee80211_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
