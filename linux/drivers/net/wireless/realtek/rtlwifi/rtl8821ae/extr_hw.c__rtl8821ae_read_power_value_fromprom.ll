; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_power_value_fromprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_power_value_fromprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.txpower_info_2g = type { i32**, i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info_5g = type { i32**, i32**, i32**, i32**, i32**, i32** }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EEPROM_TX_PWR_INX = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"hal_ReadPowerValueFromPROM8821ae(): hwinfo[0x%x]=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"auto load fail : Use Default value!\0A\00", align 1
@MAX_RF_PATH = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_24G = common dso_local global i32 0, align 4
@MAX_TX_COUNT = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.txpower_info_2g*, %struct.txpower_info_5g*, i32, i32*)* @_rtl8821ae_read_power_value_fromprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_read_power_value_fromprom(%struct.ieee80211_hw* %0, %struct.txpower_info_2g* %1, %struct.txpower_info_5g* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.txpower_info_2g*, align 8
  %8 = alloca %struct.txpower_info_5g*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.txpower_info_2g* %1, %struct.txpower_info_2g** %7, align 8
  store %struct.txpower_info_5g* %2, %struct.txpower_info_5g** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %11, align 8
  %18 = load i32, i32* @EEPROM_TX_PWR_INX, align 4
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %260

42:                                               ; preds = %39
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %44 = load i32, i32* @COMP_INIT, align 4
  %45 = load i32, i32* @DBG_LOUD, align 4
  %46 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %256, %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MAX_RF_PATH, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %259

51:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %58 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 45, i32* %66, align 4
  %67 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %68 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 45, i32* %76, align 4
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %52

80:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %147, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @MAX_TX_COUNT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %150

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %90 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 2, i32* %96, align 4
  %97 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %98 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 4, i32* %104, align 4
  br label %146

105:                                              ; preds = %85
  %106 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %107 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %106, i32 0, i32 2
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 254, i32* %115, align 4
  %116 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %117 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %116, i32 0, i32 4
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 254, i32* %125, align 4
  %126 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %127 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %126, i32 0, i32 5
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 254, i32* %135, align 4
  %136 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %137 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %136, i32 0, i32 3
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 254, i32* %145, align 4
  br label %146

146:                                              ; preds = %105, %88
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %81

150:                                              ; preds = %81
  store i32 0, i32* %14, align 4
  br label %151

151:                                              ; preds = %166, %150
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @MAX_CHNL_GROUP_5G, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %157 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %156, i32 0, i32 0
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 42, i32* %165, align 4
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %151

169:                                              ; preds = %151
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %252, %169
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* @MAX_TX_COUNT, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %255

174:                                              ; preds = %170
  %175 = load i32, i32* %15, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %174
  %178 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %179 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %178, i32 0, i32 1
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 4, i32* %185, align 4
  %186 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %187 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %186, i32 0, i32 2
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 0, i32* %193, align 4
  %194 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %195 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %194, i32 0, i32 3
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 254, i32* %201, align 4
  %202 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %203 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %202, i32 0, i32 4
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 254, i32* %209, align 4
  br label %251

210:                                              ; preds = %174
  %211 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %212 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %211, i32 0, i32 1
  %213 = load i32**, i32*** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 254, i32* %218, align 4
  %219 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %220 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %219, i32 0, i32 2
  %221 = load i32**, i32*** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  store i32 254, i32* %226, align 4
  %227 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %228 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %227, i32 0, i32 5
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  store i32 254, i32* %234, align 4
  %235 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %236 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %235, i32 0, i32 3
  %237 = load i32**, i32*** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 254, i32* %242, align 4
  %243 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %244 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %243, i32 0, i32 4
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 254, i32* %250, align 4
  br label %251

251:                                              ; preds = %210, %177
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %170

255:                                              ; preds = %170
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %47

259:                                              ; preds = %47
  br label %1114

260:                                              ; preds = %39
  %261 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %262 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %261)
  %263 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  store i32 1, i32* %264, align 4
  store i32 0, i32* %12, align 4
  br label %265

