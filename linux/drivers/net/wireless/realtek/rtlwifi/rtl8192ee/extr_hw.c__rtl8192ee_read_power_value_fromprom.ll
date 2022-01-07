; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl8192ee_read_power_value_fromprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl8192ee_read_power_value_fromprom.c"
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
@.str = private unnamed_addr constant [57 x i8] c"hal_ReadPowerValueFromPROM92E(): PROMContent[0x%x]=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"auto load fail : Use Default value!\0A\00", align 1
@MAX_RF_PATH = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_24G = common dso_local global i32 0, align 4
@MAX_TX_COUNT = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.txpower_info_2g*, %struct.txpower_info_5g*, i32, i32*)* @_rtl8192ee_read_power_value_fromprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8192ee_read_power_value_fromprom(%struct.ieee80211_hw* %0, %struct.txpower_info_2g* %1, %struct.txpower_info_5g* %2, i32 %3, i32* %4) #0 {
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
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 255, %36
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
  br label %1409

260:                                              ; preds = %39
  %261 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %262 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %261)
  %263 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  store i32 1, i32* %264, align 4
  store i32 0, i32* %12, align 4
  br label %265

265:                                              ; preds = %1406, %260
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @MAX_RF_PATH, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %1409

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

369:                                              ; preds = %786, %368
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* @MAX_TX_COUNT, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %789

373:                                              ; preds = %369
  %374 = load i32, i32* %15, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %526

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
  %392 = icmp eq i32 %391, 255
  br i1 %392, label %393, label %404

393:                                              ; preds = %376
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
  store i32 2, i32* %403, align 4
  br label %450

404:                                              ; preds = %376
  %405 = load i32*, i32** %10, align 8
  %406 = load i32, i32* %13, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = and i32 %409, 240
  %411 = ashr i32 %410, 4
  %412 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %413 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %412, i32 0, i32 2
  %414 = load i32**, i32*** %413, align 8
  %415 = load i32, i32* %12, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32*, i32** %414, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %15, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  store i32 %411, i32* %421, align 4
  %422 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %423 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %422, i32 0, i32 2
  %424 = load i32**, i32*** %423, align 8
  %425 = load i32, i32* %12, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32*, i32** %424, i64 %426
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %15, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @BIT(i32 3)
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %449

436:                                              ; preds = %404
  %437 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %438 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %437, i32 0, i32 2
  %439 = load i32**, i32*** %438, align 8
  %440 = load i32, i32* %12, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32*, i32** %439, i64 %441
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %15, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = or i32 %447, 240
  store i32 %448, i32* %446, align 4
  br label %449

449:                                              ; preds = %436, %404
  br label %450

450:                                              ; preds = %449, %393
  %451 = load i32*, i32** %10, align 8
  %452 = load i32, i32* %13, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = icmp eq i32 %455, 255
  br i1 %456, label %457, label %468

457:                                              ; preds = %450
  %458 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %459 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %458, i32 0, i32 3
  %460 = load i32**, i32*** %459, align 8
  %461 = load i32, i32* %12, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32*, i32** %460, i64 %462
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %15, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  store i32 4, i32* %467, align 4
  br label %513

468:                                              ; preds = %450
  %469 = load i32*, i32** %10, align 8
  %470 = load i32, i32* %13, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = and i32 %473, 15
  %475 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %476 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %475, i32 0, i32 3
  %477 = load i32**, i32*** %476, align 8
  %478 = load i32, i32* %12, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32*, i32** %477, i64 %479
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %15, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  store i32 %474, i32* %484, align 4
  %485 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %486 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %485, i32 0, i32 3
  %487 = load i32**, i32*** %486, align 8
  %488 = load i32, i32* %12, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32*, i32** %487, i64 %489
  %491 = load i32*, i32** %490, align 8
  %492 = load i32, i32* %15, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = call i32 @BIT(i32 3)
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %512

499:                                              ; preds = %468
  %500 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %501 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %500, i32 0, i32 3
  %502 = load i32**, i32*** %501, align 8
  %503 = load i32, i32* %12, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32*, i32** %502, i64 %504
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* %15, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = or i32 %510, 240
  store i32 %511, i32* %509, align 4
  br label %512

512:                                              ; preds = %499, %468
  br label %513

513:                                              ; preds = %512, %457
  %514 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %515 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %514, i32 0, i32 5
  %516 = load i32**, i32*** %515, align 8
  %517 = load i32, i32* %12, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32*, i32** %516, i64 %518
  %520 = load i32*, i32** %519, align 8
  %521 = load i32, i32* %15, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  store i32 0, i32* %523, align 4
  %524 = load i32, i32* %13, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %13, align 4
  br label %785

526:                                              ; preds = %373
  %527 = load i32*, i32** %10, align 8
  %528 = load i32, i32* %13, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %527, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = icmp eq i32 %531, 255
  br i1 %532, label %533, label %544

533:                                              ; preds = %526
  %534 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %535 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %534, i32 0, i32 4
  %536 = load i32**, i32*** %535, align 8
  %537 = load i32, i32* %12, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32*, i32** %536, i64 %538
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %15, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  store i32 254, i32* %543, align 4
  br label %590

