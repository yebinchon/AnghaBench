; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dynamic_atc_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dynamic_atc_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.rtl_priv*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (...)* }
%struct.TYPE_9__ = type { i64 }
%struct.rtl_dm = type { i32, i32, i32*, i64, i64, i32, i32, i32, i32 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@ATC_STATUS_OFF = common dso_local global i32 0, align 4
@ROFDM1_CFOTRACKING = common dso_local global i32 0, align 4
@ATC_STATUS_ON = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"odm_DynamicATCSwitch(): Disable CFO tracking for BT!!\0A\00", align 1
@REG_MAC_PHY_CTRL = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@CFO_THRESHOLD_XTAL = common dso_local global i32 0, align 4
@CFO_THRESHOLD_ATC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_dm_dynamic_atc_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_dynamic_atc_switch(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_dm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %3, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %15)
  store %struct.rtl_dm* %16, %struct.rtl_dm** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAC80211_LINKED, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %1
  %24 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATC_STATUS_OFF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %32 = call i32 @BIT(i32 11)
  %33 = load i32, i32* @ATC_STATUS_ON, align 4
  %34 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @ATC_STATUS_ON, align 4
  %36 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %37 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64 (...)*, i64 (...)** %44, align 8
  %46 = call i64 (...) %45()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %38
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32 (%struct.rtl_priv*)*, i32 (%struct.rtl_priv*)** %53, align 8
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = call i32 %54(%struct.rtl_priv* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i32, i32* @COMP_BT_COEXIST, align 4
  %61 = load i32, i32* @DBG_LOUD, align 4
  %62 = call i32 @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %323

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %66 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %64
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 63
  store i32 %83, i32* %5, align 4
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %85 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 %87, 6
  %89 = or i32 %86, %88
  %90 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 16773120, i32 %89)
  br label %91

91:                                               ; preds = %73, %64
  br label %323

92:                                               ; preds = %1
  %93 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %94 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 3125
  %99 = sdiv i32 %98, 1280
  store i32 %99, i32* %7, align 4
  %100 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %101 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 3125
  %106 = sdiv i32 %105, 1280
  store i32 %106, i32* %8, align 4
  %107 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %108 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %112 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %92
  br label %323

116:                                              ; preds = %92
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %119 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RF_1T1R, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %9, align 4
  br label %133

128:                                              ; preds = %116
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %129, %130
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %128, %126
  %134 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %135 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %141 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %142, %143
  br label %151

145:                                              ; preds = %133
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %148 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %146, %149
  br label %151

151:                                              ; preds = %145, %139
  %152 = phi i32 [ %144, %139 ], [ %150, %145 ]
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp sgt i32 %153, 20
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %157 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %162 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %161, i32 0, i32 6
  store i32 1, i32* %162, align 4
  br label %323

163:                                              ; preds = %155, %151
  %164 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %165 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %164, i32 0, i32 6
  store i32 0, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %171 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 0, %172
  %174 = icmp sge i32 %169, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %163
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %178 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = icmp sle i32 %176, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %175
  %182 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %183 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %181
  %187 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %188 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %194 = add nsw i32 %193, 10
  %195 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %196 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 8
  %197 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %198 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %197, i32 0, i32 8
  store i32 1, i32* %198, align 4
  br label %203

199:                                              ; preds = %186
  %200 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %201 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %202 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %192
  br label %204

204:                                              ; preds = %203, %181, %175, %163
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %207 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 8
  %209 = icmp sgt i32 %205, %208
  br i1 %209, label %210, label %221

210:                                              ; preds = %204
  %211 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %212 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %213, 63
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %218 = sub nsw i32 %216, %217
  %219 = ashr i32 %218, 2
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %242

221:                                              ; preds = %210, %204
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %224 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 0, %226
  %228 = icmp slt i32 %222, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %221
  %230 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %231 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %238 = add nsw i32 %236, %237
  %239 = ashr i32 %238, 2
  %240 = sub nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  br label %241

241:                                              ; preds = %235, %229, %221
  br label %242

242:                                              ; preds = %241, %215
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %281

245:                                              ; preds = %242
  %246 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %247 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %246, i32 0, i32 8
  store i32 0, i32* %247, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %250 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, %248
  store i32 %252, i32* %250, align 4
  %253 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %254 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 63
  br i1 %256, label %257, label %260

257:                                              ; preds = %245
  %258 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %259 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %258, i32 0, i32 1
  store i32 63, i32* %259, align 4
  br label %269

260:                                              ; preds = %245
  %261 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %262 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %267 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %266, i32 0, i32 1
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %265, %260
  br label %269

269:                                              ; preds = %268, %257
  %270 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %271 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 63
  store i32 %273, i32* %5, align 4
  %274 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %275 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* %5, align 4
  %278 = shl i32 %277, 6
  %279 = or i32 %276, %278
  %280 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %274, i32 %275, i32 16773120, i32 %279)
  br label %281

281:                                              ; preds = %269, %242
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @CFO_THRESHOLD_ATC, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %306

285:                                              ; preds = %281
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* @CFO_THRESHOLD_ATC, align 4
  %288 = sub nsw i32 0, %287
  %289 = icmp sgt i32 %286, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %285
  %291 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %292 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @ATC_STATUS_ON, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %290
  %297 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %298 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %299 = call i32 @BIT(i32 11)
  %300 = load i32, i32* @ATC_STATUS_OFF, align 4
  %301 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %297, i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* @ATC_STATUS_OFF, align 4
  %303 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %304 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  br label %305

305:                                              ; preds = %296, %290
  br label %322

306:                                              ; preds = %285, %281
  %307 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %308 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @ATC_STATUS_OFF, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %306
  %313 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %314 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %315 = call i32 @BIT(i32 11)
  %316 = load i32, i32* @ATC_STATUS_ON, align 4
  %317 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %313, i32 %314, i32 %315, i32 %316)
  %318 = load i32, i32* @ATC_STATUS_ON, align 4
  %319 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %320 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  br label %321

321:                                              ; preds = %312, %306
  br label %322

322:                                              ; preds = %321, %305
  br label %323

323:                                              ; preds = %58, %115, %160, %322, %91
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