265:                                              ; preds = %1111, %260
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @MAX_RF_PATH, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %1114

269:                                              ; preds = %265
  store i32 0, i32* %14, align 4
  br label %270

270:                                              ; preds = %315, %269
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %318

274:                                              ; preds = %270
  %275 = load i32*, i32** %10, align 8
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %13, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %282 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %281, i32 0, i32 0
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %14, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %280, i32* %290, align 4
  %291 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %292 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %291, i32 0, i32 0
  %293 = load i32**, i32*** %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %293, i64 %295
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 255
  br i1 %302, label %303, label %314

303:                                              ; preds = %274
  %304 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %305 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %304, i32 0, i32 0
  %306 = load i32**, i32*** %305, align 8
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %306, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %14, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 45, i32* %313, align 4
  br label %314

314:                                              ; preds = %303, %274
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %14, align 4
  br label %270

318:                                              ; preds = %270
  store i32 0, i32* %14, align 4
  br label %319

319:                                              ; preds = %365, %318
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %322 = sub nsw i32 %321, 1
  %323 = icmp slt i32 %320, %322
  br i1 %323, label %324, label %368

324:                                              ; preds = %319
  %325 = load i32*, i32** %10, align 8
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %13, align 4
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i32, i32* %325, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %332 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %331, i32 0, i32 1
  %333 = load i32**, i32*** %332, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32*, i32** %333, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %14, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  store i32 %330, i32* %340, align 4
  %341 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %342 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %341, i32 0, i32 1
  %343 = load i32**, i32*** %342, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %343, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %14, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 255
  br i1 %352, label %353, label %364

353:                                              ; preds = %324
  %354 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %355 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %354, i32 0, i32 1
  %356 = load i32**, i32*** %355, align 8
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32*, i32** %356, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %14, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  store i32 45, i32* %363, align 4
  br label %364

364:                                              ; preds = %353, %324
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %14, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %14, align 4
  br label %319

368:                                              ; preds = %319
  store i32 0, i32* %15, align 4
  br label %369

369:                                              ; preds = %672, %368
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* @MAX_TX_COUNT, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %675

373:                                              ; preds = %369
  %374 = load i32, i32* %15, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %488

376:                                              ; preds = %373
  %377 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %378 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %377, i32 0, i32 4
  %379 = load i32**, i32*** %378, align 8
  %380 = load i32, i32* %12, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  store i32 0, i32* %386, align 4
  %387 = load i32*, i32** %10, align 8
  %388 = load i32, i32* %13, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 240
  %393 = ashr i32 %392, 4
  %394 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %395 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %394, i32 0, i32 2
  %396 = load i32**, i32*** %395, align 8
  %397 = load i32, i32* %12, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32*, i32** %396, i64 %398
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %15, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  store i32 %393, i32* %403, align 4
  %404 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %405 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %404, i32 0, i32 2
  %406 = load i32**, i32*** %405, align 8
  %407 = load i32, i32* %12, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32*, i32** %406, i64 %408
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %15, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @BIT(i32 3)
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %431

418:                                              ; preds = %376
  %419 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %420 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %419, i32 0, i32 2
  %421 = load i32**, i32*** %420, align 8
  %422 = load i32, i32* %12, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32*, i32** %421, i64 %423
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %15, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = or i32 %429, 240
  store i32 %430, i32* %428, align 4
  br label %431

431:                                              ; preds = %418, %376
  %432 = load i32*, i32** %10, align 8
  %433 = load i32, i32* %13, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = and i32 %436, 15
  %438 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %439 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %438, i32 0, i32 3
  %440 = load i32**, i32*** %439, align 8
  %441 = load i32, i32* %12, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32*, i32** %440, i64 %442
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %15, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  store i32 %437, i32* %447, align 4
  %448 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %449 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %448, i32 0, i32 3
  %450 = load i32**, i32*** %449, align 8
  %451 = load i32, i32* %12, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32*, i32** %450, i64 %452
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %15, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @BIT(i32 3)
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %475