544:                                              ; preds = %526
  %545 = load i32*, i32** %10, align 8
  %546 = load i32, i32* %13, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %545, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = and i32 %549, 240
  %551 = ashr i32 %550, 4
  %552 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %553 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %552, i32 0, i32 4
  %554 = load i32**, i32*** %553, align 8
  %555 = load i32, i32* %12, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32*, i32** %554, i64 %556
  %558 = load i32*, i32** %557, align 8
  %559 = load i32, i32* %15, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  store i32 %551, i32* %561, align 4
  %562 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %563 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %562, i32 0, i32 4
  %564 = load i32**, i32*** %563, align 8
  %565 = load i32, i32* %12, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32*, i32** %564, i64 %566
  %568 = load i32*, i32** %567, align 8
  %569 = load i32, i32* %15, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %568, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @BIT(i32 3)
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %589

576:                                              ; preds = %544
  %577 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %578 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %577, i32 0, i32 4
  %579 = load i32**, i32*** %578, align 8
  %580 = load i32, i32* %12, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32*, i32** %579, i64 %581
  %583 = load i32*, i32** %582, align 8
  %584 = load i32, i32* %15, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32, i32* %583, i64 %585
  %587 = load i32, i32* %586, align 4
  %588 = or i32 %587, 240
  store i32 %588, i32* %586, align 4
  br label %589

589:                                              ; preds = %576, %544
  br label %590

590:                                              ; preds = %589, %533
  %591 = load i32*, i32** %10, align 8
  %592 = load i32, i32* %13, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i32, i32* %591, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = icmp eq i32 %595, 255
  br i1 %596, label %597, label %608

597:                                              ; preds = %590
  %598 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %599 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %598, i32 0, i32 2
  %600 = load i32**, i32*** %599, align 8
  %601 = load i32, i32* %12, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32*, i32** %600, i64 %602
  %604 = load i32*, i32** %603, align 8
  %605 = load i32, i32* %15, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %604, i64 %606
  store i32 254, i32* %607, align 4
  br label %653

608:                                              ; preds = %590
  %609 = load i32*, i32** %10, align 8
  %610 = load i32, i32* %13, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i32, i32* %609, i64 %611
  %613 = load i32, i32* %612, align 4
  %614 = and i32 %613, 15
  %615 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %616 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %615, i32 0, i32 2
  %617 = load i32**, i32*** %616, align 8
  %618 = load i32, i32* %12, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32*, i32** %617, i64 %619
  %621 = load i32*, i32** %620, align 8
  %622 = load i32, i32* %15, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %621, i64 %623
  store i32 %614, i32* %624, align 4
  %625 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %626 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %625, i32 0, i32 2
  %627 = load i32**, i32*** %626, align 8
  %628 = load i32, i32* %12, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i32*, i32** %627, i64 %629
  %631 = load i32*, i32** %630, align 8
  %632 = load i32, i32* %15, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i32, i32* %631, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = call i32 @BIT(i32 3)
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %652

639:                                              ; preds = %608
  %640 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %641 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %640, i32 0, i32 2
  %642 = load i32**, i32*** %641, align 8
  %643 = load i32, i32* %12, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i32*, i32** %642, i64 %644
  %646 = load i32*, i32** %645, align 8
  %647 = load i32, i32* %15, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i32, i32* %646, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = or i32 %650, 240
  store i32 %651, i32* %649, align 4
  br label %652

652:                                              ; preds = %639, %608
  br label %653

653:                                              ; preds = %652, %597
  %654 = load i32, i32* %13, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %13, align 4
  %656 = load i32*, i32** %10, align 8
  %657 = load i32, i32* %13, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i32, i32* %656, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = icmp eq i32 %660, 255
  br i1 %661, label %662, label %673

662:                                              ; preds = %653
  %663 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %664 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %663, i32 0, i32 3
  %665 = load i32**, i32*** %664, align 8
  %666 = load i32, i32* %12, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32*, i32** %665, i64 %667
  %669 = load i32*, i32** %668, align 8
  %670 = load i32, i32* %15, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i32, i32* %669, i64 %671
  store i32 254, i32* %672, align 4
  br label %719

673:                                              ; preds = %653
  %674 = load i32*, i32** %10, align 8
  %675 = load i32, i32* %13, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i32, i32* %674, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = and i32 %678, 240
  %680 = ashr i32 %679, 4
  %681 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %682 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %681, i32 0, i32 3
  %683 = load i32**, i32*** %682, align 8
  %684 = load i32, i32* %12, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds i32*, i32** %683, i64 %685
  %687 = load i32*, i32** %686, align 8
  %688 = load i32, i32* %15, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i32, i32* %687, i64 %689
  store i32 %680, i32* %690, align 4
  %691 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %692 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %691, i32 0, i32 3
  %693 = load i32**, i32*** %692, align 8
  %694 = load i32, i32* %12, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32*, i32** %693, i64 %695
  %697 = load i32*, i32** %696, align 8
  %698 = load i32, i32* %15, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, i32* %697, i64 %699
  %701 = load i32, i32* %700, align 4
  %702 = call i32 @BIT(i32 3)
  %703 = and i32 %701, %702
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %718

