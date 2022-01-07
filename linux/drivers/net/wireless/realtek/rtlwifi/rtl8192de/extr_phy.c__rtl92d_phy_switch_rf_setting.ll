; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_switch_rf_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_switch_rf_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_hal, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32* }
%struct.rtl_hal = type { i64, i64, i32, i32, i32 }
%struct.rtl_phy = type { i32 }

@BAND_ON_5G = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"====>\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"====>5G\0A\00", align 1
@curveindex_5g = common dso_local global i32* null, align 8
@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ver 1 set RF-A, 5G, 0x28 = 0x%x !!\0A\00", align 1
@RF_CHNL_NUM_5G = common dso_local global i32 0, align 4
@rf_chnl_5g = common dso_local global i32* null, align 8
@RF_CHNL_NUM_5G_40M = common dso_local global i32 0, align 4
@rf_chnl_5g_40m = common dso_local global i32* null, align 8
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@RF_REG_NUM_FOR_C_CUT_5G = common dso_local global i32 0, align 4
@rf_reg_for_c_cut_5g = common dso_local global i32* null, align 8
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RF_SYN_G4 = common dso_local global i32 0, align 4
@rf_reg_pram_c_5g = common dso_local global i32** null, align 8
@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"offset 0x%x value 0x%x path %d index %d readback 0x%x\0A\00", align 1
@RF_REG_NUM_FOR_C_CUT_5G_INTERNALPA = common dso_local global i32 0, align 4
@rf_for_c_cut_5g_internal_pa = common dso_local global i32* null, align 8
@rf_pram_c_5g_int_pa = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"offset 0x%x value 0x%x path %d index %d\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"====>2.4G\0A\00", align 1
@curveindex_2g = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"ver 3 set RF-B, 2G, 0x28 = 0x%x !!\0A\00", align 1
@RF_REG_NUM_FOR_C_CUT_2G = common dso_local global i32 0, align 4
@rf_reg_for_c_cut_2g = common dso_local global i32* null, align 8
@RF_SYN_G7 = common dso_local global i32 0, align 4
@rf_reg_param_for_c_cut_2g = common dso_local global i32** null, align 8
@.str.7 = private unnamed_addr constant [64 x i8] c"offset 0x%x value 0x%x mak 0x%x path %d index %d readback 0x%x\0A\00", align 1
@rf_reg_mask_for_c_cut_2g = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"cosa ver 3 set RF-B, 2G, 0x28 = 0x%x !!\0A\00", align 1
@rf_syn_g4_for_c_cut_2g = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"<====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl92d_phy_switch_rf_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_switch_rf_setting(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
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
  store i32 %1, i32* %4, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  store %struct.rtl_priv* %20, %struct.rtl_priv** %5, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 2
  store %struct.rtl_phy* %22, %struct.rtl_phy** %6, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 1
  store %struct.rtl_hal* %24, %struct.rtl_hal** %7, align 8
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BAND_ON_5G, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @RF90_PATH_A, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @RF90_PATH_B, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %36 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 114688, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %38 = load i32, i32* @COMP_CMD, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BAND_ON_5G, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %414