462:                                              ; preds = %431
  %463 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %464 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %463, i32 0, i32 3
  %465 = load i32**, i32*** %464, align 8
  %466 = load i32, i32* %12, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32*, i32** %465, i64 %467
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %15, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = or i32 %473, 240
  store i32 %474, i32* %472, align 4
  br label %475

475:                                              ; preds = %462, %431
  %476 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %477 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %476, i32 0, i32 5
  %478 = load i32**, i32*** %477, align 8
  %479 = load i32, i32* %12, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32*, i32** %478, i64 %480
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %15, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  store i32 0, i32* %485, align 4
  %486 = load i32, i32* %13, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %13, align 4
  br label %671

488:                                              ; preds = %373
  %489 = load i32*, i32** %10, align 8
  %490 = load i32, i32* %13, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i32 %493, 240
  %495 = ashr i32 %494, 4
  %496 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %497 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %496, i32 0, i32 4
  %498 = load i32**, i32*** %497, align 8
  %499 = load i32, i32* %12, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32*, i32** %498, i64 %500
  %502 = load i32*, i32** %501, align 8
  %503 = load i32, i32* %15, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  store i32 %495, i32* %505, align 4
  %506 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %507 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %506, i32 0, i32 4
  %508 = load i32**, i32*** %507, align 8
  %509 = load i32, i32* %12, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32*, i32** %508, i64 %510
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %15, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @BIT(i32 3)
  %518 = and i32 %516, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %533

520:                                              ; preds = %488
  %521 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %522 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %521, i32 0, i32 4
  %523 = load i32**, i32*** %522, align 8
  %524 = load i32, i32* %12, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32*, i32** %523, i64 %525
  %527 = load i32*, i32** %526, align 8
  %528 = load i32, i32* %15, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %527, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = or i32 %531, 240
  store i32 %532, i32* %530, align 4
  br label %533

533:                                              ; preds = %520, %488
  %534 = load i32*, i32** %10, align 8
  %535 = load i32, i32* %13, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %534, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = and i32 %538, 15
  %540 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %541 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %540, i32 0, i32 2
  %542 = load i32**, i32*** %541, align 8
  %543 = load i32, i32* %12, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32*, i32** %542, i64 %544
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %15, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  store i32 %539, i32* %549, align 4
  %550 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %551 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %550, i32 0, i32 2
  %552 = load i32**, i32*** %551, align 8
  %553 = load i32, i32* %12, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32*, i32** %552, i64 %554
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %15, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @BIT(i32 3)
  %562 = and i32 %560, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %577

564:                                              ; preds = %533
  %565 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %566 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %565, i32 0, i32 2
  %567 = load i32**, i32*** %566, align 8
  %568 = load i32, i32* %12, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32*, i32** %567, i64 %569
  %571 = load i32*, i32** %570, align 8
  %572 = load i32, i32* %15, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %571, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = or i32 %575, 240
  store i32 %576, i32* %574, align 4
  br label %577

577:                                              ; preds = %564, %533
  %578 = load i32, i32* %13, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %13, align 4
  %580 = load i32*, i32** %10, align 8
  %581 = load i32, i32* %13, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %580, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = and i32 %584, 240
  %586 = ashr i32 %585, 4
  %587 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %588 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %587, i32 0, i32 3
  %589 = load i32**, i32*** %588, align 8
  %590 = load i32, i32* %12, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32*, i32** %589, i64 %591
  %593 = load i32*, i32** %592, align 8
  %594 = load i32, i32* %15, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %593, i64 %595
  store i32 %586, i32* %596, align 4
  %597 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %598 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %597, i32 0, i32 3
  %599 = load i32**, i32*** %598, align 8
  %600 = load i32, i32* %12, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32*, i32** %599, i64 %601
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* %15, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @BIT(i32 3)
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %624