705:                                              ; preds = %673
  %706 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %707 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %706, i32 0, i32 3
  %708 = load i32**, i32*** %707, align 8
  %709 = load i32, i32* %12, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32*, i32** %708, i64 %710
  %712 = load i32*, i32** %711, align 8
  %713 = load i32, i32* %15, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i32, i32* %712, i64 %714
  %716 = load i32, i32* %715, align 4
  %717 = or i32 %716, 240
  store i32 %717, i32* %715, align 4
  br label %718

718:                                              ; preds = %705, %673
  br label %719

719:                                              ; preds = %718, %662
  %720 = load i32*, i32** %10, align 8
  %721 = load i32, i32* %13, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, i32* %720, i64 %722
  %724 = load i32, i32* %723, align 4
  %725 = icmp eq i32 %724, 255
  br i1 %725, label %726, label %737

726:                                              ; preds = %719
  %727 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %728 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %727, i32 0, i32 5
  %729 = load i32**, i32*** %728, align 8
  %730 = load i32, i32* %12, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i32*, i32** %729, i64 %731
  %733 = load i32*, i32** %732, align 8
  %734 = load i32, i32* %15, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %733, i64 %735
  store i32 254, i32* %736, align 4
  br label %782

737:                                              ; preds = %719
  %738 = load i32*, i32** %10, align 8
  %739 = load i32, i32* %13, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i32, i32* %738, i64 %740
  %742 = load i32, i32* %741, align 4
  %743 = and i32 %742, 15
  %744 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %745 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %744, i32 0, i32 5
  %746 = load i32**, i32*** %745, align 8
  %747 = load i32, i32* %12, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i32*, i32** %746, i64 %748
  %750 = load i32*, i32** %749, align 8
  %751 = load i32, i32* %15, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32, i32* %750, i64 %752
  store i32 %743, i32* %753, align 4
  %754 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %755 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %754, i32 0, i32 5
  %756 = load i32**, i32*** %755, align 8
  %757 = load i32, i32* %12, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i32*, i32** %756, i64 %758
  %760 = load i32*, i32** %759, align 8
  %761 = load i32, i32* %15, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32, i32* %760, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = call i32 @BIT(i32 3)
  %766 = and i32 %764, %765
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %781

768:                                              ; preds = %737
  %769 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %770 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %769, i32 0, i32 5
  %771 = load i32**, i32*** %770, align 8
  %772 = load i32, i32* %12, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i32*, i32** %771, i64 %773
  %775 = load i32*, i32** %774, align 8
  %776 = load i32, i32* %15, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds i32, i32* %775, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = or i32 %779, 240
  store i32 %780, i32* %778, align 4
  br label %781

781:                                              ; preds = %768, %737
  br label %782

782:                                              ; preds = %781, %726
  %783 = load i32, i32* %13, align 4
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %13, align 4
  br label %785

785:                                              ; preds = %782, %513
  br label %786

786:                                              ; preds = %785
  %787 = load i32, i32* %15, align 4
  %788 = add nsw i32 %787, 1
  store i32 %788, i32* %15, align 4
  br label %369

789:                                              ; preds = %369
  store i32 0, i32* %14, align 4
  br label %790

790:                                              ; preds = %835, %789
  %791 = load i32, i32* %14, align 4
  %792 = load i32, i32* @MAX_CHNL_GROUP_5G, align 4
  %793 = icmp slt i32 %791, %792
  br i1 %793, label %794, label %838

794:                                              ; preds = %790
  %795 = load i32*, i32** %10, align 8
  %796 = load i32, i32* %13, align 4
  %797 = add nsw i32 %796, 1
  store i32 %797, i32* %13, align 4
  %798 = sext i32 %796 to i64
  %799 = getelementptr inbounds i32, i32* %795, i64 %798
  %800 = load i32, i32* %799, align 4
  %801 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %802 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %801, i32 0, i32 0
  %803 = load i32**, i32*** %802, align 8
  %804 = load i32, i32* %12, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i32*, i32** %803, i64 %805
  %807 = load i32*, i32** %806, align 8
  %808 = load i32, i32* %14, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i32, i32* %807, i64 %809
  store i32 %800, i32* %810, align 4
  %811 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %812 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %811, i32 0, i32 0
  %813 = load i32**, i32*** %812, align 8
  %814 = load i32, i32* %12, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i32*, i32** %813, i64 %815
  %817 = load i32*, i32** %816, align 8
  %818 = load i32, i32* %14, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32, i32* %817, i64 %819
  %821 = load i32, i32* %820, align 4
  %822 = icmp eq i32 %821, 255
  br i1 %822, label %823, label %834

823:                                              ; preds = %794
  %824 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %825 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %824, i32 0, i32 0
  %826 = load i32**, i32*** %825, align 8
  %827 = load i32, i32* %12, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i32*, i32** %826, i64 %828
  %830 = load i32*, i32** %829, align 8
  %831 = load i32, i32* %14, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i32, i32* %830, i64 %832
  store i32 254, i32* %833, align 4
  br label %834

834:                                              ; preds = %823, %794
  br label %835

835:                                              ; preds = %834
  %836 = load i32, i32* %14, align 4
  %837 = add nsw i32 %836, 1
  store i32 %837, i32* %14, align 4
  br label %790

838:                                              ; preds = %790
  store i32 0, i32* %15, align 4
  br label %839

