; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_read_txpower_info_from_hwpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_read_txpower_info_from_hwpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32**, i32**, i32**, i32**, i32**, i64**, i32*, i32*, i32**, i32**, i32**, i32**, i32, i32, i32*, i32, i32, i32* }

@EEPROM_TXPOWERCCK = common dso_local global i32 0, align 4
@EEPROM_TXPOWERHT40_1S = common dso_local global i32 0, align 4
@EEPROM_DEFAULT_TXPOWERLEVEL = common dso_local global i8* null, align 8
@EEPROM_TXPOWERHT40_2SDIFF = common dso_local global i32 0, align 4
@EEPROM_DEFAULT_HT40_2SDIFF = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@FINIT = common dso_local global i32 0, align 4
@INIT_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RF(%d) EEPROM CCK Area(%d) = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"RF(%d) EEPROM HT40 1S Area(%d) = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"RF(%d) EEPROM HT40 2S Diff Area(%d) = 0x%x\0A\00", align 1
@INIT_TXPOWER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S / HT40_2S] = [0x%x / 0x%x / 0x%x]\0A\00", align 1
@EEPROM_TXPWR_GROUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"RF-%d pwrgroup_ht20[%d] = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"RF-%d pwrgroup_ht40[%d] = 0x%x\0A\00", align 1
@EEPROM_TXPOWERHT20DIFF = common dso_local global i32 0, align 4
@EEPROM_DEFAULT_HT20_DIFF = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_OFDMDIFF = common dso_local global i32 0, align 4
@EEPROM_DEFAULT_LEGACYHTTXPOWERDIFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"RF-A Ht20 to HT40 Diff[%d] = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"RF-A Legacy to Ht40 Diff[%d] = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"RF-B Ht20 to HT40 Diff[%d] = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"RF-B Legacy to HT40 Diff[%d] = 0x%x\0A\00", align 1
@RF_OPTION1 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", align 1
@EEPROM_TSSI_A = common dso_local global i64 0, align 8
@EEPROM_TSSI_B = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_TSSI = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"TSSI_A = 0x%x, TSSI_B = 0x%x\0A\00", align 1
@EEPROM_THERMAL_METER = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_THERMALMETER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"thermalmeter = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @_rtl92ce_read_txpower_info_from_hwpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ce_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_efuse*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %7, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %16)
  store %struct.rtl_efuse* %17, %struct.rtl_efuse** %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %99, %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %102

21:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %95, %21
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %98

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @EEPROM_TXPOWERCCK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 3
  %33 = add nsw i32 %30, %32
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %40 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %38, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @EEPROM_TXPOWERHT40_1S, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 3
  %53 = add nsw i32 %50, %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %49, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %60 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %58, i32* %68, align 4
  br label %94

69:                                               ; preds = %25
  %70 = load i8*, i8** @EEPROM_DEFAULT_TXPOWERLEVEL, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %73 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %71, i32* %81, align 4
  %82 = load i8*, i8** @EEPROM_DEFAULT_TXPOWERLEVEL, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %85 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %84, i32 0, i32 1
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %83, i32* %93, align 4
  br label %94

94:                                               ; preds = %69, %28
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %22

98:                                               ; preds = %22
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %18

102:                                              ; preds = %18
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %143, %102
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 3
  br i1 %105, label %106, label %146

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* @EEPROM_TXPOWERHT40_2SDIFF, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  br label %119

117:                                              ; preds = %106
  %118 = load i32, i32* @EEPROM_DEFAULT_HT40_2SDIFF, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %117, %109
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, 15
  %122 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %123 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %122, i32 0, i32 2
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* @RF90_PATH_A, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %121, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 240
  %133 = ashr i32 %132, 4
  %134 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %135 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %134, i32 0, i32 2
  %136 = load i32**, i32*** %135, align 8
  %137 = load i64, i64* @RF90_PATH_B, align 8
  %138 = getelementptr inbounds i32*, i32** %136, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %133, i32* %142, align 4
  br label %143

143:                                              ; preds = %119
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %103

146:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %176, %146
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %179

150:                                              ; preds = %147
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %172, %150
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 3
  br i1 %153, label %154, label %175

