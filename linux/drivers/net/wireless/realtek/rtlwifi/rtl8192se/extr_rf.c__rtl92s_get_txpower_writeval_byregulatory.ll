; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_get_txpower_writeval_byregulatory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_get_txpower_writeval_byregulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_phy = type { i32**, i32, i32 }
%struct.rtl_efuse = type { i32, i32**, i32** }

@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RTK better performance, writeval = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Realtek regulatory, 40MHz, writeval = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Realtek regulatory, 20MHz, writeval = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Better regulatory, writeval = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"customer's limit, 40MHz = 0x%x\0A\00", align 1
@RF90_PATH_A = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"customer's limit, 20MHz = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Customer's limit = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Customer, writeval = 0x%x\0A\00", align 1
@TX_HIGH_PWR_LEVEL_LEVEL1 = common dso_local global i64 0, align 8
@TX_HIGH_PWR_LEVEL_LEVEL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i32, i32, i32*)* @_rtl92s_get_txpower_writeval_byregulatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_get_txpower_writeval_byregulatory(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.rtl_phy*, align 8
  %15 = alloca %struct.rtl_efuse*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4 x i64], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  store %struct.rtl_priv* %22, %struct.rtl_priv** %13, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 1
  store %struct.rtl_phy* %24, %struct.rtl_phy** %14, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  %27 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %26)
  store %struct.rtl_efuse* %27, %struct.rtl_efuse** %15, align 8
  %28 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %29 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %314 [
    i32 0, label %31
    i32 1, label %55
    i32 2, label %131
    i32 3, label %145
  ]