839:                                              ; preds = %1113, %838
  %840 = load i32, i32* %15, align 4
  %841 = load i32, i32* @MAX_TX_COUNT, align 4
  %842 = icmp slt i32 %840, %841
  br i1 %842, label %843, label %1116

843:                                              ; preds = %839
  %844 = load i32, i32* %15, align 4
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %982

846:                                              ; preds = %843
  %847 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %848 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %847, i32 0, i32 5
  %849 = load i32**, i32*** %848, align 8
  %850 = load i32, i32* %12, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds i32*, i32** %849, i64 %851
  %853 = load i32*, i32** %852, align 8
  %854 = load i32, i32* %15, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds i32, i32* %853, i64 %855
  store i32 0, i32* %856, align 4
  %857 = load i32*, i32** %10, align 8
  %858 = load i32, i32* %13, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds i32, i32* %857, i64 %859
  %861 = load i32, i32* %860, align 4
  %862 = icmp eq i32 %861, 255
  br i1 %862, label %863, label %874

863:                                              ; preds = %846
  %864 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %865 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %864, i32 0, i32 2
  %866 = load i32**, i32*** %865, align 8
  %867 = load i32, i32* %12, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i32*, i32** %866, i64 %868
  %870 = load i32*, i32** %869, align 8
  %871 = load i32, i32* %15, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds i32, i32* %870, i64 %872
  store i32 0, i32* %873, align 4
  br label %918

874:                                              ; preds = %846
  %875 = load i32*, i32** %10, align 8
  %876 = load i32, i32* %13, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i32, i32* %875, i64 %877
  %879 = load i32, i32* %878, align 4
  %880 = and i32 %879, 240
  %881 = ashr i32 %880, 4
  %882 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %883 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %882, i32 0, i32 2
  %884 = load i32**, i32*** %883, align 8
  %885 = load i32, i32* %12, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i32*, i32** %884, i64 %886
  %888 = load i32*, i32** %887, align 8
  %889 = getelementptr inbounds i32, i32* %888, i64 0
  store i32 %881, i32* %889, align 4
  %890 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %891 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %890, i32 0, i32 2
  %892 = load i32**, i32*** %891, align 8
  %893 = load i32, i32* %12, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32*, i32** %892, i64 %894
  %896 = load i32*, i32** %895, align 8
  %897 = load i32, i32* %15, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds i32, i32* %896, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = call i32 @BIT(i32 3)
  %902 = and i32 %900, %901
  %903 = icmp ne i32 %902, 0
  br i1 %903, label %904, label %917

904:                                              ; preds = %874
  %905 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %906 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %905, i32 0, i32 2
  %907 = load i32**, i32*** %906, align 8
  %908 = load i32, i32* %12, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds i32*, i32** %907, i64 %909
  %911 = load i32*, i32** %910, align 8
  %912 = load i32, i32* %15, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i32, i32* %911, i64 %913
  %915 = load i32, i32* %914, align 4
  %916 = or i32 %915, 240
  store i32 %916, i32* %914, align 4
  br label %917

917:                                              ; preds = %904, %874
  br label %918

918:                                              ; preds = %917, %863
  %919 = load i32*, i32** %10, align 8
  %920 = load i32, i32* %13, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i32, i32* %919, i64 %921
  %923 = load i32, i32* %922, align 4
  %924 = icmp eq i32 %923, 255
  br i1 %924, label %925, label %936

925:                                              ; preds = %918
  %926 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %927 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %926, i32 0, i32 1
  %928 = load i32**, i32*** %927, align 8
  %929 = load i32, i32* %12, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i32*, i32** %928, i64 %930
  %932 = load i32*, i32** %931, align 8
  %933 = load i32, i32* %15, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds i32, i32* %932, i64 %934
  store i32 4, i32* %935, align 4
  br label %979

936:                                              ; preds = %918
  %937 = load i32*, i32** %10, align 8
  %938 = load i32, i32* %13, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds i32, i32* %937, i64 %939
  %941 = load i32, i32* %940, align 4
  %942 = and i32 %941, 15
  %943 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %944 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %943, i32 0, i32 1
  %945 = load i32**, i32*** %944, align 8
  %946 = load i32, i32* %12, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds i32*, i32** %945, i64 %947
  %949 = load i32*, i32** %948, align 8
  %950 = getelementptr inbounds i32, i32* %949, i64 0
  store i32 %942, i32* %950, align 4
  %951 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %952 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %951, i32 0, i32 1
  %953 = load i32**, i32*** %952, align 8
  %954 = load i32, i32* %12, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i32*, i32** %953, i64 %955
  %957 = load i32*, i32** %956, align 8
  %958 = load i32, i32* %15, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds i32, i32* %957, i64 %959
  %961 = load i32, i32* %960, align 4
  %962 = call i32 @BIT(i32 3)
  %963 = and i32 %961, %962
  %964 = icmp ne i32 %963, 0
  br i1 %964, label %965, label %978

965:                                              ; preds = %936
  %966 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %967 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %966, i32 0, i32 1
  %968 = load i32**, i32*** %967, align 8
  %969 = load i32, i32* %12, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds i32*, i32** %968, i64 %970
  %972 = load i32*, i32** %971, align 8
  %973 = load i32, i32* %15, align 4
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i32, i32* %972, i64 %974
  %976 = load i32, i32* %975, align 4
  %977 = or i32 %976, 240
  store i32 %977, i32* %975, align 4
  br label %978