154:                                              ; preds = %151
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %156 = load i32, i32* @FINIT, align 4
  %157 = load i32, i32* @INIT_EEPROM, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %161 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %160, i32 0, i32 0
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %155, i32 %156, i32 %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %159, i32 %170)
  br label %172

172:                                              ; preds = %154
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %151

175:                                              ; preds = %151
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %147

179:                                              ; preds = %147
  store i32 0, i32* %9, align 4
  br label %180

180:                                              ; preds = %209, %179
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %181, 2
  br i1 %182, label %183, label %212

183:                                              ; preds = %180
  store i32 0, i32* %12, align 4
  br label %184

184:                                              ; preds = %205, %183
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %185, 3
  br i1 %186, label %187, label %208

187:                                              ; preds = %184
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %189 = load i32, i32* @FINIT, align 4
  %190 = load i32, i32* @INIT_EEPROM, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %194 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %193, i32 0, i32 1
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %188, i32 %189, i32 %190, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %192, i32 %203)
  br label %205

205:                                              ; preds = %187
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %184

208:                                              ; preds = %184
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %180

212:                                              ; preds = %180
  store i32 0, i32* %9, align 4
  br label %213

213:                                              ; preds = %242, %212
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 2
  br i1 %215, label %216, label %245

216:                                              ; preds = %213
  store i32 0, i32* %12, align 4
  br label %217

217:                                              ; preds = %238, %216
  %218 = load i32, i32* %12, align 4
  %219 = icmp slt i32 %218, 3
  br i1 %219, label %220, label %241

220:                                              ; preds = %217
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %222 = load i32, i32* @FINIT, align 4
  %223 = load i32, i32* @INIT_EEPROM, align 4
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %227 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %221, i32 %222, i32 %223, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %224, i32 %225, i32 %236)
  br label %238

238:                                              ; preds = %220
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  br label %217

241:                                              ; preds = %217
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %9, align 4
  br label %213

245:                                              ; preds = %213
  store i32 0, i32* %9, align 4
  br label %246

246:                                              ; preds = %420, %245
  %247 = load i32, i32* %9, align 4
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %249, label %423

249:                                              ; preds = %246
  store i32 0, i32* %12, align 4
  br label %250

250:                                              ; preds = %369, %249
  %251 = load i32, i32* %12, align 4
  %252 = icmp slt i32 %251, 14
  br i1 %252, label %253, label %372

253:                                              ; preds = %250
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @rtl92c_get_chnl_group(i32 %254)
  store i32 %255, i32* %10, align 4
  %256 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %257 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %256, i32 0, i32 0
  %258 = load i32**, i32*** %257, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %268 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %267, i32 0, i32 3
  %269 = load i32**, i32*** %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %269, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %266, i32* %276, align 4
  %277 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %278 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %277, i32 0, i32 1
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %289 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %288, i32 0, i32 4
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %287, i32* %297, align 4
  %298 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %299 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %298, i32 0, i32 1
  %300 = load i32**, i32*** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %300, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %310 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %309, i32 0, i32 2
  %311 = load i32**, i32*** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32*, i32** %311, i64 %313
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = sub nsw i32 %308, %319
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %357

322:                                              ; preds = %253
  %323 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %324 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %323, i32 0, i32 1
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %335 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %334, i32 0, i32 2
  %336 = load i32**, i32*** %335, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32*, i32** %336, i64 %338
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %10, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %333, %344
  %346 = sext i32 %345 to i64
  %347 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %348 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %347, i32 0, i32 5
  %349 = load i64**, i64*** %348, align 8
  %350 = load i32, i32* %9, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64*, i64** %349, i64 %351
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %12, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  store i64 %346, i64* %356, align 8
  br label %368

357:                                              ; preds = %253
  %358 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %359 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %358, i32 0, i32 5
  %360 = load i64**, i64*** %359, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64*, i64** %360, i64 %362
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  store i64 0, i64* %367, align 8
  br label %368

368:                                              ; preds = %357, %322
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %12, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %12, align 4
  br label %250

372:                                              ; preds = %250
  store i32 0, i32* %12, align 4
  br label %373

