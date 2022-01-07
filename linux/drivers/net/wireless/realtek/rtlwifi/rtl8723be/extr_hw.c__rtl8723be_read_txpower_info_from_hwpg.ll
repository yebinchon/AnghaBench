; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_read_txpower_info_from_hwpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_read_txpower_info_from_hwpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32*, i32, i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info_2g = type { i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info_5g = type { i32 }

@MAX_TX_COUNT = common dso_local global i32 0, align 4
@FINIT = common dso_local global i32 0, align 4
@INIT_TXPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S ] = [0x%x / 0x%x ]\0A\00", align 1
@EEPROM_THERMAL_METER_88E = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_THERMALMETER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"thermalmeter = 0x%x\0A\00", align 1
@EEPROM_RF_BOARD_OPTION_88E = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @_rtl8723be_read_txpower_info_from_hwpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_efuse*, align 8
  %9 = alloca %struct.txpower_info_2g, align 8
  %10 = alloca %struct.txpower_info_5g, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %7, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %17)
  store %struct.rtl_efuse* %18, %struct.rtl_efuse** %8, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @_rtl8723be_read_power_value_fromprom(%struct.ieee80211_hw* %19, %struct.txpower_info_2g* %9, %struct.txpower_info_5g* %10, i32 %20, i32* %21)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %183, %3
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %186

26:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 14
  br i1 %29, label %30, label %77

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @_rtl8723be_get_chnl_group(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 4
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %45 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %44, i32 0, i32 5
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %43, i32* %53, align 4
  %54 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 3
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %65 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %64, i32 0, i32 4
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %63, i32* %73, align 4
  br label %74

74:                                               ; preds = %30
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %27

77:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %143, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @MAX_TX_COUNT, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %146

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 2
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %94 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %93, i32 0, i32 8
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %92, i32* %102, align 4
  %103 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %114 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %113, i32 0, i32 7
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %112, i32* %122, align 4
  %123 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %134 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %133, i32 0, i32 6
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %132, i32* %142, align 4
  br label %143

143:                                              ; preds = %82
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %78

146:                                              ; preds = %78
  store i32 0, i32* %13, align 4
  br label %147

147:                                              ; preds = %179, %146
  %148 = load i32, i32* %13, align 4
  %149 = icmp slt i32 %148, 14
  br i1 %149, label %150, label %182

150:                                              ; preds = %147
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %152 = load i32, i32* @FINIT, align 4
  %153 = load i32, i32* @INIT_TXPOWER, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %157 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %156, i32 0, i32 5
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %168 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %167, i32 0, i32 4
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %151, i32 %152, i32 %153, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %154, i32 %155, i32 %166, i32 %177)
  br label %179

179:                                              ; preds = %150
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %147

182:                                              ; preds = %147
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %23

186:                                              ; preds = %23
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %186
  %190 = load i32*, i32** %6, align 8
  %191 = load i64, i64* @EEPROM_THERMAL_METER_88E, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %195 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %201

196:                                              ; preds = %186
  %197 = load i8*, i8** @EEPROM_DEFAULT_THERMALMETER, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %200 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  br label %201

201:                                              ; preds = %196, %189
  %202 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %203 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 255
  br i1 %205, label %209, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %5, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %206, %201
  %210 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %211 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %210, i32 0, i32 1
  store i32 1, i32* %211, align 4
  %212 = load i8*, i8** @EEPROM_DEFAULT_THERMALMETER, align 8
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %215 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %209, %206
  %217 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %218 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %221 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %219, i32* %223, align 4
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %225 = load i32, i32* @FINIT, align 4
  %226 = load i32, i32* @INIT_TXPOWER, align 4
  %227 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %228 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %224, i32 %225, i32 %226, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %250, label %233

233:                                              ; preds = %216
  %234 = load i32*, i32** %6, align 8
  %235 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, 7
  %239 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %240 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 255
  br i1 %245, label %246, label %249

246:                                              ; preds = %233
  %247 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %248 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %247, i32 0, i32 3
  store i32 0, i32* %248, align 8
  br label %249

249:                                              ; preds = %246, %233
  br label %253

250:                                              ; preds = %216
  %251 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %252 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %251, i32 0, i32 3
  store i32 0, i32* %252, align 8
  br label %253

253:                                              ; preds = %250, %249
  %254 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %255 = load i32, i32* @FINIT, align 4
  %256 = load i32, i32* @INIT_TXPOWER, align 4
  %257 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %258 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %254, i32 %255, i32 %256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %259)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl8723be_read_power_value_fromprom(%struct.ieee80211_hw*, %struct.txpower_info_2g*, %struct.txpower_info_5g*, i32, i32*) #1

declare dso_local i32 @_rtl8723be_get_chnl_group(i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
