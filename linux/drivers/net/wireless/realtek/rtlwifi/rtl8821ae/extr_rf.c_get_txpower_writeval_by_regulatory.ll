; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_get_txpower_writeval_by_regulatory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_get_txpower_writeval_by_regulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_phy = type { i32**, i32, i32 }
%struct.rtl_efuse = type { i32, i32**, i32**, i64**, i64** }

@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RTK better performance, writeval(%c) = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Better regulatory, writeval(%c) = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"customer's limit, 40MHz rf(%c) = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"RTK better performance, writeval rf(%c) = 0x%x\0A\00", align 1
@TXHIGHPWRLEVEL_BT1 = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_BT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i32*, i32*, i32*)* @get_txpower_writeval_by_regulatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_txpower_writeval_by_regulatory(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.rtl_phy*, align 8
  %15 = alloca %struct.rtl_efuse*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4 x i64], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  store %struct.rtl_priv* %25, %struct.rtl_priv** %13, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 1
  store %struct.rtl_phy* %27, %struct.rtl_phy** %14, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %29 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %28)
  %30 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %29)
  store %struct.rtl_efuse* %30, %struct.rtl_efuse** %15, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %23, align 4
  br label %31

31:                                               ; preds = %479, %6
  %32 = load i32, i32* %23, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %482

34:                                               ; preds = %31
  %35 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %36 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %409 [
    i32 0, label %38
    i32 1, label %81
    i32 2, label %160
    i32 3, label %187
  ]

38:                                               ; preds = %34
  store i64 0, i64* %17, align 8
  %39 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %40 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 8, i32 0
  %50 = sext i32 %49 to i64
  %51 = add i64 %45, %50
  %52 = getelementptr inbounds i32, i32* %44, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %54, 2
  br i1 %55, label %56, label %62

56:                                               ; preds = %38
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %23, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  br label %68

62:                                               ; preds = %38
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %23, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i32 [ %61, %56 ], [ %67, %62 ]
  %70 = add nsw i32 %53, %69
  store i32 %70, i32* %21, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %72 = load i32, i32* @FPHY, align 4
  %73 = load i32, i32* @PHY_TXPWR, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 65, i32 66
  %78 = trunc i32 %77 to i8
  %79 = load i32, i32* %21, align 4
  %80 = call i32 @RTPRINT(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8 signext %78, i32 %79)
  br label %452

81:                                               ; preds = %34
  %82 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %83 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i64 0, i64* %17, align 8
  br label %117

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = icmp ult i64 %88, 3
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i64 0, i64* %17, align 8
  br label %116

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  %93 = icmp ult i64 %92, 6
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i64 1, i64* %17, align 8
  br label %115

95:                                               ; preds = %91
  %96 = load i64, i64* %8, align 8
  %97 = icmp ult i64 %96, 9
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i64 2, i64* %17, align 8
  br label %114

99:                                               ; preds = %95
  %100 = load i64, i64* %8, align 8
  %101 = icmp ult i64 %100, 12
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i64 3, i64* %17, align 8
  br label %113

103:                                              ; preds = %99
  %104 = load i64, i64* %8, align 8
  %105 = icmp ult i64 %104, 14
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i64 4, i64* %17, align 8
  br label %112

107:                                              ; preds = %103
  %108 = load i64, i64* %8, align 8
  %109 = icmp eq i64 %108, 14
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i64 5, i64* %17, align 8
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111, %106
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %116, %86
  %118 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %119 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = load i64, i64* %17, align 8
  %122 = getelementptr inbounds i32*, i32** %120, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i32, i32* %23, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 8, i32 0
  %129 = sext i32 %128 to i64
  %130 = add i64 %124, %129
  %131 = getelementptr inbounds i32, i32* %123, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %9, align 8
  %134 = icmp ult i64 %133, 2
  br i1 %134, label %135, label %141

135:                                              ; preds = %117
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %23, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  br label %147

141:                                              ; preds = %117
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  br label %147