978:                                              ; preds = %965, %936
  br label %979

979:                                              ; preds = %978, %925
  %980 = load i32, i32* %13, align 4
  %981 = add nsw i32 %980, 1
  store i32 %981, i32* %13, align 4
  br label %1112

982:                                              ; preds = %843
  %983 = load i32*, i32** %10, align 8
  %984 = load i32, i32* %13, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds i32, i32* %983, i64 %985
  %987 = load i32, i32* %986, align 4
  %988 = icmp eq i32 %987, 255
  br i1 %988, label %989, label %1000

989:                                              ; preds = %982
  %990 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %991 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %990, i32 0, i32 5
  %992 = load i32**, i32*** %991, align 8
  %993 = load i32, i32* %12, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds i32*, i32** %992, i64 %994
  %996 = load i32*, i32** %995, align 8
  %997 = load i32, i32* %15, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds i32, i32* %996, i64 %998
  store i32 254, i32* %999, align 4
  br label %1046

1000:                                             ; preds = %982
  %1001 = load i32*, i32** %10, align 8
  %1002 = load i32, i32* %13, align 4
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds i32, i32* %1001, i64 %1003
  %1005 = load i32, i32* %1004, align 4
  %1006 = and i32 %1005, 240
  %1007 = ashr i32 %1006, 4
  %1008 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1009 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1008, i32 0, i32 5
  %1010 = load i32**, i32*** %1009, align 8
  %1011 = load i32, i32* %12, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds i32*, i32** %1010, i64 %1012
  %1014 = load i32*, i32** %1013, align 8
  %1015 = load i32, i32* %15, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds i32, i32* %1014, i64 %1016
  store i32 %1007, i32* %1017, align 4
  %1018 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1019 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1018, i32 0, i32 5
  %1020 = load i32**, i32*** %1019, align 8
  %1021 = load i32, i32* %12, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i32*, i32** %1020, i64 %1022
  %1024 = load i32*, i32** %1023, align 8
  %1025 = load i32, i32* %15, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds i32, i32* %1024, i64 %1026
  %1028 = load i32, i32* %1027, align 4
  %1029 = call i32 @BIT(i32 3)
  %1030 = and i32 %1028, %1029
  %1031 = icmp ne i32 %1030, 0
  br i1 %1031, label %1032, label %1045

1032:                                             ; preds = %1000
  %1033 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1034 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1033, i32 0, i32 5
  %1035 = load i32**, i32*** %1034, align 8
  %1036 = load i32, i32* %12, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds i32*, i32** %1035, i64 %1037
  %1039 = load i32*, i32** %1038, align 8
  %1040 = load i32, i32* %15, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i32, i32* %1039, i64 %1041
  %1043 = load i32, i32* %1042, align 4
  %1044 = or i32 %1043, 240
  store i32 %1044, i32* %1042, align 4
  br label %1045

1045:                                             ; preds = %1032, %1000
  br label %1046

1046:                                             ; preds = %1045, %989
  %1047 = load i32*, i32** %10, align 8
  %1048 = load i32, i32* %13, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds i32, i32* %1047, i64 %1049
  %1051 = load i32, i32* %1050, align 4
  %1052 = icmp eq i32 %1051, 255
  br i1 %1052, label %1053, label %1064

1053:                                             ; preds = %1046
  %1054 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1055 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1054, i32 0, i32 2
  %1056 = load i32**, i32*** %1055, align 8
  %1057 = load i32, i32* %12, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds i32*, i32** %1056, i64 %1058
  %1060 = load i32*, i32** %1059, align 8
  %1061 = load i32, i32* %15, align 4
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds i32, i32* %1060, i64 %1062
  store i32 254, i32* %1063, align 4
  br label %1109

1064:                                             ; preds = %1046
  %1065 = load i32*, i32** %10, align 8
  %1066 = load i32, i32* %13, align 4
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds i32, i32* %1065, i64 %1067
  %1069 = load i32, i32* %1068, align 4
  %1070 = and i32 %1069, 15
  %1071 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1072 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1071, i32 0, i32 2
  %1073 = load i32**, i32*** %1072, align 8
  %1074 = load i32, i32* %12, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i32*, i32** %1073, i64 %1075
  %1077 = load i32*, i32** %1076, align 8
  %1078 = load i32, i32* %15, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds i32, i32* %1077, i64 %1079
  store i32 %1070, i32* %1080, align 4
  %1081 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1082 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1081, i32 0, i32 2
  %1083 = load i32**, i32*** %1082, align 8
  %1084 = load i32, i32* %12, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds i32*, i32** %1083, i64 %1085
  %1087 = load i32*, i32** %1086, align 8
  %1088 = load i32, i32* %15, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds i32, i32* %1087, i64 %1089
  %1091 = load i32, i32* %1090, align 4
  %1092 = call i32 @BIT(i32 3)
  %1093 = and i32 %1091, %1092
  %1094 = icmp ne i32 %1093, 0
  br i1 %1094, label %1095, label %1108

