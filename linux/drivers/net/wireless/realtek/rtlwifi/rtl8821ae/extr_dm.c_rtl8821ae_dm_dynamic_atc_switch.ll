; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_dynamic_atc_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_dynamic_atc_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_dm = type { i64, i32, i32*, i64, i64, i32, i32, i32, i32 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@ATC_STATUS_OFF = common dso_local global i64 0, align 8
@RFC_AREA = common dso_local global i32 0, align 4
@ATC_STATUS_ON = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"No link!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"atc_status = %d\0A\00", align 1
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@REG_MAC_PHY_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"crystal_cap = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"packet counter doesn't change\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"packet counter = %d\0A\00", align 1
@RF_1T1R = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"cfo_khz_a = %dkHz, cfo_khz_b = %dkHz, cfo_ave = %dkHz\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"first large CFO hit\0A\00", align 1
@CFO_THRESHOLD_XTAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Dynamic threshold = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Crystal cap = 0x%x, Crystal cap offset = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"New crystal cap = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8821ae_dm_dynamic_atc_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_dynamic_atc_switch(%struct.ieee80211_hw* %0) #0 {
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
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAC80211_LINKED, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %103

23:                                               ; preds = %1
  %24 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATC_STATUS_OFF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = load i32, i32* @RFC_AREA, align 4
  %32 = call i32 @BIT(i32 14)
  %33 = load i32, i32* @ATC_STATUS_ON, align 4
  %34 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @ATC_STATUS_ON, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %38 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %29, %23
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = load i32, i32* @COMP_DIG, align 4
  %42 = load i32, i32* @DBG_LOUD, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* @COMP_DIG, align 4
  %46 = load i32, i32* @DBG_LOUD, align 4
  %47 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %48 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %39
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 63
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 63
  store i32 %71, i32* %5, align 4
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %59
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 %82, 6
  %84 = or i32 %81, %83
  %85 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %79, i32 %80, i32 2146959360, i32 %84)
  br label %94

86:                                               ; preds = %59
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %88 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = shl i32 %90, 6
  %92 = or i32 %89, %91
  %93 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %87, i32 %88, i32 16773120, i32 %92)
  br label %94

94:                                               ; preds = %86, %78
  br label %95

95:                                               ; preds = %94, %39
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_DIG, align 4
  %98 = load i32, i32* @DBG_LOUD, align 4
  %99 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %100 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %356

103:                                              ; preds = %1
  %104 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %105 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 3125
  %110 = sdiv i32 %109, 1280
  store i32 %110, i32* %7, align 4
  %111 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %112 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 3125
  %117 = sdiv i32 %116, 1280
  store i32 %117, i32* %8, align 4
  %118 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %119 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %123 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %103
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %128 = load i32, i32* @COMP_DIG, align 4
  %129 = load i32, i32* @DBG_LOUD, align 4
  %130 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %127, i32 %128, i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %356

131:                                              ; preds = %103
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %134 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %136 = load i32, i32* @COMP_DIG, align 4
  %137 = load i32, i32* @DBG_LOUD, align 4
  %138 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %139 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %140)
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %143 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @RF_1T1R, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %131
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %9, align 4
  br label %155

150:                                              ; preds = %131
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %151, %152
  %154 = ashr i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %150, %148
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = load i32, i32* @COMP_DIG, align 4
  %158 = load i32, i32* @DBG_LOUD, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %160, i32 %161)
  %163 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %164 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %155
  %169 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %170 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sub nsw i32 %171, %172
  br label %180

174:                                              ; preds = %155
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %177 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %175, %178
  br label %180

180:                                              ; preds = %174, %168
  %181 = phi i32 [ %173, %168 ], [ %179, %174 ]
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp sgt i32 %182, 20
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %186 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %191 = load i32, i32* @COMP_DIG, align 4
  %192 = load i32, i32* @DBG_LOUD, align 4
  %193 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %194 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %195 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %194, i32 0, i32 6
  store i32 1, i32* %195, align 4
  br label %356