611:                                              ; preds = %577
  %612 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %613 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %612, i32 0, i32 3
  %614 = load i32**, i32*** %613, align 8
  %615 = load i32, i32* %12, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32*, i32** %614, i64 %616
  %618 = load i32*, i32** %617, align 8
  %619 = load i32, i32* %15, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %618, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = or i32 %622, 240
  store i32 %623, i32* %621, align 4
  br label %624

624:                                              ; preds = %611, %577
  %625 = load i32*, i32** %10, align 8
  %626 = load i32, i32* %13, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i32, i32* %625, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = and i32 %629, 15
  %631 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %632 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %631, i32 0, i32 5
  %633 = load i32**, i32*** %632, align 8
  %634 = load i32, i32* %12, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32*, i32** %633, i64 %635
  %637 = load i32*, i32** %636, align 8
  %638 = load i32, i32* %15, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i32, i32* %637, i64 %639
  store i32 %630, i32* %640, align 4
  %641 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %642 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %641, i32 0, i32 5
  %643 = load i32**, i32*** %642, align 8
  %644 = load i32, i32* %12, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32*, i32** %643, i64 %645
  %647 = load i32*, i32** %646, align 8
  %648 = load i32, i32* %15, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, i32* %647, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = call i32 @BIT(i32 3)
  %653 = and i32 %651, %652
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %668

655:                                              ; preds = %624
  %656 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %657 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %656, i32 0, i32 5
  %658 = load i32**, i32*** %657, align 8
  %659 = load i32, i32* %12, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i32*, i32** %658, i64 %660
  %662 = load i32*, i32** %661, align 8
  %663 = load i32, i32* %15, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32, i32* %662, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = or i32 %666, 240
  store i32 %667, i32* %665, align 4
  br label %668

668:                                              ; preds = %655, %624
  %669 = load i32, i32* %13, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %13, align 4
  br label %671

671:                                              ; preds = %668, %475
  br label %672

672:                                              ; preds = %671
  %673 = load i32, i32* %15, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %15, align 4
  br label %369

675:                                              ; preds = %369
  store i32 0, i32* %14, align 4
  br label %676

676:                                              ; preds = %721, %675
  %677 = load i32, i32* %14, align 4
  %678 = load i32, i32* @MAX_CHNL_GROUP_5G, align 4
  %679 = icmp slt i32 %677, %678
  br i1 %679, label %680, label %724

680:                                              ; preds = %676
  %681 = load i32*, i32** %10, align 8
  %682 = load i32, i32* %13, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %13, align 4
  %684 = sext i32 %682 to i64
  %685 = getelementptr inbounds i32, i32* %681, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %688 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %687, i32 0, i32 0
  %689 = load i32**, i32*** %688, align 8
  %690 = load i32, i32* %12, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i32*, i32** %689, i64 %691
  %693 = load i32*, i32** %692, align 8
  %694 = load i32, i32* %14, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %693, i64 %695
  store i32 %686, i32* %696, align 4
  %697 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %698 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %697, i32 0, i32 0
  %699 = load i32**, i32*** %698, align 8
  %700 = load i32, i32* %12, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32*, i32** %699, i64 %701
  %703 = load i32*, i32** %702, align 8
  %704 = load i32, i32* %14, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds i32, i32* %703, i64 %705
  %707 = load i32, i32* %706, align 4
  %708 = icmp eq i32 %707, 255
  br i1 %708, label %709, label %720

709:                                              ; preds = %680
  %710 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %711 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %710, i32 0, i32 0
  %712 = load i32**, i32*** %711, align 8
  %713 = load i32, i32* %12, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i32*, i32** %712, i64 %714
  %716 = load i32*, i32** %715, align 8
  %717 = load i32, i32* %14, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i32, i32* %716, i64 %718
  store i32 254, i32* %719, align 4
  br label %720

720:                                              ; preds = %709, %680
  br label %721

721:                                              ; preds = %720
  %722 = load i32, i32* %14, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %14, align 4
  br label %676

724:                                              ; preds = %676
  store i32 0, i32* %15, align 4
  br label %725