373:                                              ; preds = %416, %372
  %374 = load i32, i32* %12, align 4
  %375 = icmp slt i32 %374, 14
  br i1 %375, label %376, label %419

376:                                              ; preds = %373
  %377 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %378 = load i32, i32* @FINIT, align 4
  %379 = load i32, i32* @INIT_TXPOWER, align 4
  %380 = load i32, i32* %9, align 4
  %381 = load i32, i32* %12, align 4
  %382 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %383 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %382, i32 0, i32 3
  %384 = load i32**, i32*** %383, align 8
  %385 = load i32, i32* %9, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32*, i32** %384, i64 %386
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %394 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %393, i32 0, i32 4
  %395 = load i32**, i32*** %394, align 8
  %396 = load i32, i32* %9, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32*, i32** %395, i64 %397
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %405 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %404, i32 0, i32 5
  %406 = load i64**, i64*** %405, align 8
  %407 = load i32, i32* %9, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64*, i64** %406, i64 %408
  %410 = load i64*, i64** %409, align 8
  %411 = load i32, i32* %12, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %410, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %377, i32 %378, i32 %379, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %380, i32 %381, i32 %392, i32 %403, i64 %414)
  br label %416

416:                                              ; preds = %376
  %417 = load i32, i32* %12, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %12, align 4
  br label %373

419:                                              ; preds = %373
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %9, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %9, align 4
  br label %246

423:                                              ; preds = %246
  store i32 0, i32* %12, align 4
  br label %424

424:                                              ; preds = %472, %423
  %425 = load i32, i32* %12, align 4
  %426 = icmp slt i32 %425, 3
  br i1 %426, label %427, label %475

427:                                              ; preds = %424
  %428 = load i32, i32* %5, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %458, label %430

430:                                              ; preds = %427
  %431 = load i32*, i32** %6, align 8
  %432 = load i32, i32* @EEPROM_TXPWR_GROUP, align 4
  %433 = load i32, i32* %12, align 4
  %434 = add nsw i32 %432, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %431, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %439 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %438, i32 0, i32 6
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %12, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  store i32 %437, i32* %443, align 4
  %444 = load i32*, i32** %6, align 8
  %445 = load i32, i32* @EEPROM_TXPWR_GROUP, align 4
  %446 = add nsw i32 %445, 3
  %447 = load i32, i32* %12, align 4
  %448 = add nsw i32 %446, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %444, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %453 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %452, i32 0, i32 7
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %12, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  store i32 %451, i32* %457, align 4
  br label %471

458:                                              ; preds = %427
  %459 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %460 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %459, i32 0, i32 6
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  store i32 0, i32* %464, align 4
  %465 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %466 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %465, i32 0, i32 7
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %12, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  store i32 0, i32* %470, align 4
  br label %471

471:                                              ; preds = %458, %430
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %12, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %12, align 4
  br label %424

475:                                              ; preds = %424
  store i32 0, i32* %9, align 4
  br label %476

476:                                              ; preds = %611, %475
  %477 = load i32, i32* %9, align 4
  %478 = icmp slt i32 %477, 2
  br i1 %478, label %479, label %614

479:                                              ; preds = %476
  store i32 0, i32* %12, align 4
  br label %480

480:                                              ; preds = %607, %479
  %481 = load i32, i32* %12, align 4
  %482 = icmp slt i32 %481, 14
  br i1 %482, label %483, label %610

483:                                              ; preds = %480
  %484 = load i32, i32* %12, align 4
  %485 = call i32 @rtl92c_get_chnl_group(i32 %484)
  store i32 %485, i32* %10, align 4
  %486 = load i32, i32* %9, align 4
  %487 = sext i32 %486 to i64
  %488 = load i64, i64* @RF90_PATH_A, align 8
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %490, label %527

