; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_rf.c__rtl92c_get_txpower_writeval_by_regulatory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_rf.c__rtl92c_get_txpower_writeval_by_regulatory.c"
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
@.str.2 = private unnamed_addr constant [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Better regulatory, writeval(%c) = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"customer's limit, 40MHz rf(%c) = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"RTK better performance, writeval rf(%c) = 0x%x\0A\00", align 1
@TXHIGHPWRLEVEL_BT1 = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_BT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i32*, i32*, i32*)* @_rtl92c_get_txpower_writeval_by_regulatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_get_txpower_writeval_by_regulatory(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
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

29:                                               ; preds = %499, %6
  %30 = load i32, i32* %21, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %502

32:                                               ; preds = %29
  %33 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %34 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %429 [
    i32 0, label %36
    i32 1, label %79
    i32 2, label %193
    i32 3, label %220
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
  br label %472

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
  br label %192

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
  br i1 %122, label %123, label %149

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
  %142 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 4
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i64, i64* %17, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %145, %140
  br label %149

149:                                              ; preds = %148, %118
  %150 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %151 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %150, i32 0, i32 0
  %152 = load i32**, i32*** %151, align 8
  %153 = load i64, i64* %17, align 8
  %154 = getelementptr inbounds i32*, i32** %152, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 8, i32 0
  %161 = sext i32 %160 to i64
  %162 = add i64 %156, %161
  %163 = getelementptr inbounds i32, i32* %155, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* %9, align 8
  %166 = icmp ult i64 %165, 2
  br i1 %166, label %167, label %173

167:                                              ; preds = %149
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %21, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  br label %179

173:                                              ; preds = %149
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  br label %179

179:                                              ; preds = %173, %167
  %180 = phi i32 [ %172, %167 ], [ %178, %173 ]
  %181 = add nsw i32 %164, %180
  store i32 %181, i32* %19, align 4
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %183 = load i32, i32* @FPHY, align 4
  %184 = load i32, i32* @PHY_TXPWR, align 4
  %185 = load i32, i32* %21, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 65, i32 66
  %189 = trunc i32 %188 to i8
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @RTPRINT(%struct.rtl_priv* %182, i32 %183, i32 %184, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8 signext %189, i32 %190)
  br label %192

192:                                              ; preds = %179, %100
  br label %472

193:                                              ; preds = %32
  %194 = load i64, i64* %9, align 8
  %195 = icmp ult i64 %194, 2
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %21, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  br label %208

202:                                              ; preds = %193
  %203 = load i32*, i32** %11, align 8
  %204 = load i32, i32* %21, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  br label %208

208:                                              ; preds = %202, %196
  %209 = phi i32 [ %201, %196 ], [ %207, %202 ]
  store i32 %209, i32* %19, align 4
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %211 = load i32, i32* @FPHY, align 4
  %212 = load i32, i32* @PHY_TXPWR, align 4
  %213 = load i32, i32* %21, align 4
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 65, i32 66
  %217 = trunc i32 %216 to i8
  %218 = load i32, i32* %19, align 4
  %219 = call i32 @RTPRINT(%struct.rtl_priv* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8 signext %217, i32 %218)
  br label %472

220:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %221 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %222 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %247

226:                                              ; preds = %220
  %227 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %228 = load i32, i32* @FPHY, align 4
  %229 = load i32, i32* @PHY_TXPWR, align 4
  %230 = load i32, i32* %21, align 4
  %231 = icmp eq i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 65, i32 66
  %234 = trunc i32 %233 to i8
  %235 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %236 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %235, i32 0, i32 1
  %237 = load i32**, i32*** %236, align 8
  %238 = load i32, i32* %21, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* %8, align 8
  %243 = sub i64 %242, 1
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @RTPRINT(%struct.rtl_priv* %227, i32 %228, i32 %229, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8 signext %234, i32 %245)
  br label %268

247:                                              ; preds = %220
  %248 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %249 = load i32, i32* @FPHY, align 4
  %250 = load i32, i32* @PHY_TXPWR, align 4
  %251 = load i32, i32* %21, align 4
  %252 = icmp eq i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i32 65, i32 66
  %255 = trunc i32 %254 to i8
  %256 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %257 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %256, i32 0, i32 2
  %258 = load i32**, i32*** %257, align 8
  %259 = load i32, i32* %21, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %8, align 8
  %264 = sub i64 %263, 1
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @RTPRINT(%struct.rtl_priv* %248, i32 %249, i32 %250, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8 signext %255, i32 %266)
  br label %268

268:                                              ; preds = %247, %226
  store i64 0, i64* %16, align 8
  br label %269

269:                                              ; preds = %372, %268
  %270 = load i64, i64* %16, align 8
  %271 = icmp ult i64 %270, 4
  br i1 %271, label %272, label %375

272:                                              ; preds = %269
  %273 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %274 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %273, i32 0, i32 0
  %275 = load i32**, i32*** %274, align 8
  %276 = load i64, i64* %17, align 8
  %277 = getelementptr inbounds i32*, i32** %275, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = load i64, i64* %9, align 8
  %280 = load i32, i32* %21, align 4
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i32 8, i32 0
  %284 = sext i32 %283 to i64
  %285 = add i64 %279, %284
  %286 = getelementptr inbounds i32, i32* %278, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i64, i64* %16, align 8
  %289 = mul i64 %288, 8
  %290 = trunc i64 %289 to i32
  %291 = shl i32 127, %290
  %292 = and i32 %287, %291
  %293 = load i64, i64* %16, align 8
  %294 = mul i64 %293, 8
  %295 = trunc i64 %294 to i32
  %296 = ashr i32 %292, %295
  %297 = sext i32 %296 to i64
  %298 = load i64, i64* %16, align 8
  %299 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %298
  store i64 %297, i64* %299, align 8
  %300 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %301 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %338

305:                                              ; preds = %272
  %306 = load i64, i64* %16, align 8
  %307 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %310 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %309, i32 0, i32 1
  %311 = load i32**, i32*** %310, align 8
  %312 = load i32, i32* %21, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32*, i32** %311, i64 %313
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* %8, align 8
  %317 = sub i64 %316, 1
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = icmp ugt i64 %308, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %305
  %323 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %324 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %323, i32 0, i32 1
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %21, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* %8, align 8
  %331 = sub i64 %330, 1
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = load i64, i64* %16, align 8
  %336 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %335
  store i64 %334, i64* %336, align 8
  br label %337

337:                                              ; preds = %322, %305
  br label %371

338:                                              ; preds = %272
  %339 = load i64, i64* %16, align 8
  %340 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %343 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %342, i32 0, i32 2
  %344 = load i32**, i32*** %343, align 8
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32*, i32** %344, i64 %346
  %348 = load i32*, i32** %347, align 8
  %349 = load i64, i64* %8, align 8
  %350 = sub i64 %349, 1
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = icmp ugt i64 %341, %353
  br i1 %354, label %355, label %370

355:                                              ; preds = %338
  %356 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %357 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %356, i32 0, i32 2
  %358 = load i32**, i32*** %357, align 8
  %359 = load i32, i32* %21, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32*, i32** %358, i64 %360
  %362 = load i32*, i32** %361, align 8
  %363 = load i64, i64* %8, align 8
  %364 = sub i64 %363, 1
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = load i64, i64* %16, align 8
  %369 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %368
  store i64 %367, i64* %369, align 8
  br label %370

370:                                              ; preds = %355, %338
  br label %371

371:                                              ; preds = %370, %337
  br label %372

372:                                              ; preds = %371
  %373 = load i64, i64* %16, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %16, align 8
  br label %269

375:                                              ; preds = %269
  %376 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %377 = load i64, i64* %376, align 8
  %378 = shl i64 %377, 24
  %379 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %380 = load i64, i64* %379, align 16
  %381 = shl i64 %380, 16
  %382 = or i64 %378, %381
  %383 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %384 = load i64, i64* %383, align 8
  %385 = shl i64 %384, 8
  %386 = or i64 %382, %385
  %387 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %388 = load i64, i64* %387, align 16
  %389 = or i64 %386, %388
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %20, align 4
  %391 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %392 = load i32, i32* @FPHY, align 4
  %393 = load i32, i32* @PHY_TXPWR, align 4
  %394 = load i32, i32* %21, align 4
  %395 = icmp eq i32 %394, 0
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i32 65, i32 66
  %398 = trunc i32 %397 to i8
  %399 = load i32, i32* %20, align 4
  %400 = call i32 @RTPRINT(%struct.rtl_priv* %391, i32 %392, i32 %393, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8 signext %398, i32 %399)
  %401 = load i32, i32* %20, align 4
  %402 = load i64, i64* %9, align 8
  %403 = icmp ult i64 %402, 2
  br i1 %403, label %404, label %410

404:                                              ; preds = %375
  %405 = load i32*, i32** %10, align 8
  %406 = load i32, i32* %21, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  br label %416

410:                                              ; preds = %375
  %411 = load i32*, i32** %11, align 8
  %412 = load i32, i32* %21, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  br label %416

416:                                              ; preds = %410, %404
  %417 = phi i32 [ %409, %404 ], [ %415, %410 ]
  %418 = add nsw i32 %401, %417
  store i32 %418, i32* %19, align 4
  %419 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %420 = load i32, i32* @FPHY, align 4
  %421 = load i32, i32* @PHY_TXPWR, align 4
  %422 = load i32, i32* %21, align 4
  %423 = icmp eq i32 %422, 0
  %424 = zext i1 %423 to i64
  %425 = select i1 %423, i32 65, i32 66
  %426 = trunc i32 %425 to i8
  %427 = load i32, i32* %19, align 4
  %428 = call i32 @RTPRINT(%struct.rtl_priv* %419, i32 %420, i32 %421, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8 signext %426, i32 %427)
  br label %472

429:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %430 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %431 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %430, i32 0, i32 0
  %432 = load i32**, i32*** %431, align 8
  %433 = load i64, i64* %17, align 8
  %434 = getelementptr inbounds i32*, i32** %432, i64 %433
  %435 = load i32*, i32** %434, align 8
  %436 = load i64, i64* %9, align 8
  %437 = load i32, i32* %21, align 4
  %438 = icmp ne i32 %437, 0
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i32 8, i32 0
  %441 = sext i32 %440 to i64
  %442 = add i64 %436, %441
  %443 = getelementptr inbounds i32, i32* %435, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load i64, i64* %9, align 8
  %446 = icmp ult i64 %445, 2
  br i1 %446, label %447, label %453

447:                                              ; preds = %429
  %448 = load i32*, i32** %10, align 8
  %449 = load i32, i32* %21, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  br label %459

453:                                              ; preds = %429
  %454 = load i32*, i32** %11, align 8
  %455 = load i32, i32* %21, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  %458 = load i32, i32* %457, align 4
  br label %459

459:                                              ; preds = %453, %447
  %460 = phi i32 [ %452, %447 ], [ %458, %453 ]
  %461 = add nsw i32 %444, %460
  store i32 %461, i32* %19, align 4
  %462 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %463 = load i32, i32* @FPHY, align 4
  %464 = load i32, i32* @PHY_TXPWR, align 4
  %465 = load i32, i32* %21, align 4
  %466 = icmp eq i32 %465, 0
  %467 = zext i1 %466 to i64
  %468 = select i1 %466, i32 65, i32 66
  %469 = trunc i32 %468 to i8
  %470 = load i32, i32* %19, align 4
  %471 = call i32 @RTPRINT(%struct.rtl_priv* %462, i32 %463, i32 %464, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8 signext %469, i32 %470)
  br label %472

472:                                              ; preds = %459, %416, %208, %192, %66
  %473 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %474 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @TXHIGHPWRLEVEL_BT1, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %482

479:                                              ; preds = %472
  %480 = load i32, i32* %19, align 4
  %481 = sub nsw i32 %480, 101058054
  store i32 %481, i32* %19, align 4
  br label %493

482:                                              ; preds = %472
  %483 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %484 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @TXHIGHPWRLEVEL_BT2, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %492

489:                                              ; preds = %482
  %490 = load i32, i32* %19, align 4
  %491 = sub nsw i32 %490, 202116108
  store i32 %491, i32* %19, align 4
  br label %492

492:                                              ; preds = %489, %482
  br label %493

493:                                              ; preds = %492, %479
  %494 = load i32, i32* %19, align 4
  %495 = load i32*, i32** %12, align 8
  %496 = load i32, i32* %21, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  store i32 %494, i32* %498, align 4
  br label %499

499:                                              ; preds = %493
  %500 = load i32, i32* %21, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %21, align 4
  br label %29

502:                                              ; preds = %29
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