725:                                              ; preds = %923, %724
  %726 = load i32, i32* %15, align 4
  %727 = load i32, i32* @MAX_TX_COUNT, align 4
  %728 = icmp slt i32 %726, %727
  br i1 %728, label %729, label %926

729:                                              ; preds = %725
  %730 = load i32, i32* %15, align 4
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %830

732:                                              ; preds = %729
  %733 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %734 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %733, i32 0, i32 5
  %735 = load i32**, i32*** %734, align 8
  %736 = load i32, i32* %12, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i32*, i32** %735, i64 %737
  %739 = load i32*, i32** %738, align 8
  %740 = load i32, i32* %15, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i32, i32* %739, i64 %741
  store i32 0, i32* %742, align 4
  %743 = load i32*, i32** %10, align 8
  %744 = load i32, i32* %13, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i32, i32* %743, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = and i32 %747, 240
  %749 = ashr i32 %748, 4
  %750 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %751 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %750, i32 0, i32 2
  %752 = load i32**, i32*** %751, align 8
  %753 = load i32, i32* %12, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i32*, i32** %752, i64 %754
  %756 = load i32*, i32** %755, align 8
  %757 = getelementptr inbounds i32, i32* %756, i64 0
  store i32 %749, i32* %757, align 4
  %758 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %759 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %758, i32 0, i32 2
  %760 = load i32**, i32*** %759, align 8
  %761 = load i32, i32* %12, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32*, i32** %760, i64 %762
  %764 = load i32*, i32** %763, align 8
  %765 = load i32, i32* %15, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, i32* %764, i64 %766
  %768 = load i32, i32* %767, align 4
  %769 = call i32 @BIT(i32 3)
  %770 = and i32 %768, %769
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %785

772:                                              ; preds = %732
  %773 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %774 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %773, i32 0, i32 2
  %775 = load i32**, i32*** %774, align 8
  %776 = load i32, i32* %12, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds i32*, i32** %775, i64 %777
  %779 = load i32*, i32** %778, align 8
  %780 = load i32, i32* %15, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds i32, i32* %779, i64 %781
  %783 = load i32, i32* %782, align 4
  %784 = or i32 %783, 240
  store i32 %784, i32* %782, align 4
  br label %785

785:                                              ; preds = %772, %732
  %786 = load i32*, i32** %10, align 8
  %787 = load i32, i32* %13, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i32, i32* %786, i64 %788
  %790 = load i32, i32* %789, align 4
  %791 = and i32 %790, 15
  %792 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %793 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %792, i32 0, i32 1
  %794 = load i32**, i32*** %793, align 8
  %795 = load i32, i32* %12, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds i32*, i32** %794, i64 %796
  %798 = load i32*, i32** %797, align 8
  %799 = getelementptr inbounds i32, i32* %798, i64 0
  store i32 %791, i32* %799, align 4
  %800 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %801 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %800, i32 0, i32 1
  %802 = load i32**, i32*** %801, align 8
  %803 = load i32, i32* %12, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i32*, i32** %802, i64 %804
  %806 = load i32*, i32** %805, align 8
  %807 = load i32, i32* %15, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i32, i32* %806, i64 %808
  %810 = load i32, i32* %809, align 4
  %811 = call i32 @BIT(i32 3)
  %812 = and i32 %810, %811
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %827

814:                                              ; preds = %785
  %815 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %816 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %815, i32 0, i32 1
  %817 = load i32**, i32*** %816, align 8
  %818 = load i32, i32* %12, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32*, i32** %817, i64 %819
  %821 = load i32*, i32** %820, align 8
  %822 = load i32, i32* %15, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds i32, i32* %821, i64 %823
  %825 = load i32, i32* %824, align 4
  %826 = or i32 %825, 240
  store i32 %826, i32* %824, align 4
  br label %827

827:                                              ; preds = %814, %785
  %828 = load i32, i32* %13, align 4
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %13, align 4
  br label %922