490:                                              ; preds = %483
  %491 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %492 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %491, i32 0, i32 7
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %10, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = and i32 %497, 15
  %499 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %500 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %499, i32 0, i32 8
  %501 = load i32**, i32*** %500, align 8
  %502 = load i32, i32* %9, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32*, i32** %501, i64 %503
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %12, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  store i32 %498, i32* %508, align 4
  %509 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %510 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %509, i32 0, i32 6
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %10, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = and i32 %515, 15
  %517 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %518 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %517, i32 0, i32 9
  %519 = load i32**, i32*** %518, align 8
  %520 = load i32, i32* %9, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32*, i32** %519, i64 %521
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %12, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  store i32 %516, i32* %526, align 4
  br label %572

527:                                              ; preds = %483
  %528 = load i32, i32* %9, align 4
  %529 = sext i32 %528 to i64
  %530 = load i64, i64* @RF90_PATH_B, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %571

532:                                              ; preds = %527
  %533 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %534 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %533, i32 0, i32 7
  %535 = load i32*, i32** %534, align 8
  %536 = load i32, i32* %10, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = and i32 %539, 240
  %541 = ashr i32 %540, 4
  %542 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %543 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %542, i32 0, i32 8
  %544 = load i32**, i32*** %543, align 8
  %545 = load i32, i32* %9, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32*, i32** %544, i64 %546
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %12, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  store i32 %541, i32* %551, align 4
  %552 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %553 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %552, i32 0, i32 6
  %554 = load i32*, i32** %553, align 8
  %555 = load i32, i32* %10, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = and i32 %558, 240
  %560 = ashr i32 %559, 4
  %561 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %562 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %561, i32 0, i32 9
  %563 = load i32**, i32*** %562, align 8
  %564 = load i32, i32* %9, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32*, i32** %563, i64 %565
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* %12, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  store i32 %560, i32* %570, align 4
  br label %571

571:                                              ; preds = %532, %527
  br label %572

572:                                              ; preds = %571, %490
  %573 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %574 = load i32, i32* @FINIT, align 4
  %575 = load i32, i32* @INIT_TXPOWER, align 4
  %576 = load i32, i32* %9, align 4
  %577 = load i32, i32* %12, align 4
  %578 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %579 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %578, i32 0, i32 8
  %580 = load i32**, i32*** %579, align 8
  %581 = load i32, i32* %9, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32*, i32** %580, i64 %582
  %584 = load i32*, i32** %583, align 8
  %585 = load i32, i32* %12, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %573, i32 %574, i32 %575, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %576, i32 %577, i32 %588)
  %590 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %591 = load i32, i32* @FINIT, align 4
  %592 = load i32, i32* @INIT_TXPOWER, align 4
  %593 = load i32, i32* %9, align 4
  %594 = load i32, i32* %12, align 4
  %595 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %596 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %595, i32 0, i32 9
  %597 = load i32**, i32*** %596, align 8
  %598 = load i32, i32* %9, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32*, i32** %597, i64 %599
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* %12, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %590, i32 %591, i32 %592, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %593, i32 %594, i32 %605)
  br label %607

607:                                              ; preds = %572
  %608 = load i32, i32* %12, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %12, align 4
  br label %480

610:                                              ; preds = %480
  br label %611

611:                                              ; preds = %610
  %612 = load i32, i32* %9, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %9, align 4
  br label %476

614:                                              ; preds = %476
  store i32 0, i32* %12, align 4
  br label %615

615:                                              ; preds = %747, %614
  %616 = load i32, i32* %12, align 4
  %617 = icmp slt i32 %616, 14
  br i1 %617, label %618, label %750

618:                                              ; preds = %615
  %619 = load i32, i32* %12, align 4
  %620 = call i32 @rtl92c_get_chnl_group(i32 %619)
  store i32 %620, i32* %10, align 4
  %621 = load i32, i32* %5, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %631, label %623

623:                                              ; preds = %618
  %624 = load i32*, i32** %6, align 8
  %625 = load i32, i32* @EEPROM_TXPOWERHT20DIFF, align 4
  %626 = load i32, i32* %10, align 4
  %627 = add nsw i32 %625, %626
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, i32* %624, i64 %628
  %630 = load i32, i32* %629, align 4
  store i32 %630, i32* %11, align 4
  br label %633

631:                                              ; preds = %618
  %632 = load i32, i32* @EEPROM_DEFAULT_HT20_DIFF, align 4
  store i32 %632, i32* %11, align 4
  br label %633

