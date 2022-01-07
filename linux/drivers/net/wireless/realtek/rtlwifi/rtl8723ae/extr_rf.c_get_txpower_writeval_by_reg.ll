; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_rf.c_get_txpower_writeval_by_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_rf.c_get_txpower_writeval_by_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_phy = type { i32**, i32, i32 }
%struct.rtl_efuse = type { i32, i32**, i32** }

@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RTK better performance, writeval(%c) = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Realtek regulatory, 40MHz, writeval(%c) = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Better regulatory, writeval(%c) = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"customer's limit, 40MHz rf(%c) = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"RTK better performance, writeval rf(%c) = 0x%x\0A\00", align 1
@TXHIGHPWRLEVEL_BT1 = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_BT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i32*, i32*, i32*)* @get_txpower_writeval_by_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_txpower_writeval_by_reg(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  store %struct.rtl_priv* %23, %struct.rtl_priv** %13, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 1
  store %struct.rtl_phy* %25, %struct.rtl_phy** %14, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %27)
  store %struct.rtl_efuse* %28, %struct.rtl_efuse** %15, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %503, %6
  %30 = load i32, i32* %21, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %506

32:                                               ; preds = %29
  %33 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %34 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %433 [
    i32 0, label %36
    i32 1, label %79
    i32 2, label %197
    i32 3, label %224
  ]

36:                                               ; preds = %32
  store i64 0, i64* %17, align 8
  %37 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %38 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* %17, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %21, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 8, i32 0
  %48 = sext i32 %47 to i64
  %49 = add i64 %43, %48
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %52, 2
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  br label %66

60:                                               ; preds = %36
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = phi i32 [ %59, %54 ], [ %65, %60 ]
  %68 = add nsw i32 %51, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %70 = load i32, i32* @FPHY, align 4
  %71 = load i32, i32* @PHY_TXPWR, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 65, i32 66
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @RTPRINT(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8 signext %76, i32 %77)
  br label %476

79:                                               ; preds = %32
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %79
  %86 = load i64, i64* %9, align 8
  %87 = icmp ult i64 %86, 2
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  br label %100

94:                                               ; preds = %85
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = phi i32 [ %93, %88 ], [ %99, %94 ]
  store i32 %101, i32* %19, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %103 = load i32, i32* @FPHY, align 4
  %104 = load i32, i32* @PHY_TXPWR, align 4
  %105 = load i32, i32* %21, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 65, i32 66
  %109 = trunc i32 %108 to i8
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @RTPRINT(%struct.rtl_priv* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8 signext %109, i32 %110)
  br label %196

112:                                              ; preds = %79
  %113 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %114 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i64 0, i64* %17, align 8
  br label %118

118:                                              ; preds = %117, %112
  %119 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %120 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 3
  br i1 %122, label %123, label %153

123:                                              ; preds = %118
  %124 = load i64, i64* %8, align 8
  %125 = icmp ule i64 %124, 3
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i64 0, i64* %17, align 8
  br label %140

127:                                              ; preds = %123
  %128 = load i64, i64* %8, align 8
  %129 = icmp uge i64 %128, 4
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i64, i64* %8, align 8
  %132 = icmp ule i64 %131, 9
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i64 1, i64* %17, align 8
  br label %139

134:                                              ; preds = %130, %127
  %135 = load i64, i64* %8, align 8
  %136 = icmp ugt i64 %135, 9
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i64 2, i64* %17, align 8
  br label %138

138:                                              ; preds = %137, %134
  br label %139

139:                                              ; preds = %138, %133
  br label %140

140:                                              ; preds = %139, %126
  %141 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %142 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i64, i64* %17, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %17, align 8
  br label %152

149:                                              ; preds = %140
  %150 = load i64, i64* %17, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %17, align 8
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %118
  %154 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %155 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = load i64, i64* %17, align 8
  %158 = getelementptr inbounds i32*, i32** %156, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 8, i32 0
  %165 = sext i32 %164 to i64
  %166 = add i64 %160, %165
  %167 = getelementptr inbounds i32, i32* %159, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %9, align 8
  %170 = icmp ult i64 %169, 2
  br i1 %170, label %171, label %177

171:                                              ; preds = %153
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  br label %183

177:                                              ; preds = %153
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %21, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  br label %183

183:                                              ; preds = %177, %171
  %184 = phi i32 [ %176, %171 ], [ %182, %177 ]
  %185 = add nsw i32 %168, %184
  store i32 %185, i32* %19, align 4
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %187 = load i32, i32* @FPHY, align 4
  %188 = load i32, i32* @PHY_TXPWR, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp eq i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 65, i32 66
  %193 = trunc i32 %192 to i8
  %194 = load i32, i32* %19, align 4
  %195 = call i32 @RTPRINT(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8 signext %193, i32 %194)
  br label %196

196:                                              ; preds = %183, %100
  br label %476

197:                                              ; preds = %32
  %198 = load i64, i64* %9, align 8
  %199 = icmp ult i64 %198, 2
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  br label %212

206:                                              ; preds = %197
  %207 = load i32*, i32** %11, align 8
  %208 = load i32, i32* %21, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  br label %212