830:                                              ; preds = %729
  %831 = load i32*, i32** %10, align 8
  %832 = load i32, i32* %13, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds i32, i32* %831, i64 %833
  %835 = load i32, i32* %834, align 4
  %836 = and i32 %835, 240
  %837 = ashr i32 %836, 4
  %838 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %839 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %838, i32 0, i32 5
  %840 = load i32**, i32*** %839, align 8
  %841 = load i32, i32* %12, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i32*, i32** %840, i64 %842
  %844 = load i32*, i32** %843, align 8
  %845 = load i32, i32* %15, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i32, i32* %844, i64 %846
  store i32 %837, i32* %847, align 4
  %848 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %849 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %848, i32 0, i32 5
  %850 = load i32**, i32*** %849, align 8
  %851 = load i32, i32* %12, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32*, i32** %850, i64 %852
  %854 = load i32*, i32** %853, align 8
  %855 = load i32, i32* %15, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i32, i32* %854, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = call i32 @BIT(i32 3)
  %860 = and i32 %858, %859
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %875

862:                                              ; preds = %830
  %863 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %864 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %863, i32 0, i32 5
  %865 = load i32**, i32*** %864, align 8
  %866 = load i32, i32* %12, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i32*, i32** %865, i64 %867
  %869 = load i32*, i32** %868, align 8
  %870 = load i32, i32* %15, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds i32, i32* %869, i64 %871
  %873 = load i32, i32* %872, align 4
  %874 = or i32 %873, 240
  store i32 %874, i32* %872, align 4
  br label %875

875:                                              ; preds = %862, %830
  %876 = load i32*, i32** %10, align 8
  %877 = load i32, i32* %13, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds i32, i32* %876, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = and i32 %880, 15
  %882 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %883 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %882, i32 0, i32 2
  %884 = load i32**, i32*** %883, align 8
  %885 = load i32, i32* %12, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i32*, i32** %884, i64 %886
  %888 = load i32*, i32** %887, align 8
  %889 = load i32, i32* %15, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds i32, i32* %888, i64 %890
  store i32 %881, i32* %891, align 4
  %892 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %893 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %892, i32 0, i32 2
  %894 = load i32**, i32*** %893, align 8
  %895 = load i32, i32* %12, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds i32*, i32** %894, i64 %896
  %898 = load i32*, i32** %897, align 8
  %899 = load i32, i32* %15, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds i32, i32* %898, i64 %900
  %902 = load i32, i32* %901, align 4
  %903 = call i32 @BIT(i32 3)
  %904 = and i32 %902, %903
  %905 = icmp ne i32 %904, 0
  br i1 %905, label %906, label %919

906:                                              ; preds = %875
  %907 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %908 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %907, i32 0, i32 2
  %909 = load i32**, i32*** %908, align 8
  %910 = load i32, i32* %12, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds i32*, i32** %909, i64 %911
  %913 = load i32*, i32** %912, align 8
  %914 = load i32, i32* %15, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds i32, i32* %913, i64 %915
  %917 = load i32, i32* %916, align 4
  %918 = or i32 %917, 240
  store i32 %918, i32* %916, align 4
  br label %919

919:                                              ; preds = %906, %875
  %920 = load i32, i32* %13, align 4
  %921 = add nsw i32 %920, 1
  store i32 %921, i32* %13, align 4
  br label %922

922:                                              ; preds = %919, %827
  br label %923

923:                                              ; preds = %922
  %924 = load i32, i32* %15, align 4
  %925 = add nsw i32 %924, 1
  store i32 %925, i32* %15, align 4
  br label %725