633:                                              ; preds = %631, %623
  %634 = load i32, i32* %11, align 4
  %635 = and i32 %634, 15
  %636 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %637 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %636, i32 0, i32 10
  %638 = load i32**, i32*** %637, align 8
  %639 = load i64, i64* @RF90_PATH_A, align 8
  %640 = getelementptr inbounds i32*, i32** %638, i64 %639
  %641 = load i32*, i32** %640, align 8
  %642 = load i32, i32* %12, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32, i32* %641, i64 %643
  store i32 %635, i32* %644, align 4
  %645 = load i32, i32* %11, align 4
  %646 = ashr i32 %645, 4
  %647 = and i32 %646, 15
  %648 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %649 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %648, i32 0, i32 10
  %650 = load i32**, i32*** %649, align 8
  %651 = load i64, i64* @RF90_PATH_B, align 8
  %652 = getelementptr inbounds i32*, i32** %650, i64 %651
  %653 = load i32*, i32** %652, align 8
  %654 = load i32, i32* %12, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %653, i64 %655
  store i32 %647, i32* %656, align 4
  %657 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %658 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %657, i32 0, i32 10
  %659 = load i32**, i32*** %658, align 8
  %660 = load i64, i64* @RF90_PATH_A, align 8
  %661 = getelementptr inbounds i32*, i32** %659, i64 %660
  %662 = load i32*, i32** %661, align 8
  %663 = load i32, i32* %12, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32, i32* %662, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = call i32 @BIT(i32 3)
  %668 = and i32 %666, %667
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %682

670:                                              ; preds = %633
  %671 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %672 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %671, i32 0, i32 10
  %673 = load i32**, i32*** %672, align 8
  %674 = load i64, i64* @RF90_PATH_A, align 8
  %675 = getelementptr inbounds i32*, i32** %673, i64 %674
  %676 = load i32*, i32** %675, align 8
  %677 = load i32, i32* %12, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i32, i32* %676, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = or i32 %680, 240
  store i32 %681, i32* %679, align 4
  br label %682

682:                                              ; preds = %670, %633
  %683 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %684 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %683, i32 0, i32 10
  %685 = load i32**, i32*** %684, align 8
  %686 = load i64, i64* @RF90_PATH_B, align 8
  %687 = getelementptr inbounds i32*, i32** %685, i64 %686
  %688 = load i32*, i32** %687, align 8
  %689 = load i32, i32* %12, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, i32* %688, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = call i32 @BIT(i32 3)
  %694 = and i32 %692, %693
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %708

696:                                              ; preds = %682
  %697 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %698 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %697, i32 0, i32 10
  %699 = load i32**, i32*** %698, align 8
  %700 = load i64, i64* @RF90_PATH_B, align 8
  %701 = getelementptr inbounds i32*, i32** %699, i64 %700
  %702 = load i32*, i32** %701, align 8
  %703 = load i32, i32* %12, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i32, i32* %702, i64 %704
  %706 = load i32, i32* %705, align 4
  %707 = or i32 %706, 240
  store i32 %707, i32* %705, align 4
  br label %708

708:                                              ; preds = %696, %682
  %709 = load i32, i32* %12, align 4
  %710 = call i32 @rtl92c_get_chnl_group(i32 %709)
  store i32 %710, i32* %10, align 4
  %711 = load i32, i32* %5, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %721, label %713

713:                                              ; preds = %708
  %714 = load i32*, i32** %6, align 8
  %715 = load i32, i32* @EEPROM_TXPOWER_OFDMDIFF, align 4
  %716 = load i32, i32* %10, align 4
  %717 = add nsw i32 %715, %716
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i32, i32* %714, i64 %718
  %720 = load i32, i32* %719, align 4
  store i32 %720, i32* %11, align 4
  br label %723

721:                                              ; preds = %708
  %722 = load i32, i32* @EEPROM_DEFAULT_LEGACYHTTXPOWERDIFF, align 4
  store i32 %722, i32* %11, align 4
  br label %723