1095:                                             ; preds = %1064
  %1096 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1097 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1096, i32 0, i32 2
  %1098 = load i32**, i32*** %1097, align 8
  %1099 = load i32, i32* %12, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds i32*, i32** %1098, i64 %1100
  %1102 = load i32*, i32** %1101, align 8
  %1103 = load i32, i32* %15, align 4
  %1104 = sext i32 %1103 to i64
  %1105 = getelementptr inbounds i32, i32* %1102, i64 %1104
  %1106 = load i32, i32* %1105, align 4
  %1107 = or i32 %1106, 240
  store i32 %1107, i32* %1105, align 4
  br label %1108

1108:                                             ; preds = %1095, %1064
  br label %1109

1109:                                             ; preds = %1108, %1053
  %1110 = load i32, i32* %13, align 4
  %1111 = add nsw i32 %1110, 1
  store i32 %1111, i32* %13, align 4
  br label %1112

1112:                                             ; preds = %1109, %979
  br label %1113

1113:                                             ; preds = %1112
  %1114 = load i32, i32* %15, align 4
  %1115 = add nsw i32 %1114, 1
  store i32 %1115, i32* %15, align 4
  br label %839

1116:                                             ; preds = %839
  %1117 = load i32*, i32** %10, align 8
  %1118 = load i32, i32* %13, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds i32, i32* %1117, i64 %1119
  %1121 = load i32, i32* %1120, align 4
  %1122 = icmp eq i32 %1121, 255
  br i1 %1122, label %1123, label %1140

1123:                                             ; preds = %1116
  %1124 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1125 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1124, i32 0, i32 1
  %1126 = load i32**, i32*** %1125, align 8
  %1127 = load i32, i32* %12, align 4
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds i32*, i32** %1126, i64 %1128
  %1130 = load i32*, i32** %1129, align 8
  %1131 = getelementptr inbounds i32, i32* %1130, i64 1
  store i32 254, i32* %1131, align 4
  %1132 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1133 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1132, i32 0, i32 1
  %1134 = load i32**, i32*** %1133, align 8
  %1135 = load i32, i32* %12, align 4
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds i32*, i32** %1134, i64 %1136
  %1138 = load i32*, i32** %1137, align 8
  %1139 = getelementptr inbounds i32, i32* %1138, i64 2
  store i32 254, i32* %1139, align 4
  br label %1170

1140:                                             ; preds = %1116
  %1141 = load i32*, i32** %10, align 8
  %1142 = load i32, i32* %13, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds i32, i32* %1141, i64 %1143
  %1145 = load i32, i32* %1144, align 4
  %1146 = and i32 %1145, 240
  %1147 = ashr i32 %1146, 4
  %1148 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1149 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1148, i32 0, i32 1
  %1150 = load i32**, i32*** %1149, align 8
  %1151 = load i32, i32* %12, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds i32*, i32** %1150, i64 %1152
  %1154 = load i32*, i32** %1153, align 8
  %1155 = getelementptr inbounds i32, i32* %1154, i64 1
  store i32 %1147, i32* %1155, align 4
  %1156 = load i32*, i32** %10, align 8
  %1157 = load i32, i32* %13, align 4
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds i32, i32* %1156, i64 %1158
  %1160 = load i32, i32* %1159, align 4
  %1161 = and i32 %1160, 15
  %1162 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1163 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1162, i32 0, i32 1
  %1164 = load i32**, i32*** %1163, align 8
  %1165 = load i32, i32* %12, align 4
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds i32*, i32** %1164, i64 %1166
  %1168 = load i32*, i32** %1167, align 8
  %1169 = getelementptr inbounds i32, i32* %1168, i64 2
  store i32 %1161, i32* %1169, align 4
  br label %1170

1170:                                             ; preds = %1140, %1123
  %1171 = load i32, i32* %13, align 4
  %1172 = add nsw i32 %1171, 1
  store i32 %1172, i32* %13, align 4
  %1173 = load i32*, i32** %10, align 8
  %1174 = load i32, i32* %13, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds i32, i32* %1173, i64 %1175
  %1177 = load i32, i32* %1176, align 4
  %1178 = icmp eq i32 %1177, 255
  br i1 %1178, label %1179, label %1188

1179:                                             ; preds = %1170
  %1180 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1181 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1180, i32 0, i32 1
  %1182 = load i32**, i32*** %1181, align 8
  %1183 = load i32, i32* %12, align 4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds i32*, i32** %1182, i64 %1184
  %1186 = load i32*, i32** %1185, align 8
  %1187 = getelementptr inbounds i32, i32* %1186, i64 3
  store i32 254, i32* %1187, align 4
  br label %1203

1188:                                             ; preds = %1170
  %1189 = load i32*, i32** %10, align 8
  %1190 = load i32, i32* %13, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds i32, i32* %1189, i64 %1191
  %1193 = load i32, i32* %1192, align 4
  %1194 = and i32 %1193, 15
  %1195 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1196 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1195, i32 0, i32 1
  %1197 = load i32**, i32*** %1196, align 8
  %1198 = load i32, i32* %12, align 4
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds i32*, i32** %1197, i64 %1199
  %1201 = load i32*, i32** %1200, align 8
  %1202 = getelementptr inbounds i32, i32* %1201, i64 3
  store i32 %1194, i32* %1202, align 4
  br label %1203