147:                                              ; preds = %141, %135
  %148 = phi i32 [ %140, %135 ], [ %146, %141 ]
  %149 = add nsw i32 %132, %148
  store i32 %149, i32* %21, align 4
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %151 = load i32, i32* @FPHY, align 4
  %152 = load i32, i32* @PHY_TXPWR, align 4
  %153 = load i32, i32* %23, align 4
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 65, i32 66
  %157 = trunc i32 %156 to i8
  %158 = load i32, i32* %21, align 4
  %159 = call i32 @RTPRINT(%struct.rtl_priv* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8 signext %157, i32 %158)
  br label %452

160:                                              ; preds = %34
  %161 = load i64, i64* %9, align 8
  %162 = icmp ult i64 %161, 2
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %23, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  br label %175

169:                                              ; preds = %160
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %23, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  br label %175

175:                                              ; preds = %169, %163
  %176 = phi i32 [ %168, %163 ], [ %174, %169 ]
  store i32 %176, i32* %21, align 4
  %177 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %178 = load i32, i32* @FPHY, align 4
  %179 = load i32, i32* @PHY_TXPWR, align 4
  %180 = load i32, i32* %23, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 65, i32 66
  %184 = trunc i32 %183 to i8
  %185 = load i32, i32* %21, align 4
  %186 = call i32 @RTPRINT(%struct.rtl_priv* %177, i32 %178, i32 %179, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8 signext %184, i32 %185)
  br label %452

187:                                              ; preds = %34
  store i64 0, i64* %17, align 8
  %188 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %189 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %195 = load i32, i32* @FPHY, align 4
  %196 = load i32, i32* @PHY_TXPWR, align 4
  %197 = load i32, i32* %23, align 4
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 65, i32 66
  %201 = trunc i32 %200 to i8
  %202 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %203 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %202, i32 0, i32 1
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %23, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* %8, align 8
  %210 = sub i64 %209, 1
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @RTPRINT(%struct.rtl_priv* %194, i32 %195, i32 %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8 signext %201, i32 %212)
  br label %235

214:                                              ; preds = %187
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %216 = load i32, i32* @FPHY, align 4
  %217 = load i32, i32* @PHY_TXPWR, align 4
  %218 = load i32, i32* %23, align 4
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 65, i32 66
  %222 = trunc i32 %221 to i8
  %223 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %224 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %223, i32 0, i32 2
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %23, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* %8, align 8
  %231 = sub i64 %230, 1
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @RTPRINT(%struct.rtl_priv* %215, i32 %216, i32 %217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8 signext %222, i32 %233)
  br label %235

235:                                              ; preds = %214, %193
  %236 = load i64, i64* %9, align 8
  %237 = icmp ult i64 %236, 2
  br i1 %237, label %238, label %250

238:                                              ; preds = %235
  %239 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %240 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %239, i32 0, i32 3
  %241 = load i64**, i64*** %240, align 8
  %242 = load i32, i32* %23, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64*, i64** %241, i64 %243
  %245 = load i64*, i64** %244, align 8
  %246 = load i64, i64* %8, align 8
  %247 = sub i64 %246, 1
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %19, align 8
  br label %269

250:                                              ; preds = %235
  %251 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %252 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %250
  %257 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %258 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %257, i32 0, i32 4
  %259 = load i64**, i64*** %258, align 8
  %260 = load i32, i32* %23, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64*, i64** %259, i64 %261
  %263 = load i64*, i64** %262, align 8
  %264 = load i64, i64* %8, align 8
  %265 = sub i64 %264, 1
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %19, align 8
  br label %268

268:                                              ; preds = %256, %250
  br label %269

269:                                              ; preds = %268, %238
  %270 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %271 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %288

275:                                              ; preds = %269
  %276 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %277 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %276, i32 0, i32 1
  %278 = load i32**, i32*** %277, align 8
  %279 = load i32, i32* %23, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* %8, align 8
  %284 = sub i64 %283, 1
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %20, align 8
  br label %301