723:                                              ; preds = %721, %713
  %724 = load i32, i32* %11, align 4
  %725 = and i32 %724, 15
  %726 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %727 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %726, i32 0, i32 11
  %728 = load i32**, i32*** %727, align 8
  %729 = load i64, i64* @RF90_PATH_A, align 8
  %730 = getelementptr inbounds i32*, i32** %728, i64 %729
  %731 = load i32*, i32** %730, align 8
  %732 = load i32, i32* %12, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i32, i32* %731, i64 %733
  store i32 %725, i32* %734, align 4
  %735 = load i32, i32* %11, align 4
  %736 = ashr i32 %735, 4
  %737 = and i32 %736, 15
  %738 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %739 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %738, i32 0, i32 11
  %740 = load i32**, i32*** %739, align 8
  %741 = load i64, i64* @RF90_PATH_B, align 8
  %742 = getelementptr inbounds i32*, i32** %740, i64 %741
  %743 = load i32*, i32** %742, align 8
  %744 = load i32, i32* %12, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i32, i32* %743, i64 %745
  store i32 %737, i32* %746, align 4
  br label %747

747:                                              ; preds = %723
  %748 = load i32, i32* %12, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %12, align 4
  br label %615

750:                                              ; preds = %615
  %751 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %752 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %751, i32 0, i32 11
  %753 = load i32**, i32*** %752, align 8
  %754 = load i64, i64* @RF90_PATH_A, align 8
  %755 = getelementptr inbounds i32*, i32** %753, i64 %754
  %756 = load i32*, i32** %755, align 8
  %757 = getelementptr inbounds i32, i32* %756, i64 7
  %758 = load i32, i32* %757, align 4
  %759 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %760 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %759, i32 0, i32 12
  store i32 %758, i32* %760, align 8
  store i32 0, i32* %12, align 4
  br label %761

761:                                              ; preds = %780, %750
  %762 = load i32, i32* %12, align 4
  %763 = icmp slt i32 %762, 14
  br i1 %763, label %764, label %783

764:                                              ; preds = %761
  %765 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %766 = load i32, i32* @FINIT, align 4
  %767 = load i32, i32* @INIT_TXPOWER, align 4
  %768 = load i32, i32* %12, align 4
  %769 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %770 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %769, i32 0, i32 10
  %771 = load i32**, i32*** %770, align 8
  %772 = load i64, i64* @RF90_PATH_A, align 8
  %773 = getelementptr inbounds i32*, i32** %771, i64 %772
  %774 = load i32*, i32** %773, align 8
  %775 = load i32, i32* %12, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i32, i32* %774, i64 %776
  %778 = load i32, i32* %777, align 4
  %779 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %765, i32 %766, i32 %767, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %768, i32 %778)
  br label %780

780:                                              ; preds = %764
  %781 = load i32, i32* %12, align 4
  %782 = add nsw i32 %781, 1
  store i32 %782, i32* %12, align 4
  br label %761

783:                                              ; preds = %761
  store i32 0, i32* %12, align 4
  br label %784

784:                                              ; preds = %803, %783
  %785 = load i32, i32* %12, align 4
  %786 = icmp slt i32 %785, 14
  br i1 %786, label %787, label %806

787:                                              ; preds = %784
  %788 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %789 = load i32, i32* @FINIT, align 4
  %790 = load i32, i32* @INIT_TXPOWER, align 4
  %791 = load i32, i32* %12, align 4
  %792 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %793 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %792, i32 0, i32 11
  %794 = load i32**, i32*** %793, align 8
  %795 = load i64, i64* @RF90_PATH_A, align 8
  %796 = getelementptr inbounds i32*, i32** %794, i64 %795
  %797 = load i32*, i32** %796, align 8
  %798 = load i32, i32* %12, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds i32, i32* %797, i64 %799
  %801 = load i32, i32* %800, align 4
  %802 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %788, i32 %789, i32 %790, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %791, i32 %801)
  br label %803

803:                                              ; preds = %787
  %804 = load i32, i32* %12, align 4
  %805 = add nsw i32 %804, 1
  store i32 %805, i32* %12, align 4
  br label %784