46:                                               ; preds = %34
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %48 = load i32, i32* @COMP_CMD, align 4
  %49 = load i32, i32* @DBG_LOUD, align 4
  %50 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** @curveindex_5g, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %17, align 4
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %58 = load i32, i32* @FINIT, align 4
  %59 = load i32, i32* @INIT_IQK, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @RTPRINT(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %79, %46
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @RF_CHNL_NUM_5G, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = load i32*, i32** @rf_chnl_5g, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  %76 = icmp sle i32 %75, 140
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %74, %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %62

82:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %100, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @RF_CHNL_NUM_5G_40M, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = load i32*, i32** @rf_chnl_5g_40m, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %4, align 4
  %97 = icmp sle i32 %96, 140
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %95, %87
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %83

103:                                              ; preds = %83
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 149
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 155
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %110, 161
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106, %103
  store i32 2, i32* %9, align 4
  br label %135

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 %114, 151
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %117, 153
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 163
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 165
  br i1 %124, label %125, label %126

125:                                              ; preds = %122, %119, %116, %113
  store i32 3, i32* %9, align 4
  br label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %4, align 4
  %128 = icmp eq i32 %127, 157
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = icmp eq i32 %130, 159
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %126
  store i32 4, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %129
  br label %134

134:                                              ; preds = %133, %125
  br label %135

135:                                              ; preds = %134, %112
  %136 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %137 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %135
  %142 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %143 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %148 = call i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %147, i32 0)
  store i32 %148, i32* %12, align 4
  %149 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %150 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %149, i32 0, i32 3
  store i32 1, i32* %150, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @_rtl92d_phy_enable_rf_env(%struct.ieee80211_hw* %154, i32 %155, i32* %14)
  br label %157

157:                                              ; preds = %153, %146
  br label %158

158:                                              ; preds = %157, %141, %135
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %274, %158
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @RF_REG_NUM_FOR_C_CUT_5G, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %277

163:                                              ; preds = %159
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %163
  %167 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %168 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32*, i32** @rf_reg_for_c_cut_5g, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %181 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %173, i32 %174, i32 %179, i32 %180, i32 934813)
  br label %244

182:                                              ; preds = %166, %163
  %183 = load i32*, i32** @rf_reg_for_c_cut_5g, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @RF_SYN_G4, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %224

190:                                              ; preds = %182
  %191 = load i32**, i32*** @rf_reg_pram_c_5g, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 2047
  %201 = load i32, i32* %17, align 4
  %202 = shl i32 %201, 11
  %203 = or i32 %200, %202
  store i32 %203, i32* %18, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp eq i32 %204, 36
  br i1 %205, label %206, label %213

206:                                              ; preds = %190
  %207 = call i32 @BIT(i32 7)
  %208 = call i32 @BIT(i32 6)
  %209 = or i32 %207, %208
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %18, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %18, align 4
  br label %213

213:                                              ; preds = %206, %190
  %214 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %215 = load i32, i32* %8, align 4
  %216 = load i32*, i32** @rf_reg_for_c_cut_5g, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %214, i32 %215, i32 %220, i32 %221, i32 %222)
  br label %243

224:                                              ; preds = %182
  %225 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load i32*, i32** @rf_reg_for_c_cut_5g, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %233 = load i32**, i32*** @rf_reg_pram_c_5g, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %225, i32 %226, i32 %231, i32 %232, i32 %241)
  br label %243

243:                                              ; preds = %224, %213
  br label %244

244:                                              ; preds = %243, %172
  %245 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %246 = load i32, i32* @COMP_RF, align 4
  %247 = load i32, i32* @DBG_TRACE, align 4
  %248 = load i32*, i32** @rf_reg_for_c_cut_5g, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32**, i32*** @rf_reg_pram_c_5g, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load i32*, i32** @rf_reg_for_c_cut_5g, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %272 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %264, i32 %265, i32 %270, i32 %271)
  %273 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %245, i32 %246, i32 %247, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %252, i32 %261, i32 %262, i32 %263, i32 %272)
  br label %274

274:                                              ; preds = %244
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %159

277:                                              ; preds = %159
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @_rtl92d_phy_restore_rf_env(%struct.ieee80211_hw* %281, i32 %282, i32* %14)
  br label %284

284:                                              ; preds = %280, %277
  %285 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %286 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %291 = call i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %290, i32 0)
  br label %292

292:                                              ; preds = %289, %284
  %293 = load i32, i32* %4, align 4
  %294 = icmp slt i32 %293, 149
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store i32 7, i32* %16, align 4
  br label %301

296:                                              ; preds = %292
  %297 = load i32, i32* %4, align 4
  %298 = icmp sge i32 %297, 149
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store i32 2, i32* %16, align 4
  br label %300

300:                                              ; preds = %299, %296
  br label %301

