; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_led.c_SwLedBlink1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_led.c_SwLedBlink1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { i64 }
%struct.mlme_priv = type { i32 }

@RTW_LED_ON = common dso_local global i64 0, align 8
@_module_rtl8712_led_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Blinktimes (%d): turn on\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Blinktimes (%d): turn off\0A\00", align 1
@rf_on = common dso_local global i64 0, align 8
@RTW_LED_OFF = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_NO_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"CurrLedState %d\0A\00", align 1
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink1(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %6 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %7 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %6, i32 0, i32 10
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_priv* %10, %struct.mlme_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %12 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RTW_LED_ON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %19 = call i32 @sw_led_on(%struct.adapter* %17, %struct.LED_871x* %18)
  %20 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %21 = load i32, i32* @_drv_info_, align 4
  %22 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %23 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @RT_TRACE(i32 %20, i32 %21, i8* %26)
  br label %40

28:                                               ; preds = %1
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %31 = call i32 @sw_led_off(%struct.adapter* %29, %struct.LED_871x* %30)
  %32 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %33 = load i32, i32* @_drv_info_, align 4
  %34 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %35 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @RT_TRACE(i32 %32, i32 %33, i8* %38)
  br label %40

40:                                               ; preds = %28, %16
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @rf_on, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %50 = call i32 @sw_led_off(%struct.adapter* %48, %struct.LED_871x* %49)
  %51 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %52 = call i32 @ResetLedStatus(%struct.LED_871x* %51)
  br label %422

53:                                               ; preds = %40
  %54 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %55 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %421 [
    i32 131, label %57
    i32 133, label %79
    i32 132, label %101
    i32 130, label %219
    i32 129, label %339
    i32 128, label %361
  ]

57:                                               ; preds = %53
  %58 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %59 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** @RTW_LED_OFF, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %66 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %71

67:                                               ; preds = %57
  %68 = load i64, i64* @RTW_LED_ON, align 8
  %69 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %70 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %73 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %72, i32 0, i32 7
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %76 = call i64 @msecs_to_jiffies(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @mod_timer(i32* %73, i64 %77)
  br label %422

79:                                               ; preds = %53
  %80 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %81 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** @RTW_LED_OFF, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %88 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %93

89:                                               ; preds = %79
  %90 = load i64, i64* @RTW_LED_ON, align 8
  %91 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %92 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %95 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %94, i32 0, i32 7
  %96 = load i64, i64* @jiffies, align 8
  %97 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %98 = call i64 @msecs_to_jiffies(i32 %97)
  %99 = add nsw i64 %96, %98
  %100 = call i32 @mod_timer(i32* %95, i64 %99)
  br label %422

101:                                              ; preds = %53
  %102 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %103 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %107 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %101
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %196

114:                                              ; preds = %111
  %115 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %116 = load i32, i32* @_FW_LINKED, align 4
  %117 = call i32 @check_fwstate(%struct.mlme_priv* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %153

119:                                              ; preds = %114
  %120 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %121 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %120, i32 0, i32 2
  store i32 1, i32* %121, align 4
  %122 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %123 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %122, i32 0, i32 1
  store i32 133, i32* %123, align 8
  %124 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %125 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load i8*, i8** @RTW_LED_OFF, align 8
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %132 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %137

133:                                              ; preds = %119
  %134 = load i64, i64* @RTW_LED_ON, align 8
  %135 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %139 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %138, i32 0, i32 7
  %140 = load i64, i64* @jiffies, align 8
  %141 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %142 = call i64 @msecs_to_jiffies(i32 %141)
  %143 = add nsw i64 %140, %142
  %144 = call i32 @mod_timer(i32* %139, i64 %143)
  %145 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %146 = load i32, i32* @_drv_info_, align 4
  %147 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %148 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 @RT_TRACE(i32 %145, i32 %146, i8* %151)
  br label %193

153:                                              ; preds = %114
  %154 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %155 = load i32, i32* @_FW_LINKED, align 4
  %156 = call i32 @check_fwstate(%struct.mlme_priv* %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %192, label %158

158:                                              ; preds = %153
  %159 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %160 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %159, i32 0, i32 3
  store i32 1, i32* %160, align 8
  %161 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %162 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %161, i32 0, i32 1
  store i32 131, i32* %162, align 8
  %163 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %164 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %158
  %168 = load i8*, i8** @RTW_LED_OFF, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %171 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  br label %176

172:                                              ; preds = %158
  %173 = load i64, i64* @RTW_LED_ON, align 8
  %174 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %175 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %172, %167
  %177 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %178 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %177, i32 0, i32 7
  %179 = load i64, i64* @jiffies, align 8
  %180 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %181 = call i64 @msecs_to_jiffies(i32 %180)
  %182 = add nsw i64 %179, %181
  %183 = call i32 @mod_timer(i32* %178, i64 %182)
  %184 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %185 = load i32, i32* @_drv_info_, align 4
  %186 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %187 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = call i32 @RT_TRACE(i32 %184, i32 %185, i8* %190)
  br label %192

192:                                              ; preds = %176, %153
  br label %193

193:                                              ; preds = %192, %137
  %194 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %195 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %194, i32 0, i32 4
  store i32 0, i32* %195, align 4
  br label %218

196:                                              ; preds = %111
  %197 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %198 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i8*, i8** @RTW_LED_OFF, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %205 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %210

206:                                              ; preds = %196
  %207 = load i64, i64* @RTW_LED_ON, align 8
  %208 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %209 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %206, %201
  %211 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %212 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %211, i32 0, i32 7
  %213 = load i64, i64* @jiffies, align 8
  %214 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %215 = call i64 @msecs_to_jiffies(i32 %214)
  %216 = add nsw i64 %213, %215
  %217 = call i32 @mod_timer(i32* %212, i64 %216)
  br label %218

218:                                              ; preds = %210, %193
  br label %422

219:                                              ; preds = %53
  %220 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %221 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %221, align 8
  %224 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %225 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  store i32 1, i32* %5, align 4
  br label %229

229:                                              ; preds = %228, %219
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %316

232:                                              ; preds = %229
  %233 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %234 = load i32, i32* @_FW_LINKED, align 4
  %235 = call i32 @check_fwstate(%struct.mlme_priv* %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %232
  %238 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %239 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %238, i32 0, i32 2
  store i32 1, i32* %239, align 4
  %240 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %241 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %240, i32 0, i32 1
  store i32 133, i32* %241, align 8
  %242 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %243 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %237
  %247 = load i8*, i8** @RTW_LED_OFF, align 8
  %248 = ptrtoint i8* %247 to i64
  %249 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %250 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  br label %255

251:                                              ; preds = %237
  %252 = load i64, i64* @RTW_LED_ON, align 8
  %253 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %254 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %251, %246
  %256 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %257 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %256, i32 0, i32 7
  %258 = load i64, i64* @jiffies, align 8
  %259 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %260 = call i64 @msecs_to_jiffies(i32 %259)
  %261 = add nsw i64 %258, %260
  %262 = call i32 @mod_timer(i32* %257, i64 %261)
  %263 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %264 = load i32, i32* @_drv_info_, align 4
  %265 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %266 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = inttoptr i64 %268 to i8*
  %270 = call i32 @RT_TRACE(i32 %263, i32 %264, i8* %269)
  br label %311

271:                                              ; preds = %232
  %272 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %273 = load i32, i32* @_FW_LINKED, align 4
  %274 = call i32 @check_fwstate(%struct.mlme_priv* %272, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %310, label %276

276:                                              ; preds = %271
  %277 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %278 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %277, i32 0, i32 3
  store i32 1, i32* %278, align 8
  %279 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %280 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %279, i32 0, i32 1
  store i32 131, i32* %280, align 8
  %281 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %282 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %276
  %286 = load i8*, i8** @RTW_LED_OFF, align 8
  %287 = ptrtoint i8* %286 to i64
  %288 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %289 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  br label %294

290:                                              ; preds = %276
  %291 = load i64, i64* @RTW_LED_ON, align 8
  %292 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %293 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %292, i32 0, i32 0
  store i64 %291, i64* %293, align 8
  br label %294

294:                                              ; preds = %290, %285
  %295 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %296 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %295, i32 0, i32 7
  %297 = load i64, i64* @jiffies, align 8
  %298 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %299 = call i64 @msecs_to_jiffies(i32 %298)
  %300 = add nsw i64 %297, %299
  %301 = call i32 @mod_timer(i32* %296, i64 %300)
  %302 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %303 = load i32, i32* @_drv_info_, align 4
  %304 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %305 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i8*
  %309 = call i32 @RT_TRACE(i32 %302, i32 %303, i8* %308)
  br label %310

310:                                              ; preds = %294, %271
  br label %311

311:                                              ; preds = %310, %255
  %312 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %313 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %312, i32 0, i32 9
  store i32 0, i32* %313, align 8
  %314 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %315 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %314, i32 0, i32 5
  store i32 0, i32* %315, align 8
  br label %338

316:                                              ; preds = %229
  %317 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %318 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %317, i32 0, i32 8
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load i8*, i8** @RTW_LED_OFF, align 8
  %323 = ptrtoint i8* %322 to i64
  %324 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %325 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %324, i32 0, i32 0
  store i64 %323, i64* %325, align 8
  br label %330

326:                                              ; preds = %316
  %327 = load i64, i64* @RTW_LED_ON, align 8
  %328 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %329 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %328, i32 0, i32 0
  store i64 %327, i64* %329, align 8
  br label %330

330:                                              ; preds = %326, %321
  %331 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %332 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %331, i32 0, i32 7
  %333 = load i64, i64* @jiffies, align 8
  %334 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %335 = call i64 @msecs_to_jiffies(i32 %334)
  %336 = add nsw i64 %333, %335
  %337 = call i32 @mod_timer(i32* %332, i64 %336)
  br label %338

338:                                              ; preds = %330, %311
  br label %422

339:                                              ; preds = %53
  %340 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %341 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %339
  %345 = load i8*, i8** @RTW_LED_OFF, align 8
  %346 = ptrtoint i8* %345 to i64
  %347 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %348 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %347, i32 0, i32 0
  store i64 %346, i64* %348, align 8
  br label %353

349:                                              ; preds = %339
  %350 = load i64, i64* @RTW_LED_ON, align 8
  %351 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %352 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %351, i32 0, i32 0
  store i64 %350, i64* %352, align 8
  br label %353

353:                                              ; preds = %349, %344
  %354 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %355 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %354, i32 0, i32 7
  %356 = load i64, i64* @jiffies, align 8
  %357 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %358 = call i64 @msecs_to_jiffies(i32 %357)
  %359 = add nsw i64 %356, %358
  %360 = call i32 @mod_timer(i32* %355, i64 %359)
  br label %422

361:                                              ; preds = %53
  %362 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %363 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @RTW_LED_ON, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  store i32 0, i32* %5, align 4
  br label %369

368:                                              ; preds = %361
  store i32 1, i32* %5, align 4
  br label %369

369:                                              ; preds = %368, %367
  %370 = load i32, i32* %5, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %408

372:                                              ; preds = %369
  %373 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %374 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %373, i32 0, i32 2
  store i32 1, i32* %374, align 4
  %375 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %376 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %375, i32 0, i32 1
  store i32 133, i32* %376, align 8
  %377 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %378 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %377, i32 0, i32 8
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %372
  %382 = load i8*, i8** @RTW_LED_OFF, align 8
  %383 = ptrtoint i8* %382 to i64
  %384 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %385 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %384, i32 0, i32 0
  store i64 %383, i64* %385, align 8
  br label %390

386:                                              ; preds = %372
  %387 = load i64, i64* @RTW_LED_ON, align 8
  %388 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %389 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %388, i32 0, i32 0
  store i64 %387, i64* %389, align 8
  br label %390

390:                                              ; preds = %386, %381
  %391 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %392 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %391, i32 0, i32 7
  %393 = load i64, i64* @jiffies, align 8
  %394 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %395 = call i64 @msecs_to_jiffies(i32 %394)
  %396 = add nsw i64 %393, %395
  %397 = call i32 @mod_timer(i32* %392, i64 %396)
  %398 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %399 = load i32, i32* @_drv_info_, align 4
  %400 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %401 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to i8*
  %405 = call i32 @RT_TRACE(i32 %398, i32 %399, i8* %404)
  %406 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %407 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %406, i32 0, i32 6
  store i32 0, i32* %407, align 4
  br label %420

408:                                              ; preds = %369
  %409 = load i8*, i8** @RTW_LED_OFF, align 8
  %410 = ptrtoint i8* %409 to i64
  %411 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %412 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %411, i32 0, i32 0
  store i64 %410, i64* %412, align 8
  %413 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %414 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %413, i32 0, i32 7
  %415 = load i64, i64* @jiffies, align 8
  %416 = load i32, i32* @LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA, align 4
  %417 = call i64 @msecs_to_jiffies(i32 %416)
  %418 = add nsw i64 %415, %417
  %419 = call i32 @mod_timer(i32* %414, i64 %418)
  br label %420

420:                                              ; preds = %408, %390
  br label %422

421:                                              ; preds = %53
  br label %422

422:                                              ; preds = %47, %421, %420, %353, %338, %218, %93, %71
  ret void
}

declare dso_local i32 @sw_led_on(%struct.adapter*, %struct.LED_871x*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @sw_led_off(%struct.adapter*, %struct.LED_871x*) #1

declare dso_local i32 @ResetLedStatus(%struct.LED_871x*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