806:                                              ; preds = %784
  store i32 0, i32* %12, align 4
  br label %807

807:                                              ; preds = %826, %806
  %808 = load i32, i32* %12, align 4
  %809 = icmp slt i32 %808, 14
  br i1 %809, label %810, label %829

810:                                              ; preds = %807
  %811 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %812 = load i32, i32* @FINIT, align 4
  %813 = load i32, i32* @INIT_TXPOWER, align 4
  %814 = load i32, i32* %12, align 4
  %815 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %816 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %815, i32 0, i32 10
  %817 = load i32**, i32*** %816, align 8
  %818 = load i64, i64* @RF90_PATH_B, align 8
  %819 = getelementptr inbounds i32*, i32** %817, i64 %818
  %820 = load i32*, i32** %819, align 8
  %821 = load i32, i32* %12, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds i32, i32* %820, i64 %822
  %824 = load i32, i32* %823, align 4
  %825 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %811, i32 %812, i32 %813, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %814, i32 %824)
  br label %826

826:                                              ; preds = %810
  %827 = load i32, i32* %12, align 4
  %828 = add nsw i32 %827, 1
  store i32 %828, i32* %12, align 4
  br label %807

829:                                              ; preds = %807
  store i32 0, i32* %12, align 4
  br label %830

830:                                              ; preds = %849, %829
  %831 = load i32, i32* %12, align 4
  %832 = icmp slt i32 %831, 14
  br i1 %832, label %833, label %852

833:                                              ; preds = %830
  %834 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %835 = load i32, i32* @FINIT, align 4
  %836 = load i32, i32* @INIT_TXPOWER, align 4
  %837 = load i32, i32* %12, align 4
  %838 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %839 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %838, i32 0, i32 11
  %840 = load i32**, i32*** %839, align 8
  %841 = load i64, i64* @RF90_PATH_B, align 8
  %842 = getelementptr inbounds i32*, i32** %840, i64 %841
  %843 = load i32*, i32** %842, align 8
  %844 = load i32, i32* %12, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i32, i32* %843, i64 %845
  %847 = load i32, i32* %846, align 4
  %848 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %834, i32 %835, i32 %836, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %837, i32 %847)
  br label %849

849:                                              ; preds = %833
  %850 = load i32, i32* %12, align 4
  %851 = add nsw i32 %850, 1
  store i32 %851, i32* %12, align 4
  br label %830

852:                                              ; preds = %830
  %853 = load i32, i32* %5, align 4
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %863, label %855

855:                                              ; preds = %852
  %856 = load i32*, i32** %6, align 8
  %857 = load i64, i64* @RF_OPTION1, align 8
  %858 = getelementptr inbounds i32, i32* %856, i64 %857
  %859 = load i32, i32* %858, align 4
  %860 = and i32 %859, 7
  %861 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %862 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %861, i32 0, i32 13
  store i32 %860, i32* %862, align 4
  br label %866

863:                                              ; preds = %852
  %864 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %865 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %864, i32 0, i32 13
  store i32 0, i32* %865, align 4
  br label %866

866:                                              ; preds = %863, %855
  %867 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %868 = load i32, i32* @FINIT, align 4
  %869 = load i32, i32* @INIT_TXPOWER, align 4
  %870 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %871 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %870, i32 0, i32 13
  %872 = load i32, i32* %871, align 4
  %873 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %867, i32 %868, i32 %869, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %872)
  %874 = load i32, i32* %5, align 4
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %895, label %876

876:                                              ; preds = %866
  %877 = load i32*, i32** %6, align 8
  %878 = load i64, i64* @EEPROM_TSSI_A, align 8
  %879 = getelementptr inbounds i32, i32* %877, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %882 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %881, i32 0, i32 14
  %883 = load i32*, i32** %882, align 8
  %884 = load i64, i64* @RF90_PATH_A, align 8
  %885 = getelementptr inbounds i32, i32* %883, i64 %884
  store i32 %880, i32* %885, align 4
  %886 = load i32*, i32** %6, align 8
  %887 = load i64, i64* @EEPROM_TSSI_B, align 8
  %888 = getelementptr inbounds i32, i32* %886, i64 %887
  %889 = load i32, i32* %888, align 4
  %890 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %891 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %890, i32 0, i32 14
  %892 = load i32*, i32** %891, align 8
  %893 = load i64, i64* @RF90_PATH_B, align 8
  %894 = getelementptr inbounds i32, i32* %892, i64 %893
  store i32 %889, i32* %894, align 4
  br label %910