31:                                               ; preds = %6
  store i64 0, i64* %17, align 8
  %32 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %33 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* %17, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  br label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = add nsw i32 %40, %48
  store i32 %49, i32* %19, align 4
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %51 = load i32, i32* @COMP_POWER, align 4
  %52 = load i32, i32* @DBG_LOUD, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @RT_TRACE(%struct.rtl_priv* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %338

55:                                               ; preds = %6
  %56 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %57 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  %63 = icmp ult i64 %62, 2
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %19, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %71 = load i32, i32* @COMP_POWER, align 4
  %72 = load i32, i32* @DBG_LOUD, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %130

75:                                               ; preds = %55
  store i64 0, i64* %17, align 8
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 3
  br i1 %79, label %80, label %106

80:                                               ; preds = %75
  %81 = load i64, i64* %8, align 8
  %82 = icmp ule i64 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i64 0, i64* %17, align 8
  br label %97

84:                                               ; preds = %80
  %85 = load i64, i64* %8, align 8
  %86 = icmp uge i64 %85, 4
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i64, i64* %8, align 8
  %89 = icmp ule i64 %88, 8
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i64 1, i64* %17, align 8
  br label %96

91:                                               ; preds = %87, %84
  %92 = load i64, i64* %8, align 8
  %93 = icmp ugt i64 %92, 8
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i64 2, i64* %17, align 8
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %90
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %99 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i64, i64* %17, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %17, align 8
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %75
  %107 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %108 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* %17, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %9, align 8
  %117 = icmp ult i64 %116, 2
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  br label %122

120:                                              ; preds = %106
  %121 = load i32, i32* %11, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = add nsw i32 %115, %123
  store i32 %124, i32* %19, align 4
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %126 = load i32, i32* @COMP_POWER, align 4
  %127 = load i32, i32* @DBG_LOUD, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @RT_TRACE(%struct.rtl_priv* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %122, %68
  br label %338

131:                                              ; preds = %6
  %132 = load i64, i64* %9, align 8
  %133 = icmp ult i64 %132, 2
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* %10, align 4
  br label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %11, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %19, align 4
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %141 = load i32, i32* @COMP_POWER, align 4
  %142 = load i32, i32* @DBG_LOUD, align 4
  %143 = load i32, i32* %19, align 4
  %144 = call i32 @RT_TRACE(%struct.rtl_priv* %140, i32 %141, i32 %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  br label %338

145:                                              ; preds = %6
  store i64 0, i64* %17, align 8
  %146 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %147 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %145
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %153 = load i32, i32* @COMP_POWER, align 4
  %154 = load i32, i32* @DBG_LOUD, align 4
  %155 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %156 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i64, i64* @RF90_PATH_A, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = sub i64 %161, 1
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @RT_TRACE(%struct.rtl_priv* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  br label %181

166:                                              ; preds = %145
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %168 = load i32, i32* @COMP_POWER, align 4
  %169 = load i32, i32* @DBG_LOUD, align 4
  %170 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %171 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %170, i32 0, i32 2
  %172 = load i32**, i32*** %171, align 8
  %173 = load i64, i64* @RF90_PATH_A, align 8
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = sub i64 %176, 1
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %166, %151
  store i64 0, i64* %16, align 8
  br label %182

182:                                              ; preds = %275, %181
  %183 = load i64, i64* %16, align 8
  %184 = icmp ult i64 %183, 4
  br i1 %184, label %185, label %278

185:                                              ; preds = %182
  %186 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %187 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %186, i32 0, i32 0
  %188 = load i32**, i32*** %187, align 8
  %189 = load i64, i64* %17, align 8
  %190 = getelementptr inbounds i32*, i32** %188, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %9, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i64, i64* %16, align 8
  %196 = mul i64 %195, 8
  %197 = trunc i64 %196 to i32
  %198 = shl i32 127, %197
  %199 = and i32 %194, %198
  %200 = load i64, i64* %16, align 8
  %201 = mul i64 %200, 8
  %202 = trunc i64 %201 to i32
  %203 = ashr i32 %199, %202
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %16, align 8
  %206 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %205
  store i64 %204, i64* %206, align 8
  %207 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %208 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %243

212:                                              ; preds = %185
  %213 = load i64, i64* %16, align 8
  %214 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %217 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %216, i32 0, i32 1
  %218 = load i32**, i32*** %217, align 8
  %219 = load i64, i64* @RF90_PATH_A, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* %8, align 8
  %223 = sub i64 %222, 1
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = icmp ugt i64 %215, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %212
  %229 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %230 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %229, i32 0, i32 1
  %231 = load i32**, i32*** %230, align 8
  %232 = load i64, i64* @RF90_PATH_A, align 8
  %233 = getelementptr inbounds i32*, i32** %231, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* %8, align 8
  %236 = sub i64 %235, 1
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %16, align 8
  %241 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %240
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %228, %212
  br label %274

243:                                              ; preds = %185
  %244 = load i64, i64* %16, align 8
  %245 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %248 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %247, i32 0, i32 2
  %249 = load i32**, i32*** %248, align 8
  %250 = load i64, i64* @RF90_PATH_A, align 8
  %251 = getelementptr inbounds i32*, i32** %249, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* %8, align 8
  %254 = sub i64 %253, 1
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = icmp ugt i64 %246, %257
  br i1 %258, label %259, label %273

259:                                              ; preds = %243
  %260 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %261 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %260, i32 0, i32 2
  %262 = load i32**, i32*** %261, align 8
  %263 = load i64, i64* @RF90_PATH_A, align 8
  %264 = getelementptr inbounds i32*, i32** %262, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* %8, align 8
  %267 = sub i64 %266, 1
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* %16, align 8
  %272 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %271
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %259, %243
  br label %274

274:                                              ; preds = %273, %242
  br label %275

275:                                              ; preds = %274
  %276 = load i64, i64* %16, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %16, align 8
  br label %182

278:                                              ; preds = %182
  %279 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %280 = load i64, i64* %279, align 8
  %281 = shl i64 %280, 24
  %282 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %283 = load i64, i64* %282, align 16
  %284 = shl i64 %283, 16
  %285 = or i64 %281, %284
  %286 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %287 = load i64, i64* %286, align 8
  %288 = shl i64 %287, 8
  %289 = or i64 %285, %288
  %290 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %291 = load i64, i64* %290, align 16
  %292 = or i64 %289, %291
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %20, align 4
  %294 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %295 = load i32, i32* @COMP_POWER, align 4
  %296 = load i32, i32* @DBG_LOUD, align 4
  %297 = load i32, i32* %20, align 4
  %298 = call i32 @RT_TRACE(%struct.rtl_priv* %294, i32 %295, i32 %296, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %297)
  %299 = load i32, i32* %20, align 4
  %300 = load i64, i64* %9, align 8
  %301 = icmp ult i64 %300, 2
  br i1 %301, label %302, label %304

302:                                              ; preds = %278
  %303 = load i32, i32* %10, align 4
  br label %306

304:                                              ; preds = %278
  %305 = load i32, i32* %11, align 4
  br label %306

306:                                              ; preds = %304, %302
  %307 = phi i32 [ %303, %302 ], [ %305, %304 ]
  %308 = add nsw i32 %299, %307
  store i32 %308, i32* %19, align 4
  %309 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %310 = load i32, i32* @COMP_POWER, align 4
  %311 = load i32, i32* @DBG_LOUD, align 4
  %312 = load i32, i32* %19, align 4
  %313 = call i32 @RT_TRACE(%struct.rtl_priv* %309, i32 %310, i32 %311, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %312)
  br label %338

314:                                              ; preds = %6
  store i64 0, i64* %17, align 8
  %315 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %316 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %315, i32 0, i32 0
  %317 = load i32**, i32*** %316, align 8
  %318 = load i64, i64* %17, align 8
  %319 = getelementptr inbounds i32*, i32** %317, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* %9, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i64, i64* %9, align 8
  %325 = icmp ult i64 %324, 2
  br i1 %325, label %326, label %328

326:                                              ; preds = %314
  %327 = load i32, i32* %10, align 4
  br label %330

328:                                              ; preds = %314
  %329 = load i32, i32* %11, align 4
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i32 [ %327, %326 ], [ %329, %328 ]
  %332 = add nsw i32 %323, %331
  store i32 %332, i32* %19, align 4
  %333 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %334 = load i32, i32* @COMP_POWER, align 4
  %335 = load i32, i32* @DBG_LOUD, align 4
  %336 = load i32, i32* %19, align 4
  %337 = call i32 @RT_TRACE(%struct.rtl_priv* %333, i32 %334, i32 %335, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %336)
  br label %338

338:                                              ; preds = %330, %306, %138, %130, %47
  %339 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %340 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @TX_HIGH_PWR_LEVEL_LEVEL1, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %338
  store i32 269488144, i32* %19, align 4
  br label %355

346:                                              ; preds = %338
  %347 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %348 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @TX_HIGH_PWR_LEVEL_LEVEL2, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %346
  store i32 0, i32* %19, align 4
  br label %354

354:                                              ; preds = %353, %346
  br label %355

355:                                              ; preds = %354, %345
  %356 = load i32, i32* %19, align 4
  %357 = load i32*, i32** %12, align 8
  store i32 %356, i32* %357, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
