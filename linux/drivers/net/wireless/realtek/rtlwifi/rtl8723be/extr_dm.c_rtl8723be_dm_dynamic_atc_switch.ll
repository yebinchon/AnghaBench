; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_dynamic_atc_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_dm_dynamic_atc_switch.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723be_dm_dynamic_atc_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_dm_dynamic_atc_switch(%struct.ieee80211_hw* %0) #0 {
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
  br label %324

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
  br label %324

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
  br label %324

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
  br label %324

163:                                              ; preds = %155, %151
  %164 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %165 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %164, i32 0, i32 6
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %169 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %172 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 0, %173
  %175 = icmp sge i32 %170, %174
  br i1 %175, label %176, label %205

176:                                              ; preds = %166
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %179 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = icmp sle i32 %177, %180
  br i1 %181, label %182, label %205

182:                                              ; preds = %176
  %183 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %184 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %182
  %188 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %189 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %187
  %194 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %195 = add nsw i32 %194, 10
  %196 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %197 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %196, i32 0, i32 7
  store i32 %195, i32* %197, align 8
  %198 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %199 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %198, i32 0, i32 8
  store i32 1, i32* %199, align 4
  br label %204

200:                                              ; preds = %187
  %201 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %202 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %203 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %193
  br label %205

205:                                              ; preds = %204, %182, %176, %166
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %208 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = icmp sgt i32 %206, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %205
  %212 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %213 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %214, 63
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %219 = sub nsw i32 %217, %218
  %220 = ashr i32 %219, 1
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %10, align 4
  br label %243

222:                                              ; preds = %211, %205
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %225 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 0, %227
  %229 = icmp slt i32 %223, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %222
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %232 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %230
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %239 = add nsw i32 %237, %238
  %240 = ashr i32 %239, 1
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %236, %230, %222
  br label %243

243:                                              ; preds = %242, %216
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %282

246:                                              ; preds = %243
  %247 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %248 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %247, i32 0, i32 8
  store i32 0, i32* %248, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %251 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %255 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp sgt i32 %256, 63
  br i1 %257, label %258, label %261

258:                                              ; preds = %246
  %259 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %260 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %259, i32 0, i32 1
  store i32 63, i32* %260, align 4
  br label %270

261:                                              ; preds = %246
  %262 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %263 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %268 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %267, i32 0, i32 1
  store i32 0, i32* %268, align 4
  br label %269

269:                                              ; preds = %266, %261
  br label %270

270:                                              ; preds = %269, %258
  %271 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %272 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 63
  store i32 %274, i32* %5, align 4
  %275 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %276 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %5, align 4
  %279 = shl i32 %278, 6
  %280 = or i32 %277, %279
  %281 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %275, i32 %276, i32 16773120, i32 %280)
  br label %282

282:                                              ; preds = %270, %243
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @CFO_THRESHOLD_ATC, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %307

286:                                              ; preds = %282
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* @CFO_THRESHOLD_ATC, align 4
  %289 = sub nsw i32 0, %288
  %290 = icmp sgt i32 %287, %289
  br i1 %290, label %291, label %307

291:                                              ; preds = %286
  %292 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %293 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @ATC_STATUS_ON, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %306

297:                                              ; preds = %291
  %298 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %299 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %300 = call i32 @BIT(i32 11)
  %301 = load i32, i32* @ATC_STATUS_OFF, align 4
  %302 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %298, i32 %299, i32 %300, i32 %301)
  %303 = load i32, i32* @ATC_STATUS_OFF, align 4
  %304 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %305 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 8
  br label %306

306:                                              ; preds = %297, %291
  br label %323

307:                                              ; preds = %286, %282
  %308 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %309 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @ATC_STATUS_OFF, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %307
  %314 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %315 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %316 = call i32 @BIT(i32 11)
  %317 = load i32, i32* @ATC_STATUS_ON, align 4
  %318 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %314, i32 %315, i32 %316, i32 %317)
  %319 = load i32, i32* @ATC_STATUS_ON, align 4
  %320 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %321 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %313, %307
  br label %323

323:                                              ; preds = %322, %306
  br label %324

324:                                              ; preds = %58, %115, %160, %323, %91
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