1203:                                             ; preds = %1188, %1179
  %1204 = load i32, i32* %13, align 4
  %1205 = add nsw i32 %1204, 1
  store i32 %1205, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %1206

1206:                                             ; preds = %1264, %1203
  %1207 = load i32, i32* %15, align 4
  %1208 = load i32, i32* @MAX_TX_COUNT, align 4
  %1209 = icmp slt i32 %1207, %1208
  br i1 %1209, label %1210, label %1267

1210:                                             ; preds = %1206
  %1211 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1212 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1211, i32 0, i32 1
  %1213 = load i32**, i32*** %1212, align 8
  %1214 = load i32, i32* %12, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds i32*, i32** %1213, i64 %1215
  %1217 = load i32*, i32** %1216, align 8
  %1218 = load i32, i32* %15, align 4
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds i32, i32* %1217, i64 %1219
  %1221 = load i32, i32* %1220, align 4
  %1222 = icmp eq i32 %1221, 255
  br i1 %1222, label %1223, label %1234

1223:                                             ; preds = %1210
  %1224 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1225 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1224, i32 0, i32 1
  %1226 = load i32**, i32*** %1225, align 8
  %1227 = load i32, i32* %12, align 4
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds i32*, i32** %1226, i64 %1228
  %1230 = load i32*, i32** %1229, align 8
  %1231 = load i32, i32* %15, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds i32, i32* %1230, i64 %1232
  store i32 254, i32* %1233, align 4
  br label %1263

1234:                                             ; preds = %1210
  %1235 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1236 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1235, i32 0, i32 1
  %1237 = load i32**, i32*** %1236, align 8
  %1238 = load i32, i32* %12, align 4
  %1239 = sext i32 %1238 to i64
  %1240 = getelementptr inbounds i32*, i32** %1237, i64 %1239
  %1241 = load i32*, i32** %1240, align 8
  %1242 = load i32, i32* %15, align 4
  %1243 = sext i32 %1242 to i64
  %1244 = getelementptr inbounds i32, i32* %1241, i64 %1243
  %1245 = load i32, i32* %1244, align 4
  %1246 = call i32 @BIT(i32 3)
  %1247 = and i32 %1245, %1246
  %1248 = icmp ne i32 %1247, 0
  br i1 %1248, label %1249, label %1262

1249:                                             ; preds = %1234
  %1250 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1251 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1250, i32 0, i32 1
  %1252 = load i32**, i32*** %1251, align 8
  %1253 = load i32, i32* %12, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds i32*, i32** %1252, i64 %1254
  %1256 = load i32*, i32** %1255, align 8
  %1257 = load i32, i32* %15, align 4
  %1258 = sext i32 %1257 to i64
  %1259 = getelementptr inbounds i32, i32* %1256, i64 %1258
  %1260 = load i32, i32* %1259, align 4
  %1261 = or i32 %1260, 240
  store i32 %1261, i32* %1259, align 4
  br label %1262

1262:                                             ; preds = %1249, %1234
  br label %1263

1263:                                             ; preds = %1262, %1223
  br label %1264

1264:                                             ; preds = %1263
  %1265 = load i32, i32* %15, align 4
  %1266 = add nsw i32 %1265, 1
  store i32 %1266, i32* %15, align 4
  br label %1206

1267:                                             ; preds = %1206
  store i32 0, i32* %15, align 4
  br label %1268

1268:                                             ; preds = %1402, %1267
  %1269 = load i32, i32* %15, align 4
  %1270 = load i32, i32* @MAX_TX_COUNT, align 4
  %1271 = icmp slt i32 %1269, %1270
  br i1 %1271, label %1272, label %1405

1272:                                             ; preds = %1268
  %1273 = load i32*, i32** %10, align 8
  %1274 = load i32, i32* %13, align 4
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds i32, i32* %1273, i64 %1275
  %1277 = load i32, i32* %1276, align 4
  %1278 = icmp eq i32 %1277, 255
  br i1 %1278, label %1279, label %1290

1279:                                             ; preds = %1272
  %1280 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1281 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1280, i32 0, i32 3
  %1282 = load i32**, i32*** %1281, align 8
  %1283 = load i32, i32* %12, align 4
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds i32*, i32** %1282, i64 %1284
  %1286 = load i32*, i32** %1285, align 8
  %1287 = load i32, i32* %15, align 4
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds i32, i32* %1286, i64 %1288
  store i32 254, i32* %1289, align 4
  br label %1336

1290:                                             ; preds = %1272
  %1291 = load i32*, i32** %10, align 8
  %1292 = load i32, i32* %13, align 4
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds i32, i32* %1291, i64 %1293
  %1295 = load i32, i32* %1294, align 4
  %1296 = and i32 %1295, 240
  %1297 = ashr i32 %1296, 4
  %1298 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1299 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1298, i32 0, i32 3
  %1300 = load i32**, i32*** %1299, align 8
  %1301 = load i32, i32* %12, align 4
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds i32*, i32** %1300, i64 %1302
  %1304 = load i32*, i32** %1303, align 8
  %1305 = load i32, i32* %15, align 4
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds i32, i32* %1304, i64 %1306
  store i32 %1297, i32* %1307, align 4
  %1308 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1309 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1308, i32 0, i32 3
  %1310 = load i32**, i32*** %1309, align 8
  %1311 = load i32, i32* %12, align 4
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds i32*, i32** %1310, i64 %1312
  %1314 = load i32*, i32** %1313, align 8
  %1315 = load i32, i32* %15, align 4
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds i32, i32* %1314, i64 %1316
  %1318 = load i32, i32* %1317, align 4
  %1319 = call i32 @BIT(i32 3)
  %1320 = and i32 %1318, %1319
  %1321 = icmp ne i32 %1320, 0
  br i1 %1321, label %1322, label %1335

