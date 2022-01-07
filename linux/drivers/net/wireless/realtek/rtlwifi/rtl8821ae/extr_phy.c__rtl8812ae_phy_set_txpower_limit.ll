; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_set_txpower_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8812ae_phy_set_txpower_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64*****, i64***** }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Illegal index of pwr_lmt table [chnl %d][val %d]\0A\00", align 1
@MAX_POWER_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FCC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MKK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ETSI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"WW13\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CCK\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"OFDM\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"HT\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"1T\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"2T\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"VHT\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"20M\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"40M\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"80M\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"160M\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"2.4G\00", align 1
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [50 x i8] c"2.4G [regula %d][bw %d][sec %d][chnl %d][val %d]\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"5G\00", align 1
@BAND_ON_5G = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [48 x i8] c"5G: [regul %d][bw %d][sec %d][chnl %d][val %d]\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Cannot recognize the band info in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i64*, i64*, i64*, i64*, i64*, i64*)* @_rtl8812ae_phy_set_txpower_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_phy_set_txpower_limit(%struct.ieee80211_hw* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.rtl_priv*, align 8
  %18 = alloca %struct.rtl_phy*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  store %struct.rtl_priv* %28, %struct.rtl_priv** %17, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  store %struct.rtl_phy* %30, %struct.rtl_phy** %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %24, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = bitcast i64* %31 to i8*
  %33 = call i32 (i8*, ...) @_rtl8812ae_get_integer_from_string(i8* %32, i64* %22)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %8
  %36 = load i64*, i64** %16, align 8
  %37 = bitcast i64* %36 to i8*
  %38 = call i32 (i8*, ...) @_rtl8812ae_get_integer_from_string(i8* %37, i64* %24)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35, %8
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %42 = load i32, i32* @COMP_INIT, align 4
  %43 = load i32, i32* @DBG_TRACE, align 4
  %44 = load i64, i64* %22, align 8
  %45 = load i64, i64* %24, align 8
  %46 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i64, i64* %24, align 8
  %49 = load i64, i64* @MAX_POWER_INDEX, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @MAX_POWER_INDEX, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %24, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %24, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = call i64 @_rtl8812ae_eq_n_byte(i64* %57, i64* bitcast ([4 x i8]* @.str.1 to i64*), i32 3)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i64 0, i64* %19, align 8
  br label %79

61:                                               ; preds = %55
  %62 = load i64*, i64** %10, align 8
  %63 = call i64 @_rtl8812ae_eq_n_byte(i64* %62, i64* bitcast ([4 x i8]* @.str.2 to i64*), i32 3)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i64 1, i64* %19, align 8
  br label %78

