; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv, %struct.led_priv }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x }
%struct.LED_871x = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }

@LED_STATE_OFF = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_SCAN_BLINK = common dso_local global i8* null, align 8
@LED_BLINK_StartToBlink = common dso_local global i8* null, align 8
@LED_BLINK_SLOWLY_INTERVAL = common dso_local global i32 0, align 4
@LED_STATE_ON = common dso_local global i8* null, align 8
@LED_BLINK_NORMAL_INTERVAL = common dso_local global i32 0, align 4
@LED_BLINK_SLOWLY = common dso_local global i8* null, align 8
@LED_BLINK_NO_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_TXRX_BLINK = common dso_local global i8* null, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS = common dso_local global i8* null, align 8
@LED_BLINK_WPS_STOP = common dso_local global i8* null, align 8
@LED_BLINK_WPS_STOP_OVERLAP = common dso_local global i8* null, align 8
@LED_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @SwLedControlMode4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedControlMode4(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_priv*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.LED_871x*, align 8
  %8 = alloca %struct.LED_871x*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 1
  store %struct.led_priv* %10, %struct.led_priv** %5, align 8
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  store %struct.mlme_priv* %12, %struct.mlme_priv** %6, align 8
  %13 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %14 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %13, i32 0, i32 1
  store %struct.LED_871x* %14, %struct.LED_871x** %7, align 8
  %15 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %16 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %15, i32 0, i32 0
  store %struct.LED_871x* %16, %struct.LED_871x** %8, align 8
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %713 [
    i32 134, label %18
    i32 139, label %119
    i32 138, label %119
    i32 135, label %206
    i32 128, label %280
    i32 136, label %280
    i32 133, label %336
    i32 132, label %336
    i32 131, label %437
    i32 130, label %474
    i32 129, label %546
    i32 137, label %620
  ]

18:                                               ; preds = %2
  %19 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %20 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %25 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %27 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %26, i32 0, i32 8
  %28 = call i32 @del_timer(i32* %27)
  %29 = load i8*, i8** @LED_STATE_OFF, align 8
  %30 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %31 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @LED_STATE_OFF, align 8
  %33 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %34 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %33, i32 0, i32 9
  store i8* %32, i8** %34, align 8
  %35 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %36 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %41 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %40, i32 0, i32 8
  %42 = load i64, i64* @jiffies, align 8
  %43 = call i64 @msecs_to_jiffies(i32 0)
  %44 = add nsw i64 %42, %43
  %45 = call i32 @mod_timer(i32* %41, i64 %44)
  br label %46

46:                                               ; preds = %39, %23
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %49 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %118, label %52

52:                                               ; preds = %47
  %53 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %54 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %53, i32 0, i32 9
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %60 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %52
  br label %714

63:                                               ; preds = %58
  %64 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %65 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %70 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %69, i32 0, i32 8
  %71 = call i32 @del_timer(i32* %70)
  %72 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %73 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %76 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %81 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %80, i32 0, i32 8
  %82 = call i32 @del_timer(i32* %81)
  %83 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %84 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %83, i32 0, i32 3
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %87 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i8*, i8** @LED_BLINK_StartToBlink, align 8
  %89 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %90 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %89, i32 0, i32 9
  store i8* %88, i8** %90, align 8
  %91 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %92 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = load i8*, i8** @LED_STATE_OFF, align 8
  %97 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %98 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %100 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %99, i32 0, i32 8
  %101 = load i64, i64* @jiffies, align 8
  %102 = load i32, i32* @LED_BLINK_SLOWLY_INTERVAL, align 4
  %103 = call i64 @msecs_to_jiffies(i32 %102)
  %104 = add nsw i64 %101, %103
  %105 = call i32 @mod_timer(i32* %100, i64 %104)
  br label %117

106:                                              ; preds = %85
  %107 = load i8*, i8** @LED_STATE_ON, align 8
  %108 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %109 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %111 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %110, i32 0, i32 8
  %112 = load i64, i64* @jiffies, align 8
  %113 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %114 = call i64 @msecs_to_jiffies(i32 %113)
  %115 = add nsw i64 %112, %114
  %116 = call i32 @mod_timer(i32* %111, i64 %115)
  br label %117

117:                                              ; preds = %106, %95
  br label %118

118:                                              ; preds = %117, %47
  br label %714

119:                                              ; preds = %2, %2
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 139
  br i1 %121, label %122, label %152

122:                                              ; preds = %119
  %123 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %124 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %122
  %128 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %129 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %131 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %130, i32 0, i32 8
  %132 = call i32 @del_timer(i32* %131)
  %133 = load i8*, i8** @LED_STATE_OFF, align 8
  %134 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %135 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @LED_STATE_OFF, align 8
  %137 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %138 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %137, i32 0, i32 9
  store i8* %136, i8** %138, align 8
  %139 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %140 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %127
  %144 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %145 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %144, i32 0, i32 8
  %146 = load i64, i64* @jiffies, align 8
  %147 = call i64 @msecs_to_jiffies(i32 0)
  %148 = add nsw i64 %146, %147
  %149 = call i32 @mod_timer(i32* %145, i64 %148)
  br label %150

150:                                              ; preds = %143, %127
  br label %151

151:                                              ; preds = %150, %122
  br label %152

152:                                              ; preds = %151, %119
  %153 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %154 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %205, label %157

157:                                              ; preds = %152
  %158 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %159 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %158, i32 0, i32 9
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %157
  %164 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %165 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %157
  br label %714

168:                                              ; preds = %163
  %169 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %170 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %175 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %174, i32 0, i32 8
  %176 = call i32 @del_timer(i32* %175)
  %177 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %178 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %177, i32 0, i32 2
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %168
  %180 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %181 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %180, i32 0, i32 3
  store i32 1, i32* %181, align 4
  %182 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %183 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %184 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %183, i32 0, i32 9
  store i8* %182, i8** %184, align 8
  %185 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %186 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %179
  %190 = load i8*, i8** @LED_STATE_OFF, align 8
  %191 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %192 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %191, i32 0, i32 7
  store i8* %190, i8** %192, align 8
  br label %197

193:                                              ; preds = %179
  %194 = load i8*, i8** @LED_STATE_ON, align 8
  %195 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %196 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %195, i32 0, i32 7
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %189
  %198 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %199 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %198, i32 0, i32 8
  %200 = load i64, i64* @jiffies, align 8
  %201 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %202 = call i64 @msecs_to_jiffies(i32 %201)
  %203 = add nsw i64 %200, %202
  %204 = call i32 @mod_timer(i32* %199, i64 %203)
  br label %205

205:                                              ; preds = %197, %152
  br label %714

206:                                              ; preds = %2
  %207 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %208 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %214 = load i32, i32* @_FW_LINKED, align 4
  %215 = call i32 @check_fwstate(%struct.mlme_priv* %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %279

218:                                              ; preds = %212, %206
  %219 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %220 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %278, label %223

223:                                              ; preds = %218
  %224 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %225 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %714

228:                                              ; preds = %223
  %229 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %230 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %235 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %234, i32 0, i32 8
  %236 = call i32 @del_timer(i32* %235)
  %237 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %238 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %237, i32 0, i32 3
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %233, %228
  %240 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %241 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %246 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %245, i32 0, i32 8
  %247 = call i32 @del_timer(i32* %246)
  %248 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %249 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %248, i32 0, i32 2
  store i32 0, i32* %249, align 8
  br label %250

250:                                              ; preds = %244, %239
  %251 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %252 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %251, i32 0, i32 4
  store i32 1, i32* %252, align 8
  %253 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %254 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %255 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %254, i32 0, i32 9
  store i8* %253, i8** %255, align 8
  %256 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %257 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %256, i32 0, i32 5
  store i32 24, i32* %257, align 4
  %258 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %259 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %258, i32 0, i32 10
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %250
  %263 = load i8*, i8** @LED_STATE_OFF, align 8
  %264 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %265 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %264, i32 0, i32 7
  store i8* %263, i8** %265, align 8
  br label %270

266:                                              ; preds = %250
  %267 = load i8*, i8** @LED_STATE_ON, align 8
  %268 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %269 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %268, i32 0, i32 7
  store i8* %267, i8** %269, align 8
  br label %270

270:                                              ; preds = %266, %262
  %271 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %272 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %271, i32 0, i32 8
  %273 = load i64, i64* @jiffies, align 8
  %274 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %275 = call i64 @msecs_to_jiffies(i32 %274)
  %276 = add nsw i64 %273, %275
  %277 = call i32 @mod_timer(i32* %272, i64 %276)
  br label %278

278:                                              ; preds = %270, %218
  br label %279

279:                                              ; preds = %278, %217
  br label %714

280:                                              ; preds = %2, %2
  %281 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %282 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %335, label %285

285:                                              ; preds = %280
  %286 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %287 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %286, i32 0, i32 9
  %288 = load i8*, i8** %287, align 8
  %289 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %290 = icmp eq i8* %288, %289
  br i1 %290, label %295, label %291

291:                                              ; preds = %285
  %292 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %293 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %291, %285
  br label %714

296:                                              ; preds = %291
  %297 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %298 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %296
  %302 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %303 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %302, i32 0, i32 8
  %304 = call i32 @del_timer(i32* %303)
  %305 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %306 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %305, i32 0, i32 3
  store i32 0, i32* %306, align 4
  br label %307

307:                                              ; preds = %301, %296
  %308 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %309 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %308, i32 0, i32 2
  store i32 1, i32* %309, align 8
  %310 = load i8*, i8** @LED_TXRX_BLINK, align 8
  %311 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %312 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %311, i32 0, i32 9
  store i8* %310, i8** %312, align 8
  %313 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %314 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %313, i32 0, i32 5
  store i32 2, i32* %314, align 4
  %315 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %316 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %315, i32 0, i32 10
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %307
  %320 = load i8*, i8** @LED_STATE_OFF, align 8
  %321 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %322 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %321, i32 0, i32 7
  store i8* %320, i8** %322, align 8
  br label %327

323:                                              ; preds = %307
  %324 = load i8*, i8** @LED_STATE_ON, align 8
  %325 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %326 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %325, i32 0, i32 7
  store i8* %324, i8** %326, align 8
  br label %327

327:                                              ; preds = %323, %319
  %328 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %329 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %328, i32 0, i32 8
  %330 = load i64, i64* @jiffies, align 8
  %331 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %332 = call i64 @msecs_to_jiffies(i32 %331)
  %333 = add nsw i64 %330, %332
  %334 = call i32 @mod_timer(i32* %329, i64 %333)
  br label %335

335:                                              ; preds = %327, %280
  br label %714

336:                                              ; preds = %2, %2
  %337 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %338 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %365

341:                                              ; preds = %336
  %342 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %343 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %342, i32 0, i32 0
  store i32 0, i32* %343, align 8
  %344 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %345 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %344, i32 0, i32 8
  %346 = call i32 @del_timer(i32* %345)
  %347 = load i8*, i8** @LED_STATE_OFF, align 8
  %348 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %349 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %348, i32 0, i32 7
  store i8* %347, i8** %349, align 8
  %350 = load i8*, i8** @LED_STATE_OFF, align 8
  %351 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %352 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %351, i32 0, i32 9
  store i8* %350, i8** %352, align 8
  %353 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %354 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %353, i32 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %341
  %358 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %359 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %358, i32 0, i32 8
  %360 = load i64, i64* @jiffies, align 8
  %361 = call i64 @msecs_to_jiffies(i32 0)
  %362 = add nsw i64 %360, %361
  %363 = call i32 @mod_timer(i32* %359, i64 %362)
  br label %364

364:                                              ; preds = %357, %341
  br label %365

365:                                              ; preds = %364, %336
  %366 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %367 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %436, label %370

370:                                              ; preds = %365
  %371 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %372 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %370
  %376 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %377 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %376, i32 0, i32 8
  %378 = call i32 @del_timer(i32* %377)
  %379 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %380 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %379, i32 0, i32 3
  store i32 0, i32* %380, align 4
  br label %381

381:                                              ; preds = %375, %370
  %382 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %383 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %381
  %387 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %388 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %387, i32 0, i32 8
  %389 = call i32 @del_timer(i32* %388)
  %390 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %391 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %390, i32 0, i32 2
  store i32 0, i32* %391, align 8
  br label %392

392:                                              ; preds = %386, %381
  %393 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %394 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 8
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %392
  %398 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %399 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %398, i32 0, i32 8
  %400 = call i32 @del_timer(i32* %399)
  %401 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %402 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %401, i32 0, i32 4
  store i32 0, i32* %402, align 8
  br label %403

403:                                              ; preds = %397, %392
  %404 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %405 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %404, i32 0, i32 0
  store i32 1, i32* %405, align 8
  %406 = load i8*, i8** @LED_BLINK_WPS, align 8
  %407 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %408 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %407, i32 0, i32 9
  store i8* %406, i8** %408, align 8
  %409 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %410 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %409, i32 0, i32 10
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %424

413:                                              ; preds = %403
  %414 = load i8*, i8** @LED_STATE_OFF, align 8
  %415 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %416 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %415, i32 0, i32 7
  store i8* %414, i8** %416, align 8
  %417 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %418 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %417, i32 0, i32 8
  %419 = load i64, i64* @jiffies, align 8
  %420 = load i32, i32* @LED_BLINK_SLOWLY_INTERVAL, align 4
  %421 = call i64 @msecs_to_jiffies(i32 %420)
  %422 = add nsw i64 %419, %421
  %423 = call i32 @mod_timer(i32* %418, i64 %422)
  br label %435

424:                                              ; preds = %403
  %425 = load i8*, i8** @LED_STATE_ON, align 8
  %426 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %427 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %426, i32 0, i32 7
  store i8* %425, i8** %427, align 8
  %428 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %429 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %428, i32 0, i32 8
  %430 = load i64, i64* @jiffies, align 8
  %431 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %432 = call i64 @msecs_to_jiffies(i32 %431)
  %433 = add nsw i64 %430, %432
  %434 = call i32 @mod_timer(i32* %429, i64 %433)
  br label %435

435:                                              ; preds = %424, %413
  br label %436

436:                                              ; preds = %435, %365
  br label %714

437:                                              ; preds = %2
  %438 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %439 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %437
  %443 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %444 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %443, i32 0, i32 8
  %445 = call i32 @del_timer(i32* %444)
  %446 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %447 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %446, i32 0, i32 0
  store i32 0, i32* %447, align 8
  br label %448

448:                                              ; preds = %442, %437
  %449 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %450 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %449, i32 0, i32 3
  store i32 1, i32* %450, align 4
  %451 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %452 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %453 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %452, i32 0, i32 9
  store i8* %451, i8** %453, align 8
  %454 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %455 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %454, i32 0, i32 10
  %456 = load i32, i32* %455, align 8
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %448
  %459 = load i8*, i8** @LED_STATE_OFF, align 8
  %460 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %461 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %460, i32 0, i32 7
  store i8* %459, i8** %461, align 8
  br label %466

462:                                              ; preds = %448
  %463 = load i8*, i8** @LED_STATE_ON, align 8
  %464 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %465 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %464, i32 0, i32 7
  store i8* %463, i8** %465, align 8
  br label %466

466:                                              ; preds = %462, %458
  %467 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %468 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %467, i32 0, i32 8
  %469 = load i64, i64* @jiffies, align 8
  %470 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %471 = call i64 @msecs_to_jiffies(i32 %470)
  %472 = add nsw i64 %469, %471
  %473 = call i32 @mod_timer(i32* %468, i64 %472)
  br label %714

474:                                              ; preds = %2
  %475 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %476 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %474
  %480 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %481 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %480, i32 0, i32 8
  %482 = call i32 @del_timer(i32* %481)
  %483 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %484 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %483, i32 0, i32 0
  store i32 0, i32* %484, align 8
  br label %485

485:                                              ; preds = %479, %474
  %486 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %487 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %486, i32 0, i32 3
  store i32 1, i32* %487, align 4
  %488 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %489 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %490 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %489, i32 0, i32 9
  store i8* %488, i8** %490, align 8
  %491 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %492 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %491, i32 0, i32 10
  %493 = load i32, i32* %492, align 8
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %485
  %496 = load i8*, i8** @LED_STATE_OFF, align 8
  %497 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %498 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %497, i32 0, i32 7
  store i8* %496, i8** %498, align 8
  br label %503

499:                                              ; preds = %485
  %500 = load i8*, i8** @LED_STATE_ON, align 8
  %501 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %502 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %501, i32 0, i32 7
  store i8* %500, i8** %502, align 8
  br label %503

503:                                              ; preds = %499, %495
  %504 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %505 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %504, i32 0, i32 8
  %506 = load i64, i64* @jiffies, align 8
  %507 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %508 = call i64 @msecs_to_jiffies(i32 %507)
  %509 = add nsw i64 %506, %508
  %510 = call i32 @mod_timer(i32* %505, i64 %509)
  %511 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %512 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %503
  %516 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %517 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %516, i32 0, i32 8
  %518 = call i32 @del_timer(i32* %517)
  br label %522

519:                                              ; preds = %503
  %520 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %521 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %520, i32 0, i32 0
  store i32 1, i32* %521, align 8
  br label %522

522:                                              ; preds = %519, %515
  %523 = load i8*, i8** @LED_BLINK_WPS_STOP, align 8
  %524 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %525 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %524, i32 0, i32 9
  store i8* %523, i8** %525, align 8
  %526 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %527 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %526, i32 0, i32 10
  %528 = load i32, i32* %527, align 8
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %522
  %531 = load i8*, i8** @LED_STATE_OFF, align 8
  %532 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %533 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %532, i32 0, i32 7
  store i8* %531, i8** %533, align 8
  br label %538

534:                                              ; preds = %522
  %535 = load i8*, i8** @LED_STATE_ON, align 8
  %536 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %537 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %536, i32 0, i32 7
  store i8* %535, i8** %537, align 8
  br label %538

538:                                              ; preds = %534, %530
  %539 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %540 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %539, i32 0, i32 8
  %541 = load i64, i64* @jiffies, align 8
  %542 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %543 = call i64 @msecs_to_jiffies(i32 %542)
  %544 = add nsw i64 %541, %543
  %545 = call i32 @mod_timer(i32* %540, i64 %544)
  br label %714

546:                                              ; preds = %2
  %547 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %548 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %557

551:                                              ; preds = %546
  %552 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %553 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %552, i32 0, i32 8
  %554 = call i32 @del_timer(i32* %553)
  %555 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %556 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %555, i32 0, i32 0
  store i32 0, i32* %556, align 8
  br label %557

557:                                              ; preds = %551, %546
  %558 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %559 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %558, i32 0, i32 3
  store i32 1, i32* %559, align 4
  %560 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %561 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %562 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %561, i32 0, i32 9
  store i8* %560, i8** %562, align 8
  %563 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %564 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %563, i32 0, i32 10
  %565 = load i32, i32* %564, align 8
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %571

567:                                              ; preds = %557
  %568 = load i8*, i8** @LED_STATE_OFF, align 8
  %569 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %570 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %569, i32 0, i32 7
  store i8* %568, i8** %570, align 8
  br label %575

571:                                              ; preds = %557
  %572 = load i8*, i8** @LED_STATE_ON, align 8
  %573 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %574 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %573, i32 0, i32 7
  store i8* %572, i8** %574, align 8
  br label %575

575:                                              ; preds = %571, %567
  %576 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %577 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %576, i32 0, i32 8
  %578 = load i64, i64* @jiffies, align 8
  %579 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %580 = call i64 @msecs_to_jiffies(i32 %579)
  %581 = add nsw i64 %578, %580
  %582 = call i32 @mod_timer(i32* %577, i64 %581)
  %583 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %584 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %591

587:                                              ; preds = %575
  %588 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %589 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %588, i32 0, i32 8
  %590 = call i32 @del_timer(i32* %589)
  br label %594

591:                                              ; preds = %575
  %592 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %593 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %592, i32 0, i32 0
  store i32 1, i32* %593, align 8
  br label %594

594:                                              ; preds = %591, %587
  %595 = load i8*, i8** @LED_BLINK_WPS_STOP_OVERLAP, align 8
  %596 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %597 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %596, i32 0, i32 9
  store i8* %595, i8** %597, align 8
  %598 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %599 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %598, i32 0, i32 5
  store i32 10, i32* %599, align 4
  %600 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %601 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %600, i32 0, i32 10
  %602 = load i32, i32* %601, align 8
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %608

604:                                              ; preds = %594
  %605 = load i8*, i8** @LED_STATE_OFF, align 8
  %606 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %607 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %606, i32 0, i32 7
  store i8* %605, i8** %607, align 8
  br label %612

608:                                              ; preds = %594
  %609 = load i8*, i8** @LED_STATE_ON, align 8
  %610 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %611 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %610, i32 0, i32 7
  store i8* %609, i8** %611, align 8
  br label %612

612:                                              ; preds = %608, %604
  %613 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %614 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %613, i32 0, i32 8
  %615 = load i64, i64* @jiffies, align 8
  %616 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %617 = call i64 @msecs_to_jiffies(i32 %616)
  %618 = add nsw i64 %615, %617
  %619 = call i32 @mod_timer(i32* %614, i64 %618)
  br label %714

620:                                              ; preds = %2
  %621 = load i8*, i8** @LED_STATE_OFF, align 8
  %622 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %623 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %622, i32 0, i32 9
  store i8* %621, i8** %623, align 8
  %624 = load i8*, i8** @LED_STATE_OFF, align 8
  %625 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %626 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %625, i32 0, i32 7
  store i8* %624, i8** %626, align 8
  %627 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %628 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %627, i32 0, i32 3
  %629 = load i32, i32* %628, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %637

631:                                              ; preds = %620
  %632 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %633 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %632, i32 0, i32 8
  %634 = call i32 @del_timer(i32* %633)
  %635 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %636 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %635, i32 0, i32 3
  store i32 0, i32* %636, align 4
  br label %637

637:                                              ; preds = %631, %620
  %638 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %639 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %638, i32 0, i32 6
  %640 = load i32, i32* %639, align 8
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %648

642:                                              ; preds = %637
  %643 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %644 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %643, i32 0, i32 8
  %645 = call i32 @del_timer(i32* %644)
  %646 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %647 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %646, i32 0, i32 6
  store i32 0, i32* %647, align 8
  br label %648

648:                                              ; preds = %642, %637
  %649 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %650 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %649, i32 0, i32 2
  %651 = load i32, i32* %650, align 8
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %659

653:                                              ; preds = %648
  %654 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %655 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %654, i32 0, i32 8
  %656 = call i32 @del_timer(i32* %655)
  %657 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %658 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %657, i32 0, i32 2
  store i32 0, i32* %658, align 8
  br label %659

659:                                              ; preds = %653, %648
  %660 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %661 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %670

664:                                              ; preds = %659
  %665 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %666 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %665, i32 0, i32 8
  %667 = call i32 @del_timer(i32* %666)
  %668 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %669 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %668, i32 0, i32 0
  store i32 0, i32* %669, align 8
  br label %670

670:                                              ; preds = %664, %659
  %671 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %672 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %671, i32 0, i32 4
  %673 = load i32, i32* %672, align 8
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %681

675:                                              ; preds = %670
  %676 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %677 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %676, i32 0, i32 8
  %678 = call i32 @del_timer(i32* %677)
  %679 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %680 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %679, i32 0, i32 4
  store i32 0, i32* %680, align 8
  br label %681

681:                                              ; preds = %675, %670
  %682 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %683 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %682, i32 0, i32 1
  %684 = load i32, i32* %683, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %692

686:                                              ; preds = %681
  %687 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %688 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %687, i32 0, i32 8
  %689 = call i32 @del_timer(i32* %688)
  %690 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %691 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %690, i32 0, i32 1
  store i32 0, i32* %691, align 4
  br label %692

692:                                              ; preds = %686, %681
  %693 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %694 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %703

697:                                              ; preds = %692
  %698 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %699 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %698, i32 0, i32 8
  %700 = call i32 @del_timer(i32* %699)
  %701 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %702 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %701, i32 0, i32 0
  store i32 0, i32* %702, align 8
  br label %703

703:                                              ; preds = %697, %692
  %704 = load i8*, i8** @LED_UNKNOWN, align 8
  %705 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %706 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %705, i32 0, i32 7
  store i8* %704, i8** %706, align 8
  %707 = load %struct._adapter*, %struct._adapter** %3, align 8
  %708 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %709 = call i32 @SwLedOff(%struct._adapter* %707, %struct.LED_871x* %708)
  %710 = load %struct._adapter*, %struct._adapter** %3, align 8
  %711 = load %struct.LED_871x*, %struct.LED_871x** %8, align 8
  %712 = call i32 @SwLedOff(%struct._adapter* %710, %struct.LED_871x* %711)
  br label %714

713:                                              ; preds = %2
  br label %714

714:                                              ; preds = %62, %167, %227, %295, %713, %703, %612, %538, %466, %436, %335, %279, %205, %118
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @IS_LED_WPS_BLINKING(%struct.LED_871x*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