926:                                              ; preds = %725
  %927 = load i32*, i32** %10, align 8
  %928 = load i32, i32* %13, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds i32, i32* %927, i64 %929
  %931 = load i32, i32* %930, align 4
  %932 = and i32 %931, 240
  %933 = ashr i32 %932, 4
  %934 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %935 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %934, i32 0, i32 1
  %936 = load i32**, i32*** %935, align 8
  %937 = load i32, i32* %12, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds i32*, i32** %936, i64 %938
  %940 = load i32*, i32** %939, align 8
  %941 = getelementptr inbounds i32, i32* %940, i64 1
  store i32 %933, i32* %941, align 4
  %942 = load i32*, i32** %10, align 8
  %943 = load i32, i32* %13, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i32, i32* %942, i64 %944
  %946 = load i32, i32* %945, align 4
  %947 = and i32 %946, 15
  %948 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %949 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %948, i32 0, i32 1
  %950 = load i32**, i32*** %949, align 8
  %951 = load i32, i32* %12, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds i32*, i32** %950, i64 %952
  %954 = load i32*, i32** %953, align 8
  %955 = getelementptr inbounds i32, i32* %954, i64 2
  store i32 %947, i32* %955, align 4
  %956 = load i32, i32* %13, align 4
  %957 = add nsw i32 %956, 1
  store i32 %957, i32* %13, align 4
  %958 = load i32*, i32** %10, align 8
  %959 = load i32, i32* %13, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i32, i32* %958, i64 %960
  %962 = load i32, i32* %961, align 4
  %963 = and i32 %962, 15
  %964 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %965 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %964, i32 0, i32 1
  %966 = load i32**, i32*** %965, align 8
  %967 = load i32, i32* %12, align 4
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds i32*, i32** %966, i64 %968
  %970 = load i32*, i32** %969, align 8
  %971 = getelementptr inbounds i32, i32* %970, i64 3
  store i32 %963, i32* %971, align 4
  %972 = load i32, i32* %13, align 4
  %973 = add nsw i32 %972, 1
  store i32 %973, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %974

974:                                              ; preds = %1007, %926
  %975 = load i32, i32* %15, align 4
  %976 = load i32, i32* @MAX_TX_COUNT, align 4
  %977 = icmp slt i32 %975, %976
  br i1 %977, label %978, label %1010

978:                                              ; preds = %974
  %979 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %980 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %979, i32 0, i32 1
  %981 = load i32**, i32*** %980, align 8
  %982 = load i32, i32* %12, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds i32*, i32** %981, i64 %983
  %985 = load i32*, i32** %984, align 8
  %986 = load i32, i32* %15, align 4
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds i32, i32* %985, i64 %987
  %989 = load i32, i32* %988, align 4
  %990 = call i32 @BIT(i32 3)
  %991 = and i32 %989, %990
  %992 = icmp ne i32 %991, 0
  br i1 %992, label %993, label %1006

993:                                              ; preds = %978
  %994 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %995 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %994, i32 0, i32 1
  %996 = load i32**, i32*** %995, align 8
  %997 = load i32, i32* %12, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds i32*, i32** %996, i64 %998
  %1000 = load i32*, i32** %999, align 8
  %1001 = load i32, i32* %15, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds i32, i32* %1000, i64 %1002
  %1004 = load i32, i32* %1003, align 4
  %1005 = or i32 %1004, 240
  store i32 %1005, i32* %1003, align 4
  br label %1006

1006:                                             ; preds = %993, %978
  br label %1007

1007:                                             ; preds = %1006
  %1008 = load i32, i32* %15, align 4
  %1009 = add nsw i32 %1008, 1
  store i32 %1009, i32* %15, align 4
  br label %974

1010:                                             ; preds = %974
  store i32 0, i32* %15, align 4
  br label %1011

1011:                                             ; preds = %1107, %1010
  %1012 = load i32, i32* %15, align 4
  %1013 = load i32, i32* @MAX_TX_COUNT, align 4
  %1014 = icmp slt i32 %1012, %1013
  br i1 %1014, label %1015, label %1110

