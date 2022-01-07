; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RTL8192EE_RADIOA_ARRAY_LEN = common dso_local global i32 0, align 4
@RTL8192EE_RADIOA_ARRAY = common dso_local global i32* null, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Radio_A:RTL8192EE_RADIOA_ARRAY %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Radio No %x\0A\00", align 1
@RTL8192EE_RADIOB_ARRAY_LEN = common dso_local global i32 0, align 4
@RTL8192EE_RADIOB_ARRAY = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Radio_A:RTL8192EE_RADIOB_ARRAY %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ee_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %281 [
    i32 131, label %14
    i32 130, label %147
    i32 129, label %280
    i32 128, label %280
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @RTL8192EE_RADIOA_ARRAY_LEN, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** @RTL8192EE_RADIOA_ARRAY, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = load i32, i32* @COMP_INIT, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = load i32, i32* @COMP_INIT, align 4
  %24 = load i32, i32* @DBG_LOUD, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %143, %14
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %146

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %43, -842150451
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @_rtl92ee_config_rf_radio_a(%struct.ieee80211_hw* %46, i32 %47, i32 %48)
  br label %143

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 2
  %54 = icmp sge i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %146

56:                                               ; preds = %50
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @_check_condition(%struct.ieee80211_hw* %57, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @READ_NEXT_RF_PAIR(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %86, %65
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 57005
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 52719
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 52685
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 2
  %83 = icmp slt i32 %80, %82
  br label %84

84:                                               ; preds = %79, %76, %73, %70
  %85 = phi i1 [ false, %76 ], [ false, %73 ], [ false, %70 ], [ %83, %79 ]
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @READ_NEXT_RF_PAIR(i32 %87, i32 %88, i32 %89)
  br label %70

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 2
  store i32 %93, i32* %6, align 4
  br label %141

94:                                               ; preds = %56
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @READ_NEXT_RF_PAIR(i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %115, %94
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 57005
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 52719
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 52685
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, 2
  %112 = icmp slt i32 %109, %111
  br label %113

113:                                              ; preds = %108, %105, %102, %99
  %114 = phi i1 [ false, %105 ], [ false, %102 ], [ false, %99 ], [ %112, %108 ]
  br i1 %114, label %115, label %124

115:                                              ; preds = %113
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @_rtl92ee_config_rf_radio_a(%struct.ieee80211_hw* %116, i32 %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @READ_NEXT_RF_PAIR(i32 %120, i32 %121, i32 %122)
  br label %99

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 57005
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, 2
  %132 = icmp slt i32 %129, %131
  br label %133

133:                                              ; preds = %128, %125
  %134 = phi i1 [ false, %125 ], [ %132, %128 ]
  br i1 %134, label %135, label %140

135:                                              ; preds = %133
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @READ_NEXT_RF_PAIR(i32 %136, i32 %137, i32 %138)
  br label %125

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %91
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %45
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %6, align 4
  br label %27

146:                                              ; preds = %55, %27
  br label %281

147:                                              ; preds = %2
  %148 = load i32, i32* @RTL8192EE_RADIOB_ARRAY_LEN, align 4
  store i32 %148, i32* %8, align 4
  %149 = load i32*, i32** @RTL8192EE_RADIOB_ARRAY, align 8
  store i32* %149, i32** %7, align 8
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %151 = load i32, i32* @COMP_INIT, align 4
  %152 = load i32, i32* @DBG_LOUD, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @RT_TRACE(%struct.rtl_priv* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %156 = load i32, i32* @COMP_INIT, align 4
  %157 = load i32, i32* @DBG_LOUD, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @RT_TRACE(%struct.rtl_priv* %155, i32 %156, i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %276, %147
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %279

164:                                              ; preds = %160
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %9, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ult i32 %176, -842150451
  br i1 %177, label %178, label %183

178:                                              ; preds = %164
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @_rtl92ee_config_rf_radio_b(%struct.ieee80211_hw* %179, i32 %180, i32 %181)
  br label %276

183:                                              ; preds = %164
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 %185, 2
  %187 = icmp sge i32 %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %279

189:                                              ; preds = %183
  %190 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @_check_condition(%struct.ieee80211_hw* %190, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %227, label %198

198:                                              ; preds = %189
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @READ_NEXT_RF_PAIR(i32 %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %219, %198
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 57005
  br i1 %205, label %206, label %217

206:                                              ; preds = %203
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 52719
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 52685
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %8, align 4
  %215 = sub nsw i32 %214, 2
  %216 = icmp slt i32 %213, %215
  br label %217

217:                                              ; preds = %212, %209, %206, %203
  %218 = phi i1 [ false, %209 ], [ false, %206 ], [ false, %203 ], [ %216, %212 ]
  br i1 %218, label %219, label %224

219:                                              ; preds = %217
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @READ_NEXT_RF_PAIR(i32 %220, i32 %221, i32 %222)
  br label %203

224:                                              ; preds = %217
  %225 = load i32, i32* %6, align 4
  %226 = sub nsw i32 %225, 2
  store i32 %226, i32* %6, align 4
  br label %274

227:                                              ; preds = %189
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @READ_NEXT_RF_PAIR(i32 %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %248, %227
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 57005
  br i1 %234, label %235, label %246

235:                                              ; preds = %232
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 52719
  br i1 %237, label %238, label %246

238:                                              ; preds = %235
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 52685
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %8, align 4
  %244 = sub nsw i32 %243, 2
  %245 = icmp slt i32 %242, %244
  br label %246

246:                                              ; preds = %241, %238, %235, %232
  %247 = phi i1 [ false, %238 ], [ false, %235 ], [ false, %232 ], [ %245, %241 ]
  br i1 %247, label %248, label %257

248:                                              ; preds = %246
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @_rtl92ee_config_rf_radio_b(%struct.ieee80211_hw* %249, i32 %250, i32 %251)
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @READ_NEXT_RF_PAIR(i32 %253, i32 %254, i32 %255)
  br label %232

257:                                              ; preds = %246
  br label %258

258:                                              ; preds = %268, %257
  %259 = load i32, i32* %10, align 4
  %260 = icmp ne i32 %259, 57005
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* %8, align 4
  %264 = sub nsw i32 %263, 2
  %265 = icmp slt i32 %262, %264
  br label %266

266:                                              ; preds = %261, %258
  %267 = phi i1 [ false, %258 ], [ %265, %261 ]
  br i1 %267, label %268, label %273

268:                                              ; preds = %266
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @READ_NEXT_RF_PAIR(i32 %269, i32 %270, i32 %271)
  br label %258

273:                                              ; preds = %266
  br label %274

274:                                              ; preds = %273, %224
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275, %178
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 2
  store i32 %278, i32* %6, align 4
  br label %160

279:                                              ; preds = %188, %160
  br label %281

280:                                              ; preds = %2, %2
  br label %281

281:                                              ; preds = %2, %280, %279, %146
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @_rtl92ee_config_rf_radio_a(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_check_condition(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @READ_NEXT_RF_PAIR(i32, i32, i32) #1

declare dso_local i32 @_rtl92ee_config_rf_radio_b(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
