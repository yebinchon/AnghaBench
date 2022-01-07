; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_rf6052_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_rf6052_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal, %struct.rtl_phy }
%struct.rtl_hal = type { i64, i64, i32, i32, i32 }
%struct.rtl_phy = type { i64, i32, %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32, i32 }

@RF_1T1R = common dso_local global i64 0, align 8
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@BRFSI_RFENV = common dso_local global i32 0, align 4
@B3WIREADDRESSLENGTH = common dso_local global i32 0, align 4
@B3WIREDATALENGTH = common dso_local global i32 0, align 4
@radiob_txt = common dso_local global i32 0, align 4
@radioa_txt = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Radio[%d] Fail!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<---\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_phy_rf6052_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bb_reg_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %4, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 1
  store %struct.rtl_phy* %19, %struct.rtl_phy** %5, align 8
  store i32 1, i32* %6, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  store %struct.rtl_hal* %21, %struct.rtl_hal** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RF_1T1R, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %32 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %31, i32 0, i32 1
  store i32 2, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %33
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BAND_ON_2_4G, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %47 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %52 = call i64 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %56 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %55, i32 0, i32 1
  store i32 2, i32* %56, align 8
  store i32 1, i32* %12, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %266

59:                                               ; preds = %54
  br label %89

60:                                               ; preds = %45, %39
  %61 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %62 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BAND_ON_5G, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %68 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = call i64 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %72, i32 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 1
  store i32 2, i32* %77, align 8
  store i32 1, i32* %11, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %266

80:                                               ; preds = %75
  br label %88

81:                                               ; preds = %66, %60
  %82 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %83 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %86, %81
  br label %88

88:                                               ; preds = %87, %80
  br label %89

89:                                               ; preds = %88, %59
  br label %90

90:                                               ; preds = %89, %33
  store i64 0, i64* %9, align 8
  br label %91

91:                                               ; preds = %242, %90
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %94 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %98, label %245

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load i64, i64* %9, align 8
  %103 = icmp eq i64 %102, 131
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %106 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  store i32 1, i32* %13, align 4
  br label %116

107:                                              ; preds = %101
  %108 = load i64, i64* %9, align 8
  %109 = icmp eq i64 %108, 130
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %112 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %111, i32 0, i32 3
  store i32 0, i32* %112, align 4
  store i32 0, i32* %11, align 4
  store i64 131, i64* %9, align 8
  store i32 1, i32* %15, align 4
  %113 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %113, i32 0, i32 1
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  br label %116

116:                                              ; preds = %115, %104
  br label %136

117:                                              ; preds = %98
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i64, i64* %9, align 8
  %122 = icmp eq i64 %121, 131
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %125 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %124, i32 0, i32 4
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i64, i64* %9, align 8
  %128 = icmp eq i64 %127, 130
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %131 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %130, i32 0, i32 4
  store i32 1, i32* %131, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i64 131, i64* %9, align 8
  store i32 1, i32* %15, align 4
  %132 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %133 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %132, i32 0, i32 1
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %129, %126
  br label %135

135:                                              ; preds = %134, %117
  br label %136

136:                                              ; preds = %135, %116
  %137 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %138 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %137, i32 0, i32 2
  %139 = load %struct.bb_reg_def*, %struct.bb_reg_def** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %139, i64 %140
  store %struct.bb_reg_def* %141, %struct.bb_reg_def** %10, align 8
  %142 = load i64, i64* %9, align 8
  switch i64 %142, label %158 [
    i64 131, label %143
    i64 129, label %143
    i64 130, label %150
    i64 128, label %150
  ]

143:                                              ; preds = %136, %136
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %145 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %146 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @BRFSI_RFENV, align 4
  %149 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %144, i32 %147, i32 %148)
  store i32 %149, i32* %8, align 4
  br label %158

150:                                              ; preds = %136, %136
  %151 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %152 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %153 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @BRFSI_RFENV, align 4
  %156 = shl i32 %155, 16
  %157 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %151, i32 %154, i32 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %136, %150, %143
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %160 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %161 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @BRFSI_RFENV, align 4
  %164 = shl i32 %163, 16
  %165 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %159, i32 %162, i32 %164, i32 1)
  %166 = call i32 @udelay(i32 1)
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %168 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %169 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @BRFSI_RFENV, align 4
  %172 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %167, i32 %170, i32 %171, i32 1)
  %173 = call i32 @udelay(i32 1)
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %175 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %176 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @B3WIREADDRESSLENGTH, align 4
  %179 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %174, i32 %177, i32 %178, i32 0)
  %180 = call i32 @udelay(i32 1)
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %182 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %183 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @B3WIREDATALENGTH, align 4
  %186 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %181, i32 %184, i32 %185, i32 0)
  %187 = call i32 @udelay(i32 1)
  %188 = load i64, i64* %9, align 8
  switch i64 %188, label %213 [
    i64 131, label %189
    i64 130, label %205
    i64 129, label %211
    i64 128, label %212
  ]

189:                                              ; preds = %158
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %194 = load i32, i32* @radiob_txt, align 4
  %195 = load i64, i64* %9, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @rtl92d_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %193, i32 %194, i32 %196)
  store i32 %197, i32* %6, align 4
  br label %204

198:                                              ; preds = %189
  %199 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %200 = load i32, i32* @radioa_txt, align 4
  %201 = load i64, i64* %9, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @rtl92d_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %199, i32 %200, i32 %202)
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %198, %192
  br label %213

205:                                              ; preds = %158
  %206 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %207 = load i32, i32* @radiob_txt, align 4
  %208 = load i64, i64* %9, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 @rtl92d_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %206, i32 %207, i32 %209)
  store i32 %210, i32* %6, align 4
  br label %213

211:                                              ; preds = %158
  br label %213

212:                                              ; preds = %158
  br label %213

213:                                              ; preds = %158, %212, %211, %205, %204
  %214 = load i64, i64* %9, align 8
  switch i64 %214, label %232 [
    i64 131, label %215
    i64 129, label %215
    i64 130, label %223
    i64 128, label %223
  ]

215:                                              ; preds = %213, %213
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %217 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %218 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @BRFSI_RFENV, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %216, i32 %219, i32 %220, i32 %221)
  br label %232

223:                                              ; preds = %213, %213
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %225 = load %struct.bb_reg_def*, %struct.bb_reg_def** %10, align 8
  %226 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @BRFSI_RFENV, align 4
  %229 = shl i32 %228, 16
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %224, i32 %227, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %213, %223, %215
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %232
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %237 = load i32, i32* @COMP_INIT, align 4
  %238 = load i32, i32* @DBG_TRACE, align 4
  %239 = load i64, i64* %9, align 8
  %240 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %236, i32 %237, i32 %238, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %239)
  br label %264

241:                                              ; preds = %232
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %9, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %9, align 8
  br label %91

245:                                              ; preds = %91
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %250 = call i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %249, i32 0)
  br label %258

251:                                              ; preds = %245
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %256 = call i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %255, i32 1)
  br label %257

257:                                              ; preds = %254, %251
  br label %258

258:                                              ; preds = %257, %248
  %259 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %260 = load i32, i32* @COMP_INIT, align 4
  %261 = load i32, i32* @DBG_TRACE, align 4
  %262 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %259, i32 %260, i32 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %2, align 4
  br label %266

264:                                              ; preds = %235
  %265 = load i32, i32* %6, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %264, %258, %78, %57
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl92d_phy_config_rf_with_headerfile(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
