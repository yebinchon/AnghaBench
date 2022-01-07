; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_update_hal_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_update_hal_rate_table.c"
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

@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@BT_CSR_BC4 = common dso_local global i64 0, align 8
@BT_SCO = common dso_local global i64 0, align 8
@BT_BUSY = common dso_local global i64 0, align 8
@REG_ARFR0 = common dso_local global i64 0, align 8
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*)* @rtl88ee_update_hal_rate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88ee_update_hal_rate_table(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1) #0 {
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
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  store %struct.rtl_priv* %20, %struct.rtl_priv** %5, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 1
  store %struct.rtl_phy* %22, %struct.rtl_phy** %6, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %23)
  %25 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %24)
  store %struct.rtl_mac* %25, %struct.rtl_mac** %7, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %27)
  store %struct.rtl_hal* %28, %struct.rtl_hal** %8, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %15, align 4
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %16, align 4
  %53 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %54 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %17, align 4
  %56 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %57 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BAND_ON_5G, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %2
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 4
  store i32 %67, i32* %9, align 4
  br label %74

68:                                               ; preds = %2
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 4095, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %74
  %82 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 20
  %90 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 12
  %98 = or i32 %89, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %17, align 4
  switch i32 %101, label %132 [
    i32 131, label %102
    i32 130, label %113
    i32 129, label %116
    i32 128, label %116
  ]

102:                                              ; preds = %81
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 12
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, 13
  store i32 %108, i32* %9, align 4
  br label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 15
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %109, %106
  br label %145

113:                                              ; preds = %81
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 4085
  store i32 %115, i32* %9, align 4
  br label %145

116:                                              ; preds = %81, %81
  store i32 1, i32* %11, align 4
  %117 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %118 = call i32 @get_rf_type(%struct.rtl_phy* %117)
  %119 = load i32, i32* @RF_1T2R, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %123 = call i32 @get_rf_type(%struct.rtl_phy* %122)
  %124 = load i32, i32* @RF_1T1R, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %116
  store i32 1044485, i32* %18, align 4
  br label %128

127:                                              ; preds = %121
  store i32 252702725, i32* %18, align 4
  br label %128

128:                                              ; preds = %127, %126
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %145

132:                                              ; preds = %81
  %133 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %134 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RF_1T2R, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %139, 1044735
  store i32 %140, i32* %9, align 4
  br label %144

141:                                              ; preds = %132
  %142 = load i32, i32* %9, align 4
  %143 = and i32 %142, 252702975
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %128, %113, %112
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %147 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %187

151:                                              ; preds = %145
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %153 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @BT_CSR_BC4, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %151
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %158
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %166 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %164
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %172 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @BT_SCO, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @BT_BUSY, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %177, %170
  %185 = load i32, i32* %9, align 4
  %186 = and i32 %185, 268423104
  store i32 %186, i32* %9, align 4
  br label %190

187:                                              ; preds = %177, %164, %158, %151, %145
  %188 = load i32, i32* %9, align 4
  %189 = and i32 %188, 268435455
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %235

193:                                              ; preds = %190
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %235, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %16, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %235

205:                                              ; preds = %202, %196
  %206 = load i32, i32* %9, align 4
  %207 = or i32 %206, 268435456
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = ashr i32 %208, 12
  store i32 %209, i32* %13, align 4
  store i32 15, i32* %12, align 4
  br label %210

210:                                              ; preds = %221, %205
  %211 = load i32, i32* %12, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %210
  %214 = load i32, i32* %12, align 4
  %215 = shl i32 1, %214
  %216 = load i32, i32* %13, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %224

220:                                              ; preds = %213
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %12, align 4
  br label %210

224:                                              ; preds = %219, %210
  %225 = load i32, i32* %12, align 4
  %226 = shl i32 %225, 12
  %227 = load i32, i32* %12, align 4
  %228 = shl i32 %227, 8
  %229 = or i32 %226, %228
  %230 = load i32, i32* %12, align 4
  %231 = shl i32 %230, 4
  %232 = or i32 %229, %231
  %233 = load i32, i32* %12, align 4
  %234 = or i32 %232, %233
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %224, %202, %199, %190
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %237 = load i64, i64* @REG_ARFR0, align 8
  %238 = load i32, i32* %10, align 4
  %239 = mul nsw i32 %238, 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %237, %240
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @rtl_write_dword(%struct.rtl_priv* %236, i64 %241, i32 %242)
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %245 = load i32, i32* @COMP_RATR, align 4
  %246 = load i32, i32* @DBG_DMESG, align 4
  %247 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %248 = load i64, i64* @REG_ARFR0, align 8
  %249 = call i32 @rtl_read_dword(%struct.rtl_priv* %247, i64 %248)
  %250 = call i32 @RT_TRACE(%struct.rtl_priv* %244, i32 %245, i32 %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %249)
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
