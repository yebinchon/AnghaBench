; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_read_txpower_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_read_txpower_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32**, i32**, i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info = type { i32**, i32**, i32**, i32**, i32**, i32**, i32** }

@EEPROM_RF_OPT1 = common dso_local global i64 0, align 8
@EEPROM_THERMAL_METER = common dso_local global i64 0, align 8
@EEPROM_XTAL_K = common dso_local global i64 0, align 8
@EEPROM_IQK_DELTA = common dso_local global i64 0, align 8
@EEPROM_LCK_DELTA = common dso_local global i64 0, align 8
@EEPROM_TSSI_A_5G = common dso_local global i64 0, align 8
@EEPROM_TSSI_B_5G = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Is D cut,Internal PA0 %d Internal PA1 %d\0A\00", align 1
@EEPROM_RF_OPT6 = common dso_local global i64 0, align 8
@EEPROM_RF_OPT7 = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_THERMALMETER = common dso_local global i32 0, align 4
@EEPROM_DEFAULT_CRYSTALCAP = common dso_local global i32 0, align 4
@COMP_INTR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"EEPROMRegulatory = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ThermalMeter = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"CrystalCap = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Delta_IQK = 0x%x Delta_LCK = 0x%x\0A\00", align 1
@RF6052_MAX_PATH = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER = common dso_local global i64 0, align 8
@CHANNEL_MAX_NUMBER_2G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @_rtl92de_read_txpower_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92de_read_txpower_info(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_efuse*, align 8
  %9 = alloca %struct.txpower_info, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %20)
  store %struct.rtl_efuse* %21, %struct.rtl_efuse** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @_rtl92de_readpowervalue_fromprom(%struct.txpower_info* %9, i32* %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %132, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* @EEPROM_RF_OPT1, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 7
  %33 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %34 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* @EEPROM_THERMAL_METER, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 31
  %40 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %41 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* @EEPROM_XTAL_K, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %47 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* @EEPROM_IQK_DELTA, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* @EEPROM_LCK_DELTA, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 12
  %59 = ashr i32 %58, 2
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %62 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %64 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_92D_D_CUT(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %27
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_92D_E_CUT(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %69, %27
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* @EEPROM_TSSI_A_5G, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BIT(i32 6)
  %82 = and i32 %80, %81
  %83 = ashr i32 %82, 6
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %88 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* @EEPROM_TSSI_B_5G, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @BIT(i32 6)
  %96 = and i32 %94, %95
  %97 = ashr i32 %96, 6
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %102 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %106 = load i32, i32* @COMP_INIT, align 4
  %107 = load i32, i32* @DBG_DMESG, align 4
  %108 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %109 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %114 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %117)
  br label %119

119:                                              ; preds = %76, %69
  %120 = load i32*, i32** %6, align 8
  %121 = load i64, i64* @EEPROM_RF_OPT6, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %125 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i64, i64* @EEPROM_RF_OPT7, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %131 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 4
  br label %143

132:                                              ; preds = %3
  %133 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %134 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  %135 = load i32, i32* @EEPROM_DEFAULT_THERMALMETER, align 4
  %136 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %137 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @EEPROM_DEFAULT_CRYSTALCAP, align 4
  %139 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %140 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 3, i32* %141, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 3, i32* %142, align 4
  br label %143

143:                                              ; preds = %132, %119
  %144 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %145 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 6
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %150 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %151, 28
  br i1 %152, label %153, label %156

153:                                              ; preds = %148, %143
  %154 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %155 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %154, i32 0, i32 1
  store i32 18, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %158 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %161 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %159, i32* %163, align 4
  %164 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %165 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 255
  br i1 %167, label %168, label %171

168:                                              ; preds = %156
  %169 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %170 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %169, i32 0, i32 2
  store i32 0, i32* %170, align 8
  br label %171

171:                                              ; preds = %168, %156
  %172 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %173 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %174, 3
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %178 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %171
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %206, %179
  %181 = load i32, i32* %11, align 4
  %182 = icmp slt i32 %181, 2
  br i1 %182, label %183, label %209

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  switch i32 %187, label %201 [
    i32 0, label %188
    i32 1, label %192
    i32 2, label %196
    i32 3, label %200
  ]

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %190
  store i32 5, i32* %191, align 4
  br label %205

192:                                              ; preds = %183
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %194
  store i32 4, i32* %195, align 4
  br label %205

196:                                              ; preds = %183
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %198
  store i32 3, i32* %199, align 4
  br label %205

200:                                              ; preds = %183
  br label %201

201:                                              ; preds = %183, %200
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %203
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %196, %192, %188
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %180

209:                                              ; preds = %180
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %213 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 8
  %214 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %209
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %219, 1
  %221 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %222 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %221, i32 0, i32 9
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %209
  %224 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %225 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 255
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %230 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %229, i32 0, i32 5
  store i32 0, i32* %230, align 8
  br label %231

231:                                              ; preds = %228, %223
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %233 = load i32, i32* @COMP_INTR, align 4
  %234 = load i32, i32* @DBG_LOUD, align 4
  %235 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %236 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %237)
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %240 = load i32, i32* @COMP_INTR, align 4
  %241 = load i32, i32* @DBG_LOUD, align 4
  %242 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %243 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %244)
  %246 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %247 = load i32, i32* @COMP_INTR, align 4
  %248 = load i32, i32* @DBG_LOUD, align 4
  %249 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %250 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %251)
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %254 = load i32, i32* @COMP_INTR, align 4
  %255 = load i32, i32* @DBG_LOUD, align 4
  %256 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %257 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %260 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %253, i32 %254, i32 %255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %258, i32 %261)
  store i64 0, i64* %15, align 8
  br label %263