288:                                              ; preds = %269
  %289 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %290 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %289, i32 0, i32 2
  %291 = load i32**, i32*** %290, align 8
  %292 = load i32, i32* %23, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32*, i32** %291, i64 %293
  %295 = load i32*, i32** %294, align 8
  %296 = load i64, i64* %8, align 8
  %297 = sub i64 %296, 1
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %20, align 8
  br label %301

301:                                              ; preds = %288, %275
  %302 = load i64, i64* %19, align 8
  %303 = load i64, i64* %20, align 8
  %304 = icmp ugt i64 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  store i64 0, i64* %19, align 8
  br label %310

306:                                              ; preds = %301
  %307 = load i64, i64* %20, align 8
  %308 = load i64, i64* %19, align 8
  %309 = sub i64 %307, %308
  store i64 %309, i64* %19, align 8
  br label %310

310:                                              ; preds = %306, %305
  store i64 0, i64* %16, align 8
  br label %311

311:                                              ; preds = %352, %310
  %312 = load i64, i64* %16, align 8
  %313 = icmp ult i64 %312, 4
  br i1 %313, label %314, label %355

314:                                              ; preds = %311
  %315 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %316 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %315, i32 0, i32 0
  %317 = load i32**, i32*** %316, align 8
  %318 = load i64, i64* %17, align 8
  %319 = getelementptr inbounds i32*, i32** %317, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* %9, align 8
  %322 = load i32, i32* %23, align 4
  %323 = icmp ne i32 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 8, i32 0
  %326 = sext i32 %325 to i64
  %327 = add i64 %321, %326
  %328 = getelementptr inbounds i32, i32* %320, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i64, i64* %16, align 8
  %331 = mul i64 %330, 8
  %332 = trunc i64 %331 to i32
  %333 = shl i32 127, %332
  %334 = and i32 %329, %333
  %335 = load i64, i64* %16, align 8
  %336 = mul i64 %335, 8
  %337 = trunc i64 %336 to i32
  %338 = ashr i32 %334, %337
  %339 = sext i32 %338 to i64
  %340 = load i64, i64* %16, align 8
  %341 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %340
  store i64 %339, i64* %341, align 8
  %342 = load i64, i64* %16, align 8
  %343 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* %19, align 8
  %346 = icmp ugt i64 %344, %345
  br i1 %346, label %347, label %351

347:                                              ; preds = %314
  %348 = load i64, i64* %19, align 8
  %349 = load i64, i64* %16, align 8
  %350 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %349
  store i64 %348, i64* %350, align 8
  br label %351

351:                                              ; preds = %347, %314
  br label %352

352:                                              ; preds = %351
  %353 = load i64, i64* %16, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %16, align 8
  br label %311

355:                                              ; preds = %311
  %356 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %357 = load i64, i64* %356, align 8
  %358 = shl i64 %357, 24
  %359 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %360 = load i64, i64* %359, align 16
  %361 = shl i64 %360, 16
  %362 = or i64 %358, %361
  %363 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %364 = load i64, i64* %363, align 8
  %365 = shl i64 %364, 8
  %366 = or i64 %362, %365
  %367 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %368 = load i64, i64* %367, align 16
  %369 = or i64 %366, %368
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %22, align 4
  %371 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %372 = load i32, i32* @FPHY, align 4
  %373 = load i32, i32* @PHY_TXPWR, align 4
  %374 = load i32, i32* %23, align 4
  %375 = icmp eq i32 %374, 0
  %376 = zext i1 %375 to i64
  %377 = select i1 %375, i32 65, i32 66
  %378 = trunc i32 %377 to i8
  %379 = load i32, i32* %22, align 4
  %380 = call i32 @RTPRINT(%struct.rtl_priv* %371, i32 %372, i32 %373, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8 signext %378, i32 %379)
  %381 = load i32, i32* %22, align 4
  %382 = load i64, i64* %9, align 8
  %383 = icmp ult i64 %382, 2
  br i1 %383, label %384, label %390