212:                                              ; preds = %206, %200
  %213 = phi i32 [ %205, %200 ], [ %211, %206 ]
  store i32 %213, i32* %19, align 4
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %215 = load i32, i32* @FPHY, align 4
  %216 = load i32, i32* @PHY_TXPWR, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 65, i32 66
  %221 = trunc i32 %220 to i8
  %222 = load i32, i32* %19, align 4
  %223 = call i32 @RTPRINT(%struct.rtl_priv* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8 signext %221, i32 %222)
  br label %476

224:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %225 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %226 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %224
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %232 = load i32, i32* @FPHY, align 4
  %233 = load i32, i32* @PHY_TXPWR, align 4
  %234 = load i32, i32* %21, align 4
  %235 = icmp eq i32 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 65, i32 66
  %238 = trunc i32 %237 to i8
  %239 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %240 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %239, i32 0, i32 1
  %241 = load i32**, i32*** %240, align 8
  %242 = load i32, i32* %21, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %241, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* %8, align 8
  %247 = sub i64 %246, 1
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @RTPRINT(%struct.rtl_priv* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8 signext %238, i32 %249)
  br label %272

251:                                              ; preds = %224
  %252 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %253 = load i32, i32* @FPHY, align 4
  %254 = load i32, i32* @PHY_TXPWR, align 4
  %255 = load i32, i32* %21, align 4
  %256 = icmp eq i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 65, i32 66
  %259 = trunc i32 %258 to i8
  %260 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %261 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %260, i32 0, i32 2
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = load i64, i64* %8, align 8
  %268 = sub i64 %267, 1
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @RTPRINT(%struct.rtl_priv* %252, i32 %253, i32 %254, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8 signext %259, i32 %270)
  br label %272

272:                                              ; preds = %251, %230
  store i64 0, i64* %16, align 8
  br label %273

273:                                              ; preds = %376, %272
  %274 = load i64, i64* %16, align 8
  %275 = icmp ult i64 %274, 4
  br i1 %275, label %276, label %379

276:                                              ; preds = %273
  %277 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %278 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %277, i32 0, i32 0
  %279 = load i32**, i32*** %278, align 8
  %280 = load i64, i64* %17, align 8
  %281 = getelementptr inbounds i32*, i32** %279, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* %9, align 8
  %284 = load i32, i32* %21, align 4
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 8, i32 0
  %288 = sext i32 %287 to i64
  %289 = add i64 %283, %288
  %290 = getelementptr inbounds i32, i32* %282, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i64, i64* %16, align 8
  %293 = mul i64 %292, 8
  %294 = trunc i64 %293 to i32
  %295 = shl i32 127, %294
  %296 = and i32 %291, %295
  %297 = load i64, i64* %16, align 8
  %298 = mul i64 %297, 8
  %299 = trunc i64 %298 to i32
  %300 = ashr i32 %296, %299
  %301 = sext i32 %300 to i64
  %302 = load i64, i64* %16, align 8
  %303 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %302
  store i64 %301, i64* %303, align 8
  %304 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %305 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %342

309:                                              ; preds = %276
  %310 = load i64, i64* %16, align 8
  %311 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %314 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %313, i32 0, i32 1
  %315 = load i32**, i32*** %314, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32*, i32** %315, i64 %317
  %319 = load i32*, i32** %318, align 8
  %320 = load i64, i64* %8, align 8
  %321 = sub i64 %320, 1
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = icmp ugt i64 %312, %324
  br i1 %325, label %326, label %341

326:                                              ; preds = %309
  %327 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %328 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %327, i32 0, i32 1
  %329 = load i32**, i32*** %328, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32*, i32** %329, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = load i64, i64* %8, align 8
  %335 = sub i64 %334, 1
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = load i64, i64* %16, align 8
  %340 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %339
  store i64 %338, i64* %340, align 8
  br label %341

341:                                              ; preds = %326, %309
  br label %375

342:                                              ; preds = %276
  %343 = load i64, i64* %16, align 8
  %344 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %347 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %346, i32 0, i32 2
  %348 = load i32**, i32*** %347, align 8
  %349 = load i32, i32* %21, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %348, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %8, align 8
  %354 = sub i64 %353, 1
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = icmp ugt i64 %345, %357
  br i1 %358, label %359, label %374

359:                                              ; preds = %342
  %360 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %361 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %360, i32 0, i32 2
  %362 = load i32**, i32*** %361, align 8
  %363 = load i32, i32* %21, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32*, i32** %362, i64 %364
  %366 = load i32*, i32** %365, align 8
  %367 = load i64, i64* %8, align 8
  %368 = sub i64 %367, 1
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %16, align 8
  %373 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %372
  store i64 %371, i64* %373, align 8
  br label %374

374:                                              ; preds = %359, %342
  br label %375

375:                                              ; preds = %374, %341
  br label %376

376:                                              ; preds = %375
  %377 = load i64, i64* %16, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %16, align 8
  br label %273

