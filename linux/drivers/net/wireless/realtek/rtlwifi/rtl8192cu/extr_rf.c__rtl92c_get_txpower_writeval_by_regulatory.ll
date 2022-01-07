; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c__rtl92c_get_txpower_writeval_by_regulatory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_rf.c__rtl92c_get_txpower_writeval_by_regulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_phy = type { i32**, i32, i32 }
%struct.rtl_efuse = type { i32, i32**, i32** }

@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RTK better performance,writeval(%c) = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Better regulatory,writeval(%c) = 0x%x\0A\00", align 1
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"customer's limit, 40MHzrf(%c) = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"RTK better performance, writevalrf(%c) = 0x%x\0A\00", align 1
@TXHIGHPWRLEVEL_LEVEL1 = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_LEVEL2 = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_BT1 = common dso_local global i64 0, align 8
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

29:                                               ; preds = %475, %6
  %30 = load i32, i32* %21, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %478

32:                                               ; preds = %29
  %33 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %34 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %399 [
    i32 0, label %36
    i32 1, label %79
    i32 2, label %163
    i32 3, label %190
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
  %78 = call i32 @RTPRINT(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8 signext %76, i32 %77)
  br label %442

79:                                               ; preds = %32
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i64 0, i64* %17, align 8
  br label %85

85:                                               ; preds = %84, %79
  %86 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %87 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 3
  br i1 %89, label %90, label %120

90:                                               ; preds = %85
  %91 = load i64, i64* %8, align 8
  %92 = icmp ule i64 %91, 3
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i64 0, i64* %17, align 8
  br label %107

94:                                               ; preds = %90
  %95 = load i64, i64* %8, align 8
  %96 = icmp uge i64 %95, 4
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = icmp ule i64 %98, 9
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i64 1, i64* %17, align 8
  br label %106

101:                                              ; preds = %97, %94
  %102 = load i64, i64* %8, align 8
  %103 = icmp ugt i64 %102, 9
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i64 2, i64* %17, align 8
  br label %105

105:                                              ; preds = %104, %101
  br label %106

106:                                              ; preds = %105, %100
  br label %107

107:                                              ; preds = %106, %93
  %108 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %109 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i64, i64* %17, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %17, align 8
  br label %119

116:                                              ; preds = %107
  %117 = load i64, i64* %17, align 8
  %118 = add i64 %117, 4
  store i64 %118, i64* %17, align 8
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %85
  %121 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %122 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %121, i32 0, i32 0
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 8, i32 0
  %132 = sext i32 %131 to i64
  %133 = add i64 %127, %132
  %134 = getelementptr inbounds i32, i32* %126, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %9, align 8
  %137 = icmp ult i64 %136, 2
  br i1 %137, label %138, label %144

138:                                              ; preds = %120
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  br label %150

144:                                              ; preds = %120
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %21, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  br label %150

150:                                              ; preds = %144, %138
  %151 = phi i32 [ %143, %138 ], [ %149, %144 ]
  %152 = add nsw i32 %135, %151
  store i32 %152, i32* %19, align 4
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %154 = load i32, i32* @FPHY, align 4
  %155 = load i32, i32* @PHY_TXPWR, align 4
  %156 = load i32, i32* %21, align 4
  %157 = icmp eq i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 65, i32 66
  %160 = trunc i32 %159 to i8
  %161 = load i32, i32* %19, align 4
  %162 = call i32 @RTPRINT(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8 signext %160, i32 %161)
  br label %442

163:                                              ; preds = %32
  %164 = load i64, i64* %9, align 8
  %165 = icmp ult i64 %164, 2
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  br label %178

172:                                              ; preds = %163
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  br label %178

178:                                              ; preds = %172, %166
  %179 = phi i32 [ %171, %166 ], [ %177, %172 ]
  store i32 %179, i32* %19, align 4
  %180 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %181 = load i32, i32* @FPHY, align 4
  %182 = load i32, i32* @PHY_TXPWR, align 4
  %183 = load i32, i32* %21, align 4
  %184 = icmp eq i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 65, i32 66
  %187 = trunc i32 %186 to i8
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @RTPRINT(%struct.rtl_priv* %180, i32 %181, i32 %182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8 signext %187, i32 %188)
  br label %442

190:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %191 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %192 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %217

196:                                              ; preds = %190
  %197 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %198 = load i32, i32* @FPHY, align 4
  %199 = load i32, i32* @PHY_TXPWR, align 4
  %200 = load i32, i32* %21, align 4
  %201 = icmp eq i32 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 65, i32 66
  %204 = trunc i32 %203 to i8
  %205 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %206 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %205, i32 0, i32 1
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %21, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = sub i64 %212, 1
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @RTPRINT(%struct.rtl_priv* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8 signext %204, i32 %215)
  br label %238

217:                                              ; preds = %190
  %218 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %219 = load i32, i32* @FPHY, align 4
  %220 = load i32, i32* @PHY_TXPWR, align 4
  %221 = load i32, i32* %21, align 4
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 65, i32 66
  %225 = trunc i32 %224 to i8
  %226 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %227 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %21, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* %8, align 8
  %234 = sub i64 %233, 1
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @RTPRINT(%struct.rtl_priv* %218, i32 %219, i32 %220, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8 signext %225, i32 %236)
  br label %238

238:                                              ; preds = %217, %196
  store i64 0, i64* %16, align 8
  br label %239

239:                                              ; preds = %342, %238
  %240 = load i64, i64* %16, align 8
  %241 = icmp ult i64 %240, 4
  br i1 %241, label %242, label %345

242:                                              ; preds = %239
  %243 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %244 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %243, i32 0, i32 0
  %245 = load i32**, i32*** %244, align 8
  %246 = load i64, i64* %17, align 8
  %247 = getelementptr inbounds i32*, i32** %245, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %9, align 8
  %250 = load i32, i32* %21, align 4
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 8, i32 0
  %254 = sext i32 %253 to i64
  %255 = add i64 %249, %254
  %256 = getelementptr inbounds i32, i32* %248, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i64, i64* %16, align 8
  %259 = mul i64 %258, 8
  %260 = trunc i64 %259 to i32
  %261 = shl i32 127, %260
  %262 = and i32 %257, %261
  %263 = load i64, i64* %16, align 8
  %264 = mul i64 %263, 8
  %265 = trunc i64 %264 to i32
  %266 = ashr i32 %262, %265
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* %16, align 8
  %269 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %268
  store i64 %267, i64* %269, align 8
  %270 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %271 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %308

275:                                              ; preds = %242
  %276 = load i64, i64* %16, align 8
  %277 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %280 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %279, i32 0, i32 1
  %281 = load i32**, i32*** %280, align 8
  %282 = load i32, i32* %21, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32*, i32** %281, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* %8, align 8
  %287 = sub i64 %286, 1
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = icmp ugt i64 %278, %290
  br i1 %291, label %292, label %307

292:                                              ; preds = %275
  %293 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %294 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %293, i32 0, i32 1
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %21, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* %8, align 8
  %301 = sub i64 %300, 1
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = load i64, i64* %16, align 8
  %306 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %305
  store i64 %304, i64* %306, align 8
  br label %307

307:                                              ; preds = %292, %275
  br label %341

308:                                              ; preds = %242
  %309 = load i64, i64* %16, align 8
  %310 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %313 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %312, i32 0, i32 2
  %314 = load i32**, i32*** %313, align 8
  %315 = load i32, i32* %21, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32*, i32** %314, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* %8, align 8
  %320 = sub i64 %319, 1
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = icmp ugt i64 %311, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %308
  %326 = load %struct.rtl_efuse*, %struct.rtl_efuse** %15, align 8
  %327 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %326, i32 0, i32 2
  %328 = load i32**, i32*** %327, align 8
  %329 = load i32, i32* %21, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32*, i32** %328, i64 %330
  %332 = load i32*, i32** %331, align 8
  %333 = load i64, i64* %8, align 8
  %334 = sub i64 %333, 1
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = load i64, i64* %16, align 8
  %339 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %338
  store i64 %337, i64* %339, align 8
  br label %340

340:                                              ; preds = %325, %308
  br label %341

341:                                              ; preds = %340, %307
  br label %342

342:                                              ; preds = %341
  %343 = load i64, i64* %16, align 8
  %344 = add i64 %343, 1
  store i64 %344, i64* %16, align 8
  br label %239

345:                                              ; preds = %239
  %346 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %347 = load i64, i64* %346, align 8
  %348 = shl i64 %347, 24
  %349 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %350 = load i64, i64* %349, align 16
  %351 = shl i64 %350, 16
  %352 = or i64 %348, %351
  %353 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %354 = load i64, i64* %353, align 8
  %355 = shl i64 %354, 8
  %356 = or i64 %352, %355
  %357 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %358 = load i64, i64* %357, align 16
  %359 = or i64 %356, %358
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %20, align 4
  %361 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %362 = load i32, i32* @FPHY, align 4
  %363 = load i32, i32* @PHY_TXPWR, align 4
  %364 = load i32, i32* %21, align 4
  %365 = icmp eq i32 %364, 0
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, i32 65, i32 66
  %368 = trunc i32 %367 to i8
  %369 = load i32, i32* %20, align 4
  %370 = call i32 @RTPRINT(%struct.rtl_priv* %361, i32 %362, i32 %363, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8 signext %368, i32 %369)
  %371 = load i32, i32* %20, align 4
  %372 = load i64, i64* %9, align 8
  %373 = icmp ult i64 %372, 2
  br i1 %373, label %374, label %380

374:                                              ; preds = %345
  %375 = load i32*, i32** %10, align 8
  %376 = load i32, i32* %21, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  br label %386

380:                                              ; preds = %345
  %381 = load i32*, i32** %11, align 8
  %382 = load i32, i32* %21, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  br label %386

386:                                              ; preds = %380, %374
  %387 = phi i32 [ %379, %374 ], [ %385, %380 ]
  %388 = add nsw i32 %371, %387
  store i32 %388, i32* %19, align 4
  %389 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %390 = load i32, i32* @FPHY, align 4
  %391 = load i32, i32* @PHY_TXPWR, align 4
  %392 = load i32, i32* %21, align 4
  %393 = icmp eq i32 %392, 0
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 65, i32 66
  %396 = trunc i32 %395 to i8
  %397 = load i32, i32* %19, align 4
  %398 = call i32 @RTPRINT(%struct.rtl_priv* %389, i32 %390, i32 %391, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8 signext %396, i32 %397)
  br label %442

399:                                              ; preds = %32
  store i64 0, i64* %17, align 8
  %400 = load %struct.rtl_phy*, %struct.rtl_phy** %14, align 8
  %401 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %400, i32 0, i32 0
  %402 = load i32**, i32*** %401, align 8
  %403 = load i64, i64* %17, align 8
  %404 = getelementptr inbounds i32*, i32** %402, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = load i64, i64* %9, align 8
  %407 = load i32, i32* %21, align 4
  %408 = icmp ne i32 %407, 0
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i32 8, i32 0
  %411 = sext i32 %410 to i64
  %412 = add i64 %406, %411
  %413 = getelementptr inbounds i32, i32* %405, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load i64, i64* %9, align 8
  %416 = icmp ult i64 %415, 2
  br i1 %416, label %417, label %423

417:                                              ; preds = %399
  %418 = load i32*, i32** %10, align 8
  %419 = load i32, i32* %21, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  br label %429

423:                                              ; preds = %399
  %424 = load i32*, i32** %11, align 8
  %425 = load i32, i32* %21, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  br label %429

429:                                              ; preds = %423, %417
  %430 = phi i32 [ %422, %417 ], [ %428, %423 ]
  %431 = add nsw i32 %414, %430
  store i32 %431, i32* %19, align 4
  %432 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %433 = load i32, i32* @FPHY, align 4
  %434 = load i32, i32* @PHY_TXPWR, align 4
  %435 = load i32, i32* %21, align 4
  %436 = icmp eq i32 %435, 0
  %437 = zext i1 %436 to i64
  %438 = select i1 %436, i32 65, i32 66
  %439 = trunc i32 %438 to i8
  %440 = load i32, i32* %19, align 4
  %441 = call i32 @RTPRINT(%struct.rtl_priv* %432, i32 %433, i32 %434, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8 signext %439, i32 %440)
  br label %442

442:                                              ; preds = %429, %386, %178, %150, %66
  %443 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %444 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL1, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %442
  store i32 336860180, i32* %19, align 4
  br label %459

450:                                              ; preds = %442
  %451 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %452 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL2, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %458

457:                                              ; preds = %450
  store i32 0, i32* %19, align 4
  br label %458

458:                                              ; preds = %457, %450
  br label %459

459:                                              ; preds = %458, %449
  %460 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %461 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @TXHIGHPWRLEVEL_BT1, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %459
  %467 = load i32, i32* %19, align 4
  %468 = sub nsw i32 %467, 101058054
  store i32 %468, i32* %19, align 4
  br label %469

469:                                              ; preds = %466, %459
  %470 = load i32, i32* %19, align 4
  %471 = load i32*, i32** %12, align 8
  %472 = load i32, i32* %21, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  store i32 %470, i32* %474, align 4
  br label %475

475:                                              ; preds = %469
  %476 = load i32, i32* %21, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %21, align 4
  br label %29

478:                                              ; preds = %29
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