196:                                              ; preds = %184, %180
  %197 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %198 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %197, i32 0, i32 6
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %202 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %205 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 0, %206
  %208 = icmp sge i32 %203, %207
  br i1 %208, label %209, label %238

209:                                              ; preds = %199
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %212 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 8
  %214 = icmp sle i32 %210, %213
  br i1 %214, label %215, label %238

215:                                              ; preds = %209
  %216 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %217 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %238

220:                                              ; preds = %215
  %221 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %222 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %220
  %227 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %228 = add nsw i32 %227, 10
  %229 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %230 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 8
  %231 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %232 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %231, i32 0, i32 8
  store i32 1, i32* %232, align 4
  br label %237

233:                                              ; preds = %220
  %234 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %235 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %236 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %235, i32 0, i32 7
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %233, %226
  br label %238

238:                                              ; preds = %237, %215, %209, %199
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %240 = load i32, i32* @COMP_DIG, align 4
  %241 = load i32, i32* @DBG_LOUD, align 4
  %242 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %243 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %9, align 4
  %247 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %248 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 8
  %250 = icmp sgt i32 %246, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %238
  %252 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %253 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %254, 63
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %259 = sub nsw i32 %257, %258
  %260 = ashr i32 %259, 2
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %10, align 4
  br label %283

262:                                              ; preds = %251, %238
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %265 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sub nsw i32 0, %267
  %269 = icmp slt i32 %263, %268
  br i1 %269, label %270, label %282

270:                                              ; preds = %262
  %271 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %272 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %270
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @CFO_THRESHOLD_XTAL, align 4
  %279 = add nsw i32 %277, %278
  %280 = ashr i32 %279, 2
  %281 = sub nsw i32 %280, 1
  store i32 %281, i32* %10, align 4
  br label %282

282:                                              ; preds = %276, %270, %262
  br label %283

283:                                              ; preds = %282, %256
  %284 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %285 = load i32, i32* @COMP_DIG, align 4
  %286 = load i32, i32* @DBG_LOUD, align 4
  %287 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %288 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %284, i32 %285, i32 %286, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %289, i32 %290)
  %292 = load i32, i32* %10, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %355

294:                                              ; preds = %283
  %295 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %296 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %295, i32 0, i32 8
  store i32 0, i32* %296, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %299 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %300, %297
  store i32 %301, i32* %299, align 8
  %302 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %303 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = icmp sgt i32 %304, 63
  br i1 %305, label %306, label %309

306:                                              ; preds = %294
  %307 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %308 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %307, i32 0, i32 1
  store i32 63, i32* %308, align 8
  br label %318

309:                                              ; preds = %294
  %310 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %311 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %316 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %315, i32 0, i32 1
  store i32 0, i32* %316, align 8
  br label %317

317:                                              ; preds = %314, %309
  br label %318

318:                                              ; preds = %317, %306
  %319 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %320 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = and i32 %321, 63
  store i32 %322, i32* %5, align 4
  %323 = load i32, i32* %5, align 4
  %324 = and i32 %323, 63
  store i32 %324, i32* %5, align 4
  %325 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %326 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %339

331:                                              ; preds = %318
  %332 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %333 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %334 = load i32, i32* %5, align 4
  %335 = load i32, i32* %5, align 4
  %336 = shl i32 %335, 6
  %337 = or i32 %334, %336
  %338 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %332, i32 %333, i32 2146959360, i32 %337)
  br label %347

339:                                              ; preds = %318
  %340 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %341 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* %5, align 4
  %344 = shl i32 %343, 6
  %345 = or i32 %342, %344
  %346 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %340, i32 %341, i32 16773120, i32 %345)
  br label %347

347:                                              ; preds = %339, %331
  %348 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %349 = load i32, i32* @COMP_DIG, align 4
  %350 = load i32, i32* @DBG_LOUD, align 4
  %351 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %352 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %348, i32 %349, i32 %350, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %353)
  br label %355

355:                                              ; preds = %347, %283
  br label %356

356:                                              ; preds = %126, %189, %355, %95
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