379:                                              ; preds = %273
  %380 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %381 = load i64, i64* %380, align 8
  %382 = shl i64 %381, 24
  %383 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %384 = load i64, i64* %383, align 16
  %385 = shl i64 %384, 16
  %386 = or i64 %382, %385
  %387 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %388 = load i64, i64* %387, align 8
  %389 = shl i64 %388, 8
  %390 = or i64 %386, %389
  %391 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %392 = load i64, i64* %391, align 16
  %393 = or i64 %390, %392
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %20, align 4
  %395 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %396 = load i32, i32* @FPHY, align 4
  %397 = load i32, i32* @PHY_TXPWR, align 4
  %398 = load i32, i32* %21, align 4
  %399 = icmp eq i32 %398, 0
  %400 = zext i1 %399 to i64
  %401 = select i1 %399, i32 65, i32 66
  %402 = trunc i32 %401 to i8
  %403 = load i32, i32* %20, align 4
  %404 = call i32 @RTPRINT(%struct.rtl_priv* %395, i32 %396, i32 %397, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8 signext %402, i32 %403)
  %405 = load i32, i32* %20, align 4
  %406 = load i64, i64* %9, align 8
  %407 = icmp ult i64 %406, 2
  br i1 %407, label %408, label %414

408:                                              ; preds = %379
  %409 = load i32*, i32** %10, align 8
  %410 = load i32, i32* %21, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  br label %420

414:                                              ; preds = %379
  %415 = load i32*, i32** %11, align 8
  %416 = load i32, i32* %21, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  br label %420

420:                                              ; preds = %414, %408
  %421 = phi i32 [ %413, %408 ], [ %419, %414 ]
  %422 = add nsw i32 %405, %421
  store i32 %422, i32* %19, align 4
  %423 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %424 = load i32, i32* @FPHY, align 4
  %425 = load i32, i32* @PHY_TXPWR, align 4
  %426 = load i32, i32* %21, align 4
  %427 = icmp eq i32 %426, 0
  %428 = zext i1 %427 to i64
  %429 = select i1 %427, i32 65, i32 66
  %430 = trunc i32 %429 to i8
  %431 = load i32, i32* %19, align 4
  %432 = call i32 @RTPRINT(%struct.rtl_priv* %423, i32 %424, i32 %425, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8 signext %430, i32 %431)
  br label %476

433:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %434 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %435 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %434, i32 0, i32 0
  %436 = load i32**, i32*** %435, align 8
  %437 = load i64, i64* %17, align 8
  %438 = getelementptr inbounds i32*, i32** %436, i64 %437
  %439 = load i32*, i32** %438, align 8
  %440 = load i64, i64* %9, align 8
  %441 = load i32, i32* %21, align 4
  %442 = icmp ne i32 %441, 0
  %443 = zext i1 %442 to i64
  %444 = select i1 %442, i32 8, i32 0
  %445 = sext i32 %444 to i64
  %446 = add i64 %440, %445
  %447 = getelementptr inbounds i32, i32* %439, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = load i64, i64* %9, align 8
  %450 = icmp ult i64 %449, 2
  br i1 %450, label %451, label %457

451:                                              ; preds = %433
  %452 = load i32*, i32** %10, align 8
  %453 = load i32, i32* %21, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load i32, i32* %455, align 4
  br label %463

457:                                              ; preds = %433
  %458 = load i32*, i32** %11, align 8
  %459 = load i32, i32* %21, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  br label %463

463:                                              ; preds = %457, %451
  %464 = phi i32 [ %456, %451 ], [ %462, %457 ]
  %465 = add nsw i32 %448, %464
  store i32 %465, i32* %19, align 4
  %466 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %467 = load i32, i32* @FPHY, align 4
  %468 = load i32, i32* @PHY_TXPWR, align 4
  %469 = load i32, i32* %21, align 4
  %470 = icmp eq i32 %469, 0
  %471 = zext i1 %470 to i64
  %472 = select i1 %470, i32 65, i32 66
  %473 = trunc i32 %472 to i8
  %474 = load i32, i32* %19, align 4
  %475 = call i32 @RTPRINT(%struct.rtl_priv* %466, i32 %467, i32 %468, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8 signext %473, i32 %474)
  br label %476

476:                                              ; preds = %463, %420, %212, %196, %66
  %477 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %478 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @TXHIGHPWRLEVEL_BT1, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %483, label %486

483:                                              ; preds = %476
  %484 = load i32, i32* %19, align 4
  %485 = sub nsw i32 %484, 101058054
  store i32 %485, i32* %19, align 4
  br label %497

486:                                              ; preds = %476
  %487 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %488 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @TXHIGHPWRLEVEL_BT2, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %496

493:                                              ; preds = %486
  %494 = load i32, i32* %19, align 4
  %495 = sub nsw i32 %494, 202116108
  store i32 %495, i32* %19, align 4
  br label %496

496:                                              ; preds = %493, %486
  br label %497

497:                                              ; preds = %496, %483
  %498 = load i32, i32* %19, align 4
  %499 = load i32*, i32** %12, align 8
  %500 = load i32, i32* %21, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  store i32 %498, i32* %502, align 4
  br label %503

503:                                              ; preds = %497
  %504 = load i32, i32* %21, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %21, align 4
  br label %29

506:                                              ; preds = %29
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