1322:                                             ; preds = %1290
  %1323 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1324 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1323, i32 0, i32 3
  %1325 = load i32**, i32*** %1324, align 8
  %1326 = load i32, i32* %12, align 4
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds i32*, i32** %1325, i64 %1327
  %1329 = load i32*, i32** %1328, align 8
  %1330 = load i32, i32* %15, align 4
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds i32, i32* %1329, i64 %1331
  %1333 = load i32, i32* %1332, align 4
  %1334 = or i32 %1333, 240
  store i32 %1334, i32* %1332, align 4
  br label %1335

1335:                                             ; preds = %1322, %1290
  br label %1336

1336:                                             ; preds = %1335, %1279
  %1337 = load i32*, i32** %10, align 8
  %1338 = load i32, i32* %13, align 4
  %1339 = sext i32 %1338 to i64
  %1340 = getelementptr inbounds i32, i32* %1337, i64 %1339
  %1341 = load i32, i32* %1340, align 4
  %1342 = icmp eq i32 %1341, 255
  br i1 %1342, label %1343, label %1354

1343:                                             ; preds = %1336
  %1344 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1345 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1344, i32 0, i32 4
  %1346 = load i32**, i32*** %1345, align 8
  %1347 = load i32, i32* %12, align 4
  %1348 = sext i32 %1347 to i64
  %1349 = getelementptr inbounds i32*, i32** %1346, i64 %1348
  %1350 = load i32*, i32** %1349, align 8
  %1351 = load i32, i32* %15, align 4
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds i32, i32* %1350, i64 %1352
  store i32 254, i32* %1353, align 4
  br label %1399

1354:                                             ; preds = %1336
  %1355 = load i32*, i32** %10, align 8
  %1356 = load i32, i32* %13, align 4
  %1357 = sext i32 %1356 to i64
  %1358 = getelementptr inbounds i32, i32* %1355, i64 %1357
  %1359 = load i32, i32* %1358, align 4
  %1360 = and i32 %1359, 15
  %1361 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1362 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1361, i32 0, i32 4
  %1363 = load i32**, i32*** %1362, align 8
  %1364 = load i32, i32* %12, align 4
  %1365 = sext i32 %1364 to i64
  %1366 = getelementptr inbounds i32*, i32** %1363, i64 %1365
  %1367 = load i32*, i32** %1366, align 8
  %1368 = load i32, i32* %15, align 4
  %1369 = sext i32 %1368 to i64
  %1370 = getelementptr inbounds i32, i32* %1367, i64 %1369
  store i32 %1360, i32* %1370, align 4
  %1371 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1372 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1371, i32 0, i32 4
  %1373 = load i32**, i32*** %1372, align 8
  %1374 = load i32, i32* %12, align 4
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds i32*, i32** %1373, i64 %1375
  %1377 = load i32*, i32** %1376, align 8
  %1378 = load i32, i32* %15, align 4
  %1379 = sext i32 %1378 to i64
  %1380 = getelementptr inbounds i32, i32* %1377, i64 %1379
  %1381 = load i32, i32* %1380, align 4
  %1382 = call i32 @BIT(i32 3)
  %1383 = and i32 %1381, %1382
  %1384 = icmp ne i32 %1383, 0
  br i1 %1384, label %1385, label %1398

1385:                                             ; preds = %1354
  %1386 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1387 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1386, i32 0, i32 4
  %1388 = load i32**, i32*** %1387, align 8
  %1389 = load i32, i32* %12, align 4
  %1390 = sext i32 %1389 to i64
  %1391 = getelementptr inbounds i32*, i32** %1388, i64 %1390
  %1392 = load i32*, i32** %1391, align 8
  %1393 = load i32, i32* %15, align 4
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds i32, i32* %1392, i64 %1394
  %1396 = load i32, i32* %1395, align 4
  %1397 = or i32 %1396, 240
  store i32 %1397, i32* %1395, align 4
  br label %1398

1398:                                             ; preds = %1385, %1354
  br label %1399

1399:                                             ; preds = %1398, %1343
  %1400 = load i32, i32* %13, align 4
  %1401 = add nsw i32 %1400, 1
  store i32 %1401, i32* %13, align 4
  br label %1402

1402:                                             ; preds = %1399
  %1403 = load i32, i32* %15, align 4
  %1404 = add nsw i32 %1403, 1
  store i32 %1404, i32* %15, align 4
  br label %1268

1405:                                             ; preds = %1268
  br label %1406

1406:                                             ; preds = %1405
  %1407 = load i32, i32* %12, align 4
  %1408 = add nsw i32 %1407, 1
  store i32 %1408, i32* %12, align 4
  br label %265

1409:                                             ; preds = %259, %265
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
