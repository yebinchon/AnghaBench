; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_config_bb_with_hdr_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_config_bb_with_hdr_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@RTL8192EE_PHY_REG_ARRAY_LEN = common dso_local global i32 0, align 4
@RTL8192EE_PHY_REG_ARRAY = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@RTL8192EE_AGC_TAB_ARRAY_LEN = common dso_local global i32 0, align 4
@RTL8192EE_AGC_TAB_ARRAY = common dso_local global i32* null, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"The agctab_array_table[0] is %x Rtl818EEPHY_REGArray[1] is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @phy_config_bb_with_hdr_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_config_bb_with_hdr_file(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %139

16:                                               ; preds = %2
  %17 = load i32, i32* @RTL8192EE_PHY_REG_ARRAY_LEN, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** @RTL8192EE_PHY_REG_ARRAY, align 8
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %135, %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %138

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %35, -842150451
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @_rtl92ee_config_bb_reg(%struct.ieee80211_hw* %38, i32 %39, i32 %40)
  br label %134

42:                                               ; preds = %23
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 2
  %46 = icmp sge i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %138

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_check_condition(%struct.ieee80211_hw* %49, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @READ_NEXT_PAIR(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %78, %57
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 57005
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 52719
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 52685
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 2
  %75 = icmp slt i32 %72, %74
  br label %76

76:                                               ; preds = %71, %68, %65, %62
  %77 = phi i1 [ false, %68 ], [ false, %65 ], [ false, %62 ], [ %75, %71 ]
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @READ_NEXT_PAIR(i32 %79, i32 %80, i32 %81)
  br label %62

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %84, 2
  store i32 %85, i32* %5, align 4
  br label %133

86:                                               ; preds = %48
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @READ_NEXT_PAIR(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %107, %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 57005
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 52719
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 52685
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 2
  %104 = icmp slt i32 %101, %103
  br label %105

105:                                              ; preds = %100, %97, %94, %91
  %106 = phi i1 [ false, %97 ], [ false, %94 ], [ false, %91 ], [ %104, %100 ]
  br i1 %106, label %107, label %116

107:                                              ; preds = %105
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @_rtl92ee_config_bb_reg(%struct.ieee80211_hw* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @READ_NEXT_PAIR(i32 %112, i32 %113, i32 %114)
  br label %91

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %127, %116
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 57005
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 2
  %124 = icmp slt i32 %121, %123
  br label %125

125:                                              ; preds = %120, %117
  %126 = phi i1 [ false, %117 ], [ %124, %120 ]
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @READ_NEXT_PAIR(i32 %128, i32 %129, i32 %130)
  br label %117

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %83
  br label %134

134:                                              ; preds = %133, %37
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %5, align 4
  br label %19

138:                                              ; preds = %47, %19
  br label %304

139:                                              ; preds = %2
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %303

143:                                              ; preds = %139
  %144 = load i32, i32* @RTL8192EE_AGC_TAB_ARRAY_LEN, align 4
  store i32 %144, i32* %7, align 4
  %145 = load i32*, i32** @RTL8192EE_AGC_TAB_ARRAY, align 8
  store i32* %145, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %299, %143
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %302

150:                                              ; preds = %146
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %9, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ult i32 %162, -842150451
  br i1 %163, label %164, label %180

164:                                              ; preds = %150
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @MASKDWORD, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %165, i32 %170, i32 %171, i32 %177)
  %179 = call i32 @udelay(i32 1)
  br label %299

180:                                              ; preds = %150
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %7, align 4
  %183 = sub nsw i32 %182, 2
  %184 = icmp sge i32 %181, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %302

186:                                              ; preds = %180
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @_check_condition(%struct.ieee80211_hw* %187, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %224, label %195

195:                                              ; preds = %186
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @READ_NEXT_PAIR(i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %216, %195
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 57005
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 52719
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 52685
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %7, align 4
  %212 = sub nsw i32 %211, 2
  %213 = icmp slt i32 %210, %212
  br label %214

214:                                              ; preds = %209, %206, %203, %200
  %215 = phi i1 [ false, %206 ], [ false, %203 ], [ false, %200 ], [ %213, %209 ]
  br i1 %215, label %216, label %221

216:                                              ; preds = %214
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @READ_NEXT_PAIR(i32 %217, i32 %218, i32 %219)
  br label %200

221:                                              ; preds = %214
  %222 = load i32, i32* %5, align 4
  %223 = sub nsw i32 %222, 2
  store i32 %223, i32* %5, align 4
  br label %282

224:                                              ; preds = %186
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %5, align 4
  %228 = call i32 @READ_NEXT_PAIR(i32 %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %245, %224
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 57005
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 52719
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 52685
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* %7, align 4
  %241 = sub nsw i32 %240, 2
  %242 = icmp slt i32 %239, %241
  br label %243

243:                                              ; preds = %238, %235, %232, %229
  %244 = phi i1 [ false, %235 ], [ false, %232 ], [ false, %229 ], [ %242, %238 ]
  br i1 %244, label %245, label %265

245:                                              ; preds = %243
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @MASKDWORD, align 4
  %253 = load i32*, i32** %6, align 8
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %246, i32 %251, i32 %252, i32 %258)
  %260 = call i32 @udelay(i32 1)
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @READ_NEXT_PAIR(i32 %261, i32 %262, i32 %263)
  br label %229

265:                                              ; preds = %243
  br label %266

266:                                              ; preds = %276, %265
  %267 = load i32, i32* %10, align 4
  %268 = icmp ne i32 %267, 57005
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = load i32, i32* %5, align 4
  %271 = load i32, i32* %7, align 4
  %272 = sub nsw i32 %271, 2
  %273 = icmp slt i32 %270, %272
  br label %274

274:                                              ; preds = %269, %266
  %275 = phi i1 [ false, %266 ], [ %273, %269 ]
  br i1 %275, label %276, label %281

276:                                              ; preds = %274
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %5, align 4
  %280 = call i32 @READ_NEXT_PAIR(i32 %277, i32 %278, i32 %279)
  br label %266

281:                                              ; preds = %274
  br label %282

282:                                              ; preds = %281, %221
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %285 = load i32, i32* @COMP_INIT, align 4
  %286 = load i32, i32* @DBG_TRACE, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @RT_TRACE(%struct.rtl_priv* %284, i32 %285, i32 %286, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %291, i32 %297)
  br label %299

299:                                              ; preds = %283, %164
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %300, 2
  store i32 %301, i32* %5, align 4
  br label %146

302:                                              ; preds = %185, %146
  br label %303

303:                                              ; preds = %302, %139
  br label %304

304:                                              ; preds = %303, %138
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ee_config_bb_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_check_condition(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @READ_NEXT_PAIR(i32, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