301:                                              ; preds = %300, %295
  %302 = load i32, i32* %4, align 4
  %303 = icmp sge i32 %302, 36
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load i32, i32* %4, align 4
  %306 = icmp sle i32 %305, 64
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 0, i32* %9, align 4
  br label %317

308:                                              ; preds = %304, %301
  %309 = load i32, i32* %4, align 4
  %310 = icmp sge i32 %309, 100
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i32, i32* %4, align 4
  %313 = icmp sle i32 %312, 140
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i32 1, i32* %9, align 4
  br label %316

315:                                              ; preds = %311, %308
  store i32 2, i32* %9, align 4
  br label %316

316:                                              ; preds = %315, %314
  br label %317

317:                                              ; preds = %316, %307
  %318 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %318, i32* %11, align 4
  br label %319

319:                                              ; preds = %410, %317
  %320 = load i32, i32* %11, align 4
  %321 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %322 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp slt i32 %320, %323
  br i1 %324, label %325, label %413

325:                                              ; preds = %319
  %326 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %327 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %343

331:                                              ; preds = %325
  %332 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %333 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %343

336:                                              ; preds = %331
  %337 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %338 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %13, align 4
  br label %352

343:                                              ; preds = %331, %325
  %344 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %345 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %13, align 4
  br label %352

352:                                              ; preds = %343, %336
  %353 = load i32, i32* %13, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %403

355:                                              ; preds = %352
  store i32 0, i32* %10, align 4
  br label %356

356:                                              ; preds = %399, %355
  %357 = load i32, i32* %10, align 4
  %358 = load i32, i32* @RF_REG_NUM_FOR_C_CUT_5G_INTERNALPA, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %402

360:                                              ; preds = %356
  %361 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %362 = load i32, i32* %11, align 4
  %363 = load i32*, i32** @rf_for_c_cut_5g_internal_pa, align 8
  %364 = load i32, i32* %10, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %369 = load i32**, i32*** @rf_pram_c_5g_int_pa, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32*, i32** %369, i64 %371
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %10, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %361, i32 %362, i32 %367, i32 %368, i32 %377)
  %379 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %380 = load i32, i32* @COMP_RF, align 4
  %381 = load i32, i32* @DBG_LOUD, align 4
  %382 = load i32*, i32** @rf_for_c_cut_5g_internal_pa, align 8
  %383 = load i32, i32* %10, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = load i32**, i32*** @rf_pram_c_5g_int_pa, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %387, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %10, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* %9, align 4
  %398 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %379, i32 %380, i32 %381, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %386, i32 %395, i32 %396, i32 %397)
  br label %399

399:                                              ; preds = %360
  %400 = load i32, i32* %10, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %10, align 4
  br label %356

402:                                              ; preds = %356
  br label %409

403:                                              ; preds = %352
  %404 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* %15, align 4
  %407 = load i32, i32* %16, align 4
  %408 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %404, i32 %405, i32 11, i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %403, %402
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %11, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %11, align 4
  br label %319

413:                                              ; preds = %319
  br label %626

414:                                              ; preds = %34
  %415 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %416 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @BAND_ON_2_4G, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %625

420:                                              ; preds = %414
  %421 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %422 = load i32, i32* @COMP_CMD, align 4
  %423 = load i32, i32* @DBG_LOUD, align 4
  %424 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %421, i32 %422, i32 %423, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %425 = load i32*, i32** @curveindex_2g, align 8
  %426 = load i32, i32* %4, align 4
  %427 = sub nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %425, i64 %428
  %430 = load i32, i32* %429, align 4
  store i32 %430, i32* %17, align 4
  %431 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %432 = load i32, i32* @FINIT, align 4
  %433 = load i32, i32* @INIT_IQK, align 4
  %434 = load i32, i32* %17, align 4
  %435 = call i32 @RTPRINT(%struct.rtl_priv* %431, i32 %432, i32 %433, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %434)
  %436 = load i32, i32* %4, align 4
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %456, label %438