1015:                                             ; preds = %1011
  %1016 = load i32*, i32** %10, align 8
  %1017 = load i32, i32* %13, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds i32, i32* %1016, i64 %1018
  %1020 = load i32, i32* %1019, align 4
  %1021 = and i32 %1020, 240
  %1022 = ashr i32 %1021, 4
  %1023 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1024 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1023, i32 0, i32 3
  %1025 = load i32**, i32*** %1024, align 8
  %1026 = load i32, i32* %12, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds i32*, i32** %1025, i64 %1027
  %1029 = load i32*, i32** %1028, align 8
  %1030 = load i32, i32* %15, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds i32, i32* %1029, i64 %1031
  store i32 %1022, i32* %1032, align 4
  %1033 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1034 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1033, i32 0, i32 3
  %1035 = load i32**, i32*** %1034, align 8
  %1036 = load i32, i32* %12, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds i32*, i32** %1035, i64 %1037
  %1039 = load i32*, i32** %1038, align 8
  %1040 = load i32, i32* %15, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i32, i32* %1039, i64 %1041
  %1043 = load i32, i32* %1042, align 4
  %1044 = call i32 @BIT(i32 3)
  %1045 = and i32 %1043, %1044
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1060

1047:                                             ; preds = %1015
  %1048 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1049 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1048, i32 0, i32 3
  %1050 = load i32**, i32*** %1049, align 8
  %1051 = load i32, i32* %12, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds i32*, i32** %1050, i64 %1052
  %1054 = load i32*, i32** %1053, align 8
  %1055 = load i32, i32* %15, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds i32, i32* %1054, i64 %1056
  %1058 = load i32, i32* %1057, align 4
  %1059 = or i32 %1058, 240
  store i32 %1059, i32* %1057, align 4
  br label %1060

1060:                                             ; preds = %1047, %1015
  %1061 = load i32*, i32** %10, align 8
  %1062 = load i32, i32* %13, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds i32, i32* %1061, i64 %1063
  %1065 = load i32, i32* %1064, align 4
  %1066 = and i32 %1065, 15
  %1067 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1068 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1067, i32 0, i32 4
  %1069 = load i32**, i32*** %1068, align 8
  %1070 = load i32, i32* %12, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds i32*, i32** %1069, i64 %1071
  %1073 = load i32*, i32** %1072, align 8
  %1074 = load i32, i32* %15, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i32, i32* %1073, i64 %1075
  store i32 %1066, i32* %1076, align 4
  %1077 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1078 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1077, i32 0, i32 4
  %1079 = load i32**, i32*** %1078, align 8
  %1080 = load i32, i32* %12, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds i32*, i32** %1079, i64 %1081
  %1083 = load i32*, i32** %1082, align 8
  %1084 = load i32, i32* %15, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds i32, i32* %1083, i64 %1085
  %1087 = load i32, i32* %1086, align 4
  %1088 = call i32 @BIT(i32 3)
  %1089 = and i32 %1087, %1088
  %1090 = icmp ne i32 %1089, 0
  br i1 %1090, label %1091, label %1104

1091:                                             ; preds = %1060
  %1092 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1093 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1092, i32 0, i32 4
  %1094 = load i32**, i32*** %1093, align 8
  %1095 = load i32, i32* %12, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i32*, i32** %1094, i64 %1096
  %1098 = load i32*, i32** %1097, align 8
  %1099 = load i32, i32* %15, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds i32, i32* %1098, i64 %1100
  %1102 = load i32, i32* %1101, align 4
  %1103 = or i32 %1102, 240
  store i32 %1103, i32* %1101, align 4
  br label %1104

1104:                                             ; preds = %1091, %1060
  %1105 = load i32, i32* %13, align 4
  %1106 = add nsw i32 %1105, 1
  store i32 %1106, i32* %13, align 4
  br label %1107

1107:                                             ; preds = %1104
  %1108 = load i32, i32* %15, align 4
  %1109 = add nsw i32 %1108, 1
  store i32 %1109, i32* %15, align 4
  br label %1011

1110:                                             ; preds = %1011
  br label %1111

1111:                                             ; preds = %1110
  %1112 = load i32, i32* %12, align 4
  %1113 = add nsw i32 %1112, 1
  store i32 %1113, i32* %12, align 4
  br label %265

1114:                                             ; preds = %259, %265
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
