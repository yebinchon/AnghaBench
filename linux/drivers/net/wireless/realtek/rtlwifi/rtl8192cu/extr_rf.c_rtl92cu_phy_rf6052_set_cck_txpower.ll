; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c_rtl92cu_phy_rf6052_set_cck_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c_rtl92cu_phy_rf6052_set_cck_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_phy = type { i32** }
%struct.rtl_mac = type { i64, i64 }
%struct.rtl_efuse = type { i64, i64 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_LEVEL1 = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_LEVEL2 = common dso_local global i64 0, align 8
@RF6052_MAX_TX_PWR = common dso_local global i64 0, align 8
@RTXAGC_A_CCK1_MCS32 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CCK PWR 1M (rf-A) = 0x%x (reg 0x%x)\0A\00", align 1
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@RTXAGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CCK PWR 2~11M (rf-A) = 0x%x (reg 0x%x)\0A\00", align 1
@MASKBYTE0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\0A\00", align 1
@RTXAGC_B_CCK1_55_MCS32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"CCK PWR 1~5.5M (rf-B) = 0x%x (reg 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_phy_rf6052_set_cck_txpower(%struct.ieee80211_hw* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca %struct.rtl_efuse*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %5, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 1
  store %struct.rtl_phy* %17, %struct.rtl_phy** %6, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %19)
  store %struct.rtl_mac* %20, %struct.rtl_mac** %7, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %22)
  store %struct.rtl_efuse* %23, %struct.rtl_efuse** %8, align 8
  %24 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %25 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %26 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %2
  %30 = load i64, i64* @RF90_PATH_A, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %30
  store i32 1061109567, i32* %31, align 4
  %32 = load i64, i64* @RF90_PATH_B, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %32
  store i32 1061109567, i32* %33, align 4
  %34 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %78, %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @RF90_PATH_B, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %35
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = shl i64 %47, 8
  %49 = or i64 %43, %48
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = shl i64 %53, 16
  %55 = or i64 %49, %54
  %56 = load i64*, i64** %4, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = shl i64 %59, 24
  %61 = or i64 %55, %60
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %63
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 32
  br i1 %68, label %69, label %77

69:                                               ; preds = %39
  %70 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %71 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %75
  store i32 32, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %69, %39
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %35

81:                                               ; preds = %35
  br label %192

82:                                               ; preds = %2
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL1, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i64, i64* @RF90_PATH_A, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %90
  store i32 269488144, i32* %91, align 4
  %92 = load i64, i64* @RF90_PATH_B, align 8
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %92
  store i32 269488144, i32* %93, align 4
  br label %191

94:                                               ; preds = %82
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL2, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i64, i64* @RF90_PATH_A, align 8
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %102
  store i32 0, i32* %103, align 4
  %104 = load i64, i64* @RF90_PATH_B, align 8
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %104
  store i32 0, i32* %105, align 4
  br label %190

106:                                              ; preds = %94
  %107 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %107, i64* %11, align 8
  br label %108

108:                                              ; preds = %138, %106
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @RF90_PATH_B, align 8
  %111 = icmp ule i64 %109, %110
  br i1 %111, label %112, label %141

112:                                              ; preds = %108
  %113 = load i64*, i64** %4, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %4, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = shl i64 %120, 8
  %122 = or i64 %116, %121
  %123 = load i64*, i64** %4, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = shl i64 %126, 16
  %128 = or i64 %122, %127
  %129 = load i64*, i64** %4, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = shl i64 %132, 24
  %134 = or i64 %128, %133
  %135 = trunc i64 %134 to i32
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %136
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %112
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %11, align 8
  br label %108

141:                                              ; preds = %108
  %142 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %143 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %189

146:                                              ; preds = %141
  %147 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %148 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %147, i32 0, i32 0
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %155 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 7
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 8
  %162 = add nsw i32 %153, %161
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i64, i64* @RF90_PATH_A, align 8
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %169 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %168, i32 0, i32 0
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 14
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %176 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %175, i32 0, i32 0
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 15
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 24
  %183 = add nsw i32 %174, %182
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i64, i64* @RF90_PATH_B, align 8
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %146, %141
  br label %190