384:                                              ; preds = %355
  %385 = load i32*, i32** %10, align 8
  %386 = load i32, i32* %23, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  br label %396

390:                                              ; preds = %355
  %391 = load i32*, i32** %11, align 8
  %392 = load i32, i32* %23, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  br label %396

396:                                              ; preds = %390, %384
  %397 = phi i32 [ %389, %384 ], [ %395, %390 ]
  %398 = add nsw i32 %381, %397
  store i32 %398, i32* %21, align 4
  %399 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %400 = load i32, i32* @FPHY, align 4
  %401 = load i32, i32* @PHY_TXPWR, align 4
  %402 = load i32, i32* %23, align 4
  %403 = icmp eq i32 %402, 0
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i32 65, i32 66
  %406 = trunc i32 %405 to i8
  %407 = load i32, i32* %21, align 4
  %408 = call i32 @RTPRINT(%struct.rtl_priv* %399, i32 %400, i32 %401, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8 signext %406, i32 %407)
  br label %452

409:                                              ; preds = %34
  store i64 0, i64* %17, align 8
  %410 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %411 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %410, i32 0, i32 0
  %412 = load i32**, i32*** %411, align 8
  %413 = load i64, i64* %17, align 8
  %414 = getelementptr inbounds i32*, i32** %412, i64 %413
  %415 = load i32*, i32** %414, align 8
  %416 = load i64, i64* %9, align 8
  %417 = load i32, i32* %23, align 4
  %418 = icmp ne i32 %417, 0
  %419 = zext i1 %418 to i64
  %420 = select i1 %418, i32 8, i32 0
  %421 = sext i32 %420 to i64
  %422 = add i64 %416, %421
  %423 = getelementptr inbounds i32, i32* %415, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load i64, i64* %9, align 8
  %426 = icmp ult i64 %425, 2
  br i1 %426, label %427, label %433

427:                                              ; preds = %409
  %428 = load i32*, i32** %10, align 8
  %429 = load i32, i32* %23, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  br label %439

433:                                              ; preds = %409
  %434 = load i32*, i32** %11, align 8
  %435 = load i32, i32* %23, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  br label %439

439:                                              ; preds = %433, %427
  %440 = phi i32 [ %432, %427 ], [ %438, %433 ]
  %441 = add nsw i32 %424, %440
  store i32 %441, i32* %21, align 4
  %442 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %443 = load i32, i32* @FPHY, align 4
  %444 = load i32, i32* @PHY_TXPWR, align 4
  %445 = load i32, i32* %23, align 4
  %446 = icmp eq i32 %445, 0
  %447 = zext i1 %446 to i64
  %448 = select i1 %446, i32 65, i32 66
  %449 = trunc i32 %448 to i8
  %450 = load i32, i32* %21, align 4
  %451 = call i32 @RTPRINT(%struct.rtl_priv* %442, i32 %443, i32 %444, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8 signext %449, i32 %450)
  br label %452

452:                                              ; preds = %439, %396, %175, %147, %68
  %453 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %454 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @TXHIGHPWRLEVEL_BT1, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %462

459:                                              ; preds = %452
  %460 = load i32, i32* %21, align 4
  %461 = sub nsw i32 %460, 101058054
  store i32 %461, i32* %21, align 4
  br label %473

462:                                              ; preds = %452
  %463 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %464 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @TXHIGHPWRLEVEL_BT2, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %472

469:                                              ; preds = %462
  %470 = load i32, i32* %21, align 4
  %471 = sub nsw i32 %470, 202116108
  store i32 %471, i32* %21, align 4
  br label %472

472:                                              ; preds = %469, %462
  br label %473

473:                                              ; preds = %472, %459
  %474 = load i32, i32* %21, align 4
  %475 = load i32*, i32** %12, align 8
  %476 = load i32, i32* %23, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  store i32 %474, i32* %478, align 4
  br label %479

479:                                              ; preds = %473
  %480 = load i32, i32* %23, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %23, align 4
  br label %31

482:                                              ; preds = %31
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