263:                                              ; preds = %415, %231
  %264 = load i64, i64* %15, align 8
  %265 = load i64, i64* @RF6052_MAX_PATH, align 8
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %267, label %418

267:                                              ; preds = %263
  store i64 0, i64* %14, align 8
  br label %268

268:                                              ; preds = %411, %267
  %269 = load i64, i64* %14, align 8
  %270 = load i64, i64* @CHANNEL_MAX_NUMBER, align 8
  %271 = icmp ult i64 %269, %270
  br i1 %271, label %272, label %414

272:                                              ; preds = %268
  %273 = load i64, i64* %14, align 8
  %274 = trunc i64 %273 to i32
  %275 = call i64 @rtl92d_get_chnlgroup_fromarray(i32 %274)
  store i64 %275, i64* %16, align 8
  %276 = load i64, i64* %14, align 8
  %277 = load i64, i64* @CHANNEL_MAX_NUMBER_2G, align 8
  %278 = icmp ult i64 %276, %277
  br i1 %278, label %279, label %296

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 6
  %281 = load i32**, i32*** %280, align 8
  %282 = load i64, i64* %15, align 8
  %283 = getelementptr inbounds i32*, i32** %281, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* %16, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %289 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %288, i32 0, i32 16
  %290 = load i32**, i32*** %289, align 8
  %291 = load i64, i64* %15, align 8
  %292 = getelementptr inbounds i32*, i32** %290, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i64, i64* %14, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32 %287, i32* %295, align 4
  br label %296