66:                                               ; preds = %61
  %67 = load i64*, i64** %10, align 8
  %68 = call i64 @_rtl8812ae_eq_n_byte(i64* %67, i64* bitcast ([5 x i8]* @.str.3 to i64*), i32 4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i64 2, i64* %19, align 8
  br label %77

71:                                               ; preds = %66
  %72 = load i64*, i64** %10, align 8
  %73 = call i64 @_rtl8812ae_eq_n_byte(i64* %72, i64* bitcast ([5 x i8]* @.str.4 to i64*), i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i64 3, i64* %19, align 8
  br label %76

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %70
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i64*, i64** %13, align 8
  %81 = call i64 @_rtl8812ae_eq_n_byte(i64* %80, i64* bitcast ([4 x i8]* @.str.5 to i64*), i32 3)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i64 0, i64* %21, align 8
  br label %130

84:                                               ; preds = %79
  %85 = load i64*, i64** %13, align 8
  %86 = call i64 @_rtl8812ae_eq_n_byte(i64* %85, i64* bitcast ([5 x i8]* @.str.6 to i64*), i32 4)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i64 1, i64* %21, align 8
  br label %129

89:                                               ; preds = %84
  %90 = load i64*, i64** %13, align 8
  %91 = call i64 @_rtl8812ae_eq_n_byte(i64* %90, i64* bitcast ([3 x i8]* @.str.7 to i64*), i32 2)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i64*, i64** %14, align 8
  %95 = call i64 @_rtl8812ae_eq_n_byte(i64* %94, i64* bitcast ([3 x i8]* @.str.8 to i64*), i32 2)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i64 2, i64* %21, align 8
  br label %128

98:                                               ; preds = %93, %89
  %99 = load i64*, i64** %13, align 8
  %100 = call i64 @_rtl8812ae_eq_n_byte(i64* %99, i64* bitcast ([3 x i8]* @.str.7 to i64*), i32 2)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i64*, i64** %14, align 8
  %104 = call i64 @_rtl8812ae_eq_n_byte(i64* %103, i64* bitcast ([3 x i8]* @.str.9 to i64*), i32 2)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i64 3, i64* %21, align 8
  br label %127

107:                                              ; preds = %102, %98
  %108 = load i64*, i64** %13, align 8
  %109 = call i64 @_rtl8812ae_eq_n_byte(i64* %108, i64* bitcast ([4 x i8]* @.str.10 to i64*), i32 3)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i64*, i64** %14, align 8
  %113 = call i64 @_rtl8812ae_eq_n_byte(i64* %112, i64* bitcast ([3 x i8]* @.str.8 to i64*), i32 2)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i64 4, i64* %21, align 8
  br label %126

116:                                              ; preds = %111, %107
  %117 = load i64*, i64** %13, align 8
  %118 = call i64 @_rtl8812ae_eq_n_byte(i64* %117, i64* bitcast ([4 x i8]* @.str.10 to i64*), i32 3)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i64*, i64** %14, align 8
  %122 = call i64 @_rtl8812ae_eq_n_byte(i64* %121, i64* bitcast ([3 x i8]* @.str.9 to i64*), i32 2)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i64 5, i64* %21, align 8
  br label %125

125:                                              ; preds = %124, %120, %116
  br label %126

126:                                              ; preds = %125, %115
  br label %127

127:                                              ; preds = %126, %106
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128, %88
  br label %130

130:                                              ; preds = %129, %83
  %131 = load i64*, i64** %12, align 8
  %132 = call i64 @_rtl8812ae_eq_n_byte(i64* %131, i64* bitcast ([4 x i8]* @.str.11 to i64*), i32 3)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i64 0, i64* %20, align 8
  br label %153

135:                                              ; preds = %130
  %136 = load i64*, i64** %12, align 8
  %137 = call i64 @_rtl8812ae_eq_n_byte(i64* %136, i64* bitcast ([4 x i8]* @.str.12 to i64*), i32 3)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i64 1, i64* %20, align 8
  br label %152

140:                                              ; preds = %135
  %141 = load i64*, i64** %12, align 8
  %142 = call i64 @_rtl8812ae_eq_n_byte(i64* %141, i64* bitcast ([4 x i8]* @.str.13 to i64*), i32 3)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i64 2, i64* %20, align 8
  br label %151

145:                                              ; preds = %140
  %146 = load i64*, i64** %12, align 8
  %147 = call i64 @_rtl8812ae_eq_n_byte(i64* %146, i64* bitcast ([5 x i8]* @.str.14 to i64*), i32 4)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i64 3, i64* %20, align 8
  br label %150

150:                                              ; preds = %149, %145
  br label %151

151:                                              ; preds = %150, %144
  br label %152

152:                                              ; preds = %151, %139
  br label %153

153:                                              ; preds = %152, %134
  %154 = load i64*, i64** %11, align 8
  %155 = call i64 @_rtl8812ae_eq_n_byte(i64* %154, i64* bitcast ([5 x i8]* @.str.15 to i64*), i32 4)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %234

157:                                              ; preds = %153
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %159 = load i32, i32* @BAND_ON_2_4G, align 4
  %160 = load i64, i64* %22, align 8
  %161 = call i64 @_rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(%struct.ieee80211_hw* %158, i32 %159, i64 %160)
  store i64 %161, i64* %26, align 8
  %162 = load i64, i64* %26, align 8
  %163 = icmp eq i64 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %322

165:                                              ; preds = %157
  %166 = load i64, i64* %26, align 8
  store i64 %166, i64* %23, align 8
  %167 = load %struct.rtl_phy*, %struct.rtl_phy** %18, align 8
  %168 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %167, i32 0, i32 0
  %169 = load i64*****, i64****** %168, align 8
  %170 = load i64, i64* %19, align 8
  %171 = getelementptr inbounds i64****, i64***** %169, i64 %170
  %172 = load i64****, i64***** %171, align 8
  %173 = load i64, i64* %20, align 8
  %174 = getelementptr inbounds i64***, i64**** %172, i64 %173
  %175 = load i64***, i64**** %174, align 8
  %176 = load i64, i64* %21, align 8
  %177 = getelementptr inbounds i64**, i64*** %175, i64 %176
  %178 = load i64**, i64*** %177, align 8
  %179 = load i64, i64* %23, align 8
  %180 = getelementptr inbounds i64*, i64** %178, i64 %179
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* @RF90_PATH_A, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %25, align 8
  %185 = load i64, i64* %24, align 8
  %186 = load i64, i64* %25, align 8
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %165
  %189 = load i64, i64* %24, align 8
  %190 = load %struct.rtl_phy*, %struct.rtl_phy** %18, align 8
  %191 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %190, i32 0, i32 0
  %192 = load i64*****, i64****** %191, align 8
  %193 = load i64, i64* %19, align 8
  %194 = getelementptr inbounds i64****, i64***** %192, i64 %193
  %195 = load i64****, i64***** %194, align 8
  %196 = load i64, i64* %20, align 8
  %197 = getelementptr inbounds i64***, i64**** %195, i64 %196
  %198 = load i64***, i64**** %197, align 8
  %199 = load i64, i64* %21, align 8
  %200 = getelementptr inbounds i64**, i64*** %198, i64 %199
  %201 = load i64**, i64*** %200, align 8
  %202 = load i64, i64* %23, align 8
  %203 = getelementptr inbounds i64*, i64** %201, i64 %202
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* @RF90_PATH_A, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  store i64 %189, i64* %206, align 8
  br label %207

207:                                              ; preds = %188, %165
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %209 = load i32, i32* @COMP_INIT, align 4
  %210 = load i32, i32* @DBG_TRACE, align 4
  %211 = load i64, i64* %19, align 8
  %212 = load i64, i64* %20, align 8
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load %struct.rtl_phy*, %struct.rtl_phy** %18, align 8
  %216 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %215, i32 0, i32 0
  %217 = load i64*****, i64****** %216, align 8
  %218 = load i64, i64* %19, align 8
  %219 = getelementptr inbounds i64****, i64***** %217, i64 %218
  %220 = load i64****, i64***** %219, align 8
  %221 = load i64, i64* %20, align 8
  %222 = getelementptr inbounds i64***, i64**** %220, i64 %221
  %223 = load i64***, i64**** %222, align 8
  %224 = load i64, i64* %21, align 8
  %225 = getelementptr inbounds i64**, i64*** %223, i64 %224
  %226 = load i64**, i64*** %225, align 8
  %227 = load i64, i64* %23, align 8
  %228 = getelementptr inbounds i64*, i64** %226, i64 %227
  %229 = load i64*, i64** %228, align 8
  %230 = load i64, i64* @RF90_PATH_A, align 8
  %231 = getelementptr inbounds i64, i64* %229, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %208, i32 %209, i32 %210, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i64 %211, i64 %212, i64 %213, i64 %214, i64 %232)
  br label %322

234:                                              ; preds = %153
  %235 = load i64*, i64** %11, align 8
  %236 = call i64 @_rtl8812ae_eq_n_byte(i64* %235, i64* bitcast ([3 x i8]* @.str.17 to i64*), i32 2)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %315

238:                                              ; preds = %234
  %239 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %240 = load i32, i32* @BAND_ON_5G, align 4
  %241 = load i64, i64* %22, align 8
  %242 = call i64 @_rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(%struct.ieee80211_hw* %239, i32 %240, i64 %241)
  store i64 %242, i64* %26, align 8
  %243 = load i64, i64* %26, align 8
  %244 = icmp eq i64 %243, -1
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %322

246:                                              ; preds = %238
  %247 = load i64, i64* %26, align 8
  store i64 %247, i64* %23, align 8
  %248 = load %struct.rtl_phy*, %struct.rtl_phy** %18, align 8
  %249 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %248, i32 0, i32 1
  %250 = load i64*****, i64****** %249, align 8
  %251 = load i64, i64* %19, align 8
  %252 = getelementptr inbounds i64****, i64***** %250, i64 %251
  %253 = load i64****, i64***** %252, align 8
  %254 = load i64, i64* %20, align 8
  %255 = getelementptr inbounds i64***, i64**** %253, i64 %254
  %256 = load i64***, i64**** %255, align 8
  %257 = load i64, i64* %21, align 8
  %258 = getelementptr inbounds i64**, i64*** %256, i64 %257
  %259 = load i64**, i64*** %258, align 8
  %260 = load i64, i64* %23, align 8
  %261 = getelementptr inbounds i64*, i64** %259, i64 %260
  %262 = load i64*, i64** %261, align 8
  %263 = load i64, i64* @RF90_PATH_A, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %25, align 8
  %266 = load i64, i64* %24, align 8
  %267 = load i64, i64* %25, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %269, label %288

269:                                              ; preds = %246
  %270 = load i64, i64* %24, align 8
  %271 = load %struct.rtl_phy*, %struct.rtl_phy** %18, align 8
  %272 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %271, i32 0, i32 1
  %273 = load i64*****, i64****** %272, align 8
  %274 = load i64, i64* %19, align 8
  %275 = getelementptr inbounds i64****, i64***** %273, i64 %274
  %276 = load i64****, i64***** %275, align 8
  %277 = load i64, i64* %20, align 8
  %278 = getelementptr inbounds i64***, i64**** %276, i64 %277
  %279 = load i64***, i64**** %278, align 8
  %280 = load i64, i64* %21, align 8
  %281 = getelementptr inbounds i64**, i64*** %279, i64 %280
  %282 = load i64**, i64*** %281, align 8
  %283 = load i64, i64* %23, align 8
  %284 = getelementptr inbounds i64*, i64** %282, i64 %283
  %285 = load i64*, i64** %284, align 8
  %286 = load i64, i64* @RF90_PATH_A, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  store i64 %270, i64* %287, align 8
  br label %288

288:                                              ; preds = %269, %246
  %289 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %290 = load i32, i32* @COMP_INIT, align 4
  %291 = load i32, i32* @DBG_TRACE, align 4
  %292 = load i64, i64* %19, align 8
  %293 = load i64, i64* %20, align 8
  %294 = load i64, i64* %21, align 8
  %295 = load i64, i64* %22, align 8
  %296 = load %struct.rtl_phy*, %struct.rtl_phy** %18, align 8
  %297 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %296, i32 0, i32 1
  %298 = load i64*****, i64****** %297, align 8
  %299 = load i64, i64* %19, align 8
  %300 = getelementptr inbounds i64****, i64***** %298, i64 %299
  %301 = load i64****, i64***** %300, align 8
  %302 = load i64, i64* %20, align 8
  %303 = getelementptr inbounds i64***, i64**** %301, i64 %302
  %304 = load i64***, i64**** %303, align 8
  %305 = load i64, i64* %21, align 8
  %306 = getelementptr inbounds i64**, i64*** %304, i64 %305
  %307 = load i64**, i64*** %306, align 8
  %308 = load i64, i64* %23, align 8
  %309 = getelementptr inbounds i64*, i64** %307, i64 %308
  %310 = load i64*, i64** %309, align 8
  %311 = load i64, i64* @RF90_PATH_A, align 8
  %312 = getelementptr inbounds i64, i64* %310, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %289, i32 %290, i32 %291, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i64 %292, i64 %293, i64 %294, i64 %295, i64 %313)
  br label %321

315:                                              ; preds = %234
  %316 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %317 = load i32, i32* @COMP_INIT, align 4
  %318 = load i32, i32* @DBG_TRACE, align 4
  %319 = load i64*, i64** %11, align 8
  %320 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %316, i32 %317, i32 %318, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i64* %319)
  br label %322

321:                                              ; preds = %288
  br label %322

322:                                              ; preds = %164, %245, %315, %321, %207
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8812ae_get_integer_from_string(i8*, ...) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @_rtl8812ae_eq_n_byte(i64*, i64*, i32) #1

declare dso_local i64 @_rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(%struct.ieee80211_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