895:                                              ; preds = %866
  %896 = load i8*, i8** @EEPROM_DEFAULT_TSSI, align 8
  %897 = ptrtoint i8* %896 to i32
  %898 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %899 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %898, i32 0, i32 14
  %900 = load i32*, i32** %899, align 8
  %901 = load i64, i64* @RF90_PATH_A, align 8
  %902 = getelementptr inbounds i32, i32* %900, i64 %901
  store i32 %897, i32* %902, align 4
  %903 = load i8*, i8** @EEPROM_DEFAULT_TSSI, align 8
  %904 = ptrtoint i8* %903 to i32
  %905 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %906 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %905, i32 0, i32 14
  %907 = load i32*, i32** %906, align 8
  %908 = load i64, i64* @RF90_PATH_B, align 8
  %909 = getelementptr inbounds i32, i32* %907, i64 %908
  store i32 %904, i32* %909, align 4
  br label %910

910:                                              ; preds = %895, %876
  %911 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %912 = load i32, i32* @FINIT, align 4
  %913 = load i32, i32* @INIT_TXPOWER, align 4
  %914 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %915 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %914, i32 0, i32 14
  %916 = load i32*, i32** %915, align 8
  %917 = load i64, i64* @RF90_PATH_A, align 8
  %918 = getelementptr inbounds i32, i32* %916, i64 %917
  %919 = load i32, i32* %918, align 4
  %920 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %921 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %920, i32 0, i32 14
  %922 = load i32*, i32** %921, align 8
  %923 = load i64, i64* @RF90_PATH_B, align 8
  %924 = getelementptr inbounds i32, i32* %922, i64 %923
  %925 = load i32, i32* %924, align 4
  %926 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %911, i32 %912, i32 %913, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %919, i32 %925)
  %927 = load i32, i32* %5, align 4
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %934, label %929

929:                                              ; preds = %910
  %930 = load i32*, i32** %6, align 8
  %931 = load i64, i64* @EEPROM_THERMAL_METER, align 8
  %932 = getelementptr inbounds i32, i32* %930, i64 %931
  %933 = load i32, i32* %932, align 4
  store i32 %933, i32* %11, align 4
  br label %936

934:                                              ; preds = %910
  %935 = load i32, i32* @EEPROM_DEFAULT_THERMALMETER, align 4
  store i32 %935, i32* %11, align 4
  br label %936

936:                                              ; preds = %934, %929
  %937 = load i32, i32* %11, align 4
  %938 = and i32 %937, 31
  %939 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %940 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %939, i32 0, i32 15
  store i32 %938, i32* %940, align 8
  %941 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %942 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %941, i32 0, i32 15
  %943 = load i32, i32* %942, align 8
  %944 = icmp eq i32 %943, 31
  br i1 %944, label %948, label %945

945:                                              ; preds = %936
  %946 = load i32, i32* %5, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %948, label %951

948:                                              ; preds = %945, %936
  %949 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %950 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %949, i32 0, i32 16
  store i32 1, i32* %950, align 4
  br label %951

951:                                              ; preds = %948, %945
  %952 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %953 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %952, i32 0, i32 15
  %954 = load i32, i32* %953, align 8
  %955 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %956 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %955, i32 0, i32 17
  %957 = load i32*, i32** %956, align 8
  %958 = getelementptr inbounds i32, i32* %957, i64 0
  store i32 %954, i32* %958, align 4
  %959 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %960 = load i32, i32* @FINIT, align 4
  %961 = load i32, i32* @INIT_TXPOWER, align 4
  %962 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %963 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %962, i32 0, i32 15
  %964 = load i32, i32* %963, align 8
  %965 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %959, i32 %960, i32 %961, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %964)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl92c_get_chnl_group(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