438:                                              ; preds = %420
  %439 = load i32, i32* %4, align 4
  %440 = icmp eq i32 %439, 2
  br i1 %440, label %456, label %441

441:                                              ; preds = %438
  %442 = load i32, i32* %4, align 4
  %443 = icmp eq i32 %442, 4
  br i1 %443, label %456, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* %4, align 4
  %446 = icmp eq i32 %445, 9
  br i1 %446, label %456, label %447

447:                                              ; preds = %444
  %448 = load i32, i32* %4, align 4
  %449 = icmp eq i32 %448, 10
  br i1 %449, label %456, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %4, align 4
  %452 = icmp eq i32 %451, 11
  br i1 %452, label %456, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %4, align 4
  %455 = icmp eq i32 %454, 12
  br i1 %455, label %456, label %457

456:                                              ; preds = %453, %450, %447, %444, %441, %438, %420
  store i32 0, i32* %9, align 4
  br label %476

457:                                              ; preds = %453
  %458 = load i32, i32* %4, align 4
  %459 = icmp eq i32 %458, 3
  br i1 %459, label %466, label %460

460:                                              ; preds = %457
  %461 = load i32, i32* %4, align 4
  %462 = icmp eq i32 %461, 13
  br i1 %462, label %466, label %463

463:                                              ; preds = %460
  %464 = load i32, i32* %4, align 4
  %465 = icmp eq i32 %464, 14
  br i1 %465, label %466, label %467

466:                                              ; preds = %463, %460, %457
  store i32 1, i32* %9, align 4
  br label %475

467:                                              ; preds = %463
  %468 = load i32, i32* %4, align 4
  %469 = icmp sge i32 %468, 5
  br i1 %469, label %470, label %474

470:                                              ; preds = %467
  %471 = load i32, i32* %4, align 4
  %472 = icmp sle i32 %471, 8
  br i1 %472, label %473, label %474

473:                                              ; preds = %470
  store i32 2, i32* %9, align 4
  br label %474

474:                                              ; preds = %473, %470, %467
  br label %475

475:                                              ; preds = %474, %466
  br label %476

476:                                              ; preds = %475, %456
  %477 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %478 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %477, i32 0, i32 1
  %479 = load i64, i64* %478, align 8
  %480 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %482, label %501

482:                                              ; preds = %476
  %483 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %483, i32* %8, align 4
  %484 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %485 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 8
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %500

488:                                              ; preds = %482
  %489 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %490 = call i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %489, i32 1)
  store i32 %490, i32* %12, align 4
  %491 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %492 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %491, i32 0, i32 4
  store i32 1, i32* %492, align 8
  %493 = load i32, i32* %12, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %488
  %496 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %497 = load i32, i32* %8, align 4
  %498 = call i32 @_rtl92d_phy_enable_rf_env(%struct.ieee80211_hw* %496, i32 %497, i32* %14)
  br label %499

499:                                              ; preds = %495, %488
  br label %500

500:                                              ; preds = %499, %482
  br label %501

501:                                              ; preds = %500, %476
  store i32 0, i32* %10, align 4
  br label %502

502:                                              ; preds = %589, %501
  %503 = load i32, i32* %10, align 4
  %504 = load i32, i32* @RF_REG_NUM_FOR_C_CUT_2G, align 4
  %505 = icmp slt i32 %503, %504
  br i1 %505, label %506, label %592

506:                                              ; preds = %502
  %507 = load i32*, i32** @rf_reg_for_c_cut_2g, align 8
  %508 = load i32, i32* %10, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* @RF_SYN_G7, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %535

514:                                              ; preds = %506
  %515 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %516 = load i32, i32* %8, align 4
  %517 = load i32*, i32** @rf_reg_for_c_cut_2g, align 8
  %518 = load i32, i32* %10, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %523 = load i32**, i32*** @rf_reg_param_for_c_cut_2g, align 8
  %524 = load i32, i32* %9, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32*, i32** %523, i64 %525
  %527 = load i32*, i32** %526, align 8
  %528 = load i32, i32* %10, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %527, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @BIT(i32 17)
  %533 = or i32 %531, %532
  %534 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %515, i32 %516, i32 %521, i32 %522, i32 %533)
  br label %554