190:                                              ; preds = %189, %101
  br label %191

191:                                              ; preds = %190, %89
  br label %192

192:                                              ; preds = %191, %81
  %193 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %193, i64* %11, align 8
  br label %194

194:                                              ; preds = %220, %192
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* @RF90_PATH_B, align 8
  %197 = icmp ule i64 %195, %196
  br i1 %197, label %198, label %223

198:                                              ; preds = %194
  %199 = load i64, i64* %11, align 8
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %199
  %201 = bitcast i32* %200 to i64*
  store i64* %201, i64** %13, align 8
  store i64 0, i64* %12, align 8
  br label %202

202:                                              ; preds = %216, %198
  %203 = load i64, i64* %12, align 8
  %204 = icmp ult i64 %203, 4
  br i1 %204, label %205, label %219

205:                                              ; preds = %202
  %206 = load i64*, i64** %13, align 8
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %209 = icmp ugt i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %212 = load i64*, i64** %13, align 8
  store i64 %211, i64* %212, align 8
  br label %213

213:                                              ; preds = %210, %205
  %214 = load i64*, i64** %13, align 8
  %215 = getelementptr inbounds i64, i64* %214, i32 1
  store i64* %215, i64** %13, align 8
  br label %216

216:                                              ; preds = %213
  %217 = load i64, i64* %12, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %12, align 8
  br label %202

219:                                              ; preds = %202
  br label %220

220:                                              ; preds = %219
  %221 = load i64, i64* %11, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %11, align 8
  br label %194

223:                                              ; preds = %194
  %224 = load i64, i64* @RF90_PATH_A, align 8
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, 255
  store i32 %227, i32* %10, align 4
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %229 = load i32, i32* @RTXAGC_A_CCK1_MCS32, align 4
  %230 = load i32, i32* @MASKBYTE1, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %228, i32 %229, i32 %230, i32 %231)
  %233 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %234 = load i32, i32* @FPHY, align 4
  %235 = load i32, i32* @PHY_TXPWR, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* @RTXAGC_A_CCK1_MCS32, align 4
  %238 = call i32 @RTPRINT(%struct.rtl_priv* %233, i32 %234, i32 %235, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %236, i32 %237)
  %239 = load i64, i64* @RF90_PATH_A, align 8
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = ashr i32 %241, 8
  store i32 %242, i32* %10, align 4
  %243 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %244 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @WIRELESS_MODE_B, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %223
  %249 = load i32, i32* %10, align 4
  %250 = and i32 %249, -16711681
  store i32 %250, i32* %10, align 4
  br label %251

251:                                              ; preds = %248, %223
  %252 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %253 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %252, i32 %253, i32 -256, i32 %254)
  %256 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %257 = load i32, i32* @FPHY, align 4
  %258 = load i32, i32* @PHY_TXPWR, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %261 = call i32 @RTPRINT(%struct.rtl_priv* %256, i32 %257, i32 %258, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %259, i32 %260)
  %262 = load i64, i64* @RF90_PATH_B, align 8
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = ashr i32 %264, 24
  store i32 %265, i32* %10, align 4
  %266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %267 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %268 = load i32, i32* @MASKBYTE0, align 4
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %266, i32 %267, i32 %268, i32 %269)
  %271 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %272 = load i32, i32* @FPHY, align 4
  %273 = load i32, i32* @PHY_TXPWR, align 4
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %276 = call i32 @RTPRINT(%struct.rtl_priv* %271, i32 %272, i32 %273, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %274, i32 %275)
  %277 = load i64, i64* @RF90_PATH_B, align 8
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 16777215
  store i32 %280, i32* %10, align 4
  %281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %282 = load i32, i32* @RTXAGC_B_CCK1_55_MCS32, align 4
  %283 = load i32, i32* %10, align 4
  %284 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %281, i32 %282, i32 -256, i32 %283)
  %285 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %286 = load i32, i32* @FPHY, align 4
  %287 = load i32, i32* @PHY_TXPWR, align 4
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* @RTXAGC_B_CCK1_55_MCS32, align 4
  %290 = call i32 @RTPRINT(%struct.rtl_priv* %285, i32 %286, i32 %287, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %288, i32 %289)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