296:                                              ; preds = %279, %272
  %297 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 0
  %298 = load i32**, i32*** %297, align 8
  %299 = load i64, i64* %15, align 8
  %300 = getelementptr inbounds i32*, i32** %298, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* %16, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %306 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %305, i32 0, i32 10
  %307 = load i32**, i32*** %306, align 8
  %308 = load i64, i64* %15, align 8
  %309 = getelementptr inbounds i32*, i32** %307, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = load i64, i64* %14, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32 %304, i32* %312, align 4
  %313 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 5
  %314 = load i32**, i32*** %313, align 8
  %315 = load i64, i64* %15, align 8
  %316 = getelementptr inbounds i32*, i32** %314, i64 %315
  %317 = load i32*, i32** %316, align 8
  %318 = load i64, i64* %16, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %322 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %321, i32 0, i32 15
  %323 = load i32**, i32*** %322, align 8
  %324 = load i64, i64* %15, align 8
  %325 = getelementptr inbounds i32*, i32** %323, i64 %324
  %326 = load i32*, i32** %325, align 8
  %327 = load i64, i64* %14, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  store i32 %320, i32* %328, align 4
  %329 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 4
  %330 = load i32**, i32*** %329, align 8
  %331 = load i64, i64* %15, align 8
  %332 = getelementptr inbounds i32*, i32** %330, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = load i64, i64* %16, align 8
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %338 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %337, i32 0, i32 14
  %339 = load i32**, i32*** %338, align 8
  %340 = load i64, i64* %15, align 8
  %341 = getelementptr inbounds i32*, i32** %339, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = load i64, i64* %14, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  store i32 %336, i32* %344, align 4
  %345 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 3
  %346 = load i32**, i32*** %345, align 8
  %347 = load i64, i64* %15, align 8
  %348 = getelementptr inbounds i32*, i32** %346, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* %16, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %354 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %353, i32 0, i32 13
  %355 = load i32**, i32*** %354, align 8
  %356 = load i64, i64* %15, align 8
  %357 = getelementptr inbounds i32*, i32** %355, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = load i64, i64* %14, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  store i32 %352, i32* %360, align 4
  %361 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 2
  %362 = load i32**, i32*** %361, align 8
  %363 = load i64, i64* %15, align 8
  %364 = getelementptr inbounds i32*, i32** %362, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = load i64, i64* %16, align 8
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %370 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %369, i32 0, i32 12
  %371 = load i32**, i32*** %370, align 8
  %372 = load i64, i64* %15, align 8
  %373 = getelementptr inbounds i32*, i32** %371, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = load i64, i64* %14, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  store i32 %368, i32* %376, align 4
  %377 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 0
  %378 = load i32**, i32*** %377, align 8
  %379 = load i64, i64* %15, align 8
  %380 = getelementptr inbounds i32*, i32** %378, i64 %379
  %381 = load i32*, i32** %380, align 8
  %382 = load i64, i64* %16, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %12, align 4
  %385 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %9, i32 0, i32 1
  %386 = load i32**, i32*** %385, align 8
  %387 = load i64, i64* %15, align 8
  %388 = getelementptr inbounds i32*, i32** %386, i64 %387
  %389 = load i32*, i32** %388, align 8
  %390 = load i64, i64* %16, align 8
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  %392 = load i32, i32* %391, align 4
  store i32 %392, i32* %13, align 4
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %13, align 4
  %395 = icmp sgt i32 %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %296
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* %13, align 4
  %399 = sub nsw i32 %397, %398
  br label %401

400:                                              ; preds = %296
  br label %401

401:                                              ; preds = %400, %396
  %402 = phi i32 [ %399, %396 ], [ 0, %400 ]
  %403 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %404 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %403, i32 0, i32 11
  %405 = load i32**, i32*** %404, align 8
  %406 = load i64, i64* %15, align 8
  %407 = getelementptr inbounds i32*, i32** %405, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* %14, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  store i32 %402, i32* %410, align 4
  br label %411

411:                                              ; preds = %401
  %412 = load i64, i64* %14, align 8
  %413 = add i64 %412, 1
  store i64 %413, i64* %14, align 8
  br label %268

414:                                              ; preds = %268
  br label %415

415:                                              ; preds = %414
  %416 = load i64, i64* %15, align 8
  %417 = add i64 %416, 1
  store i64 %417, i64* %15, align 8
  br label %263

418:                                              ; preds = %263
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92de_readpowervalue_fromprom(%struct.txpower_info*, i32*, i32) #1

declare dso_local i64 @IS_92D_D_CUT(i32) #1

declare dso_local i64 @IS_92D_E_CUT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @rtl92d_get_chnlgroup_fromarray(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