535:                                              ; preds = %506
  %536 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %537 = load i32, i32* %8, align 4
  %538 = load i32*, i32** @rf_reg_for_c_cut_2g, align 8
  %539 = load i32, i32* %10, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32, i32* %538, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %544 = load i32**, i32*** @rf_reg_param_for_c_cut_2g, align 8
  %545 = load i32, i32* %9, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32*, i32** %544, i64 %546
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %10, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %536, i32 %537, i32 %542, i32 %543, i32 %552)
  br label %554

554:                                              ; preds = %535, %514
  %555 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %556 = load i32, i32* @COMP_RF, align 4
  %557 = load i32, i32* @DBG_TRACE, align 4
  %558 = load i32*, i32** @rf_reg_for_c_cut_2g, align 8
  %559 = load i32, i32* %10, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = load i32**, i32*** @rf_reg_param_for_c_cut_2g, align 8
  %564 = load i32, i32* %9, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32*, i32** %563, i64 %565
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* %10, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = load i32*, i32** @rf_reg_mask_for_c_cut_2g, align 8
  %573 = load i32, i32* %10, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = load i32, i32* %8, align 4
  %578 = load i32, i32* %9, align 4
  %579 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %580 = load i32, i32* %8, align 4
  %581 = load i32*, i32** @rf_reg_for_c_cut_2g, align 8
  %582 = load i32, i32* %10, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %581, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %587 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %579, i32 %580, i32 %585, i32 %586)
  %588 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %555, i32 %556, i32 %557, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %562, i32 %571, i32 %576, i32 %577, i32 %578, i32 %587)
  br label %589

589:                                              ; preds = %554
  %590 = load i32, i32* %10, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %10, align 4
  br label %502

592:                                              ; preds = %502
  %593 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %594 = load i32, i32* @FINIT, align 4
  %595 = load i32, i32* @INIT_IQK, align 4
  %596 = load i32, i32* @rf_syn_g4_for_c_cut_2g, align 4
  %597 = load i32, i32* %17, align 4
  %598 = shl i32 %597, 11
  %599 = or i32 %596, %598
  %600 = call i32 @RTPRINT(%struct.rtl_priv* %593, i32 %594, i32 %595, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %599)
  %601 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %602 = load i32, i32* %8, align 4
  %603 = load i32, i32* @RF_SYN_G4, align 4
  %604 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %605 = load i32, i32* @rf_syn_g4_for_c_cut_2g, align 4
  %606 = load i32, i32* %17, align 4
  %607 = shl i32 %606, 11
  %608 = or i32 %605, %607
  %609 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %601, i32 %602, i32 %603, i32 %604, i32 %608)
  %610 = load i32, i32* %12, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %616

612:                                              ; preds = %592
  %613 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %614 = load i32, i32* %8, align 4
  %615 = call i32 @_rtl92d_phy_restore_rf_env(%struct.ieee80211_hw* %613, i32 %614, i32* %14)
  br label %616

616:                                              ; preds = %612, %592
  %617 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %618 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %617, i32 0, i32 4
  %619 = load i32, i32* %618, align 8
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %624

621:                                              ; preds = %616
  %622 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %623 = call i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %622, i32 1)
  br label %624

624:                                              ; preds = %621, %616
  br label %625

625:                                              ; preds = %624, %414
  br label %626

626:                                              ; preds = %625, %413
  %627 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %628 = load i32, i32* @COMP_CMD, align 4
  %629 = load i32, i32* @DBG_LOUD, align 4
  %630 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %627, i32 %628, i32 %629, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92d_phy_enable_rf_env(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl92d_phy_restore_rf_env(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
