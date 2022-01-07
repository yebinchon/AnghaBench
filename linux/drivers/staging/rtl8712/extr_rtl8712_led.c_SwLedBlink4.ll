; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct._adapter* }
%struct._adapter = type { %struct.led_priv }
%struct.led_priv = type { %struct.LED_871x }

@LED_STATE_ON = common dso_local global i64 0, align 8
@LED_UNKNOWN = common dso_local global i64 0, align 8
@LED_STATE_OFF = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_NO_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_SLOWLY_INTERVAL = common dso_local global i32 0, align 4
@LED_BLINK_NORMAL_INTERVAL = common dso_local global i32 0, align 4
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink4(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.led_priv*, align 8
  %5 = alloca %struct.LED_871x*, align 8
  %6 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %7 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %8 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %7, i32 0, i32 9
  %9 = load %struct._adapter*, %struct._adapter** %8, align 8
  store %struct._adapter* %9, %struct._adapter** %3, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  store %struct.led_priv* %11, %struct.led_priv** %4, align 8
  %12 = load %struct.led_priv*, %struct.led_priv** %4, align 8
  %13 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %12, i32 0, i32 0
  store %struct.LED_871x* %13, %struct.LED_871x** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %15 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LED_STATE_ON, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct._adapter*, %struct._adapter** %3, align 8
  %21 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %22 = call i32 @SwLedOn(%struct._adapter* %20, %struct.LED_871x* %21)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct._adapter*, %struct._adapter** %3, align 8
  %25 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %26 = call i32 @SwLedOff(%struct._adapter* %24, %struct.LED_871x* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %29 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %34 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LED_UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i8*, i8** @LED_STATE_OFF, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %42 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** @LED_STATE_OFF, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %46 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct._adapter*, %struct._adapter** %3, align 8
  %48 = load %struct.LED_871x*, %struct.LED_871x** %5, align 8
  %49 = call i32 @SwLedOff(%struct._adapter* %47, %struct.LED_871x* %48)
  br label %50

50:                                               ; preds = %38, %32, %27
  %51 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %52 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %342 [
    i32 134, label %54
    i32 133, label %76
    i32 129, label %105
    i32 128, label %169
    i32 132, label %233
    i32 131, label %262
    i32 130, label %284
  ]

54:                                               ; preds = %50
  %55 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %56 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** @LED_STATE_OFF, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %63 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load i64, i64* @LED_STATE_ON, align 8
  %66 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %67 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %70 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %69, i32 0, i32 6
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %73 = call i64 @msecs_to_jiffies(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @mod_timer(i32* %70, i64 %74)
  br label %343

76:                                               ; preds = %50
  %77 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %78 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i8*, i8** @LED_STATE_OFF, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %85 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %87 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %86, i32 0, i32 6
  %88 = load i64, i64* @jiffies, align 8
  %89 = load i32, i32* @LED_BLINK_SLOWLY_INTERVAL, align 4
  %90 = call i64 @msecs_to_jiffies(i32 %89)
  %91 = add nsw i64 %88, %90
  %92 = call i32 @mod_timer(i32* %87, i64 %91)
  br label %104

93:                                               ; preds = %76
  %94 = load i64, i64* @LED_STATE_ON, align 8
  %95 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %96 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %98 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %97, i32 0, i32 6
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %101 = call i64 @msecs_to_jiffies(i32 %100)
  %102 = add nsw i64 %99, %101
  %103 = call i32 @mod_timer(i32* %98, i64 %102)
  br label %104

104:                                              ; preds = %93, %81
  br label %343

105:                                              ; preds = %50
  %106 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %107 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %111 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 1, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %105
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %115
  %119 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %120 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %119, i32 0, i32 3
  store i32 1, i32* %120, align 8
  %121 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %122 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %121, i32 0, i32 1
  store i32 134, i32* %122, align 8
  %123 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %124 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load i8*, i8** @LED_STATE_OFF, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %131 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %136

132:                                              ; preds = %118
  %133 = load i64, i64* @LED_STATE_ON, align 8
  %134 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %135 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %138 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %137, i32 0, i32 6
  %139 = load i64, i64* @jiffies, align 8
  %140 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %141 = call i64 @msecs_to_jiffies(i32 %140)
  %142 = add nsw i64 %139, %141
  %143 = call i32 @mod_timer(i32* %138, i64 %142)
  %144 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %145 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %144, i32 0, i32 4
  store i32 0, i32* %145, align 4
  br label %168

146:                                              ; preds = %115
  %147 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %148 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i8*, i8** @LED_STATE_OFF, align 8
  %153 = ptrtoint i8* %152 to i64
  %154 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %155 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  br label %160

156:                                              ; preds = %146
  %157 = load i64, i64* @LED_STATE_ON, align 8
  %158 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %159 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %151
  %161 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %162 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %161, i32 0, i32 6
  %163 = load i64, i64* @jiffies, align 8
  %164 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %165 = call i64 @msecs_to_jiffies(i32 %164)
  %166 = add nsw i64 %163, %165
  %167 = call i32 @mod_timer(i32* %162, i64 %166)
  br label %168

168:                                              ; preds = %160, %136
  br label %343

169:                                              ; preds = %50
  %170 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %171 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %175 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  store i32 1, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %169
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %184 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %183, i32 0, i32 3
  store i32 1, i32* %184, align 8
  %185 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %186 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %185, i32 0, i32 1
  store i32 134, i32* %186, align 8
  %187 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %188 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %182
  %192 = load i8*, i8** @LED_STATE_OFF, align 8
  %193 = ptrtoint i8* %192 to i64
  %194 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %195 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  br label %200

196:                                              ; preds = %182
  %197 = load i64, i64* @LED_STATE_ON, align 8
  %198 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %199 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %196, %191
  %201 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %202 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %201, i32 0, i32 6
  %203 = load i64, i64* @jiffies, align 8
  %204 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %205 = call i64 @msecs_to_jiffies(i32 %204)
  %206 = add nsw i64 %203, %205
  %207 = call i32 @mod_timer(i32* %202, i64 %206)
  %208 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %209 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %208, i32 0, i32 5
  store i32 0, i32* %209, align 8
  br label %232

210:                                              ; preds = %179
  %211 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %212 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i8*, i8** @LED_STATE_OFF, align 8
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %219 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  br label %224

220:                                              ; preds = %210
  %221 = load i64, i64* @LED_STATE_ON, align 8
  %222 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %223 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %220, %215
  %225 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %226 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %225, i32 0, i32 6
  %227 = load i64, i64* @jiffies, align 8
  %228 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %229 = call i64 @msecs_to_jiffies(i32 %228)
  %230 = add nsw i64 %227, %229
  %231 = call i32 @mod_timer(i32* %226, i64 %230)
  br label %232

232:                                              ; preds = %224, %200
  br label %343

233:                                              ; preds = %50
  %234 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %235 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %233
  %239 = load i8*, i8** @LED_STATE_OFF, align 8
  %240 = ptrtoint i8* %239 to i64
  %241 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %242 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  %243 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %244 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %243, i32 0, i32 6
  %245 = load i64, i64* @jiffies, align 8
  %246 = load i32, i32* @LED_BLINK_SLOWLY_INTERVAL, align 4
  %247 = call i64 @msecs_to_jiffies(i32 %246)
  %248 = add nsw i64 %245, %247
  %249 = call i32 @mod_timer(i32* %244, i64 %248)
  br label %261

250:                                              ; preds = %233
  %251 = load i64, i64* @LED_STATE_ON, align 8
  %252 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %253 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  %254 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %255 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %254, i32 0, i32 6
  %256 = load i64, i64* @jiffies, align 8
  %257 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %258 = call i64 @msecs_to_jiffies(i32 %257)
  %259 = add nsw i64 %256, %258
  %260 = call i32 @mod_timer(i32* %255, i64 %259)
  br label %261

261:                                              ; preds = %250, %238
  br label %343

262:                                              ; preds = %50
  %263 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %264 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load i8*, i8** @LED_STATE_OFF, align 8
  %269 = ptrtoint i8* %268 to i64
  %270 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %271 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  br label %276

272:                                              ; preds = %262
  %273 = load i64, i64* @LED_STATE_ON, align 8
  %274 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %275 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %272, %267
  %277 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %278 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %277, i32 0, i32 6
  %279 = load i64, i64* @jiffies, align 8
  %280 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %281 = call i64 @msecs_to_jiffies(i32 %280)
  %282 = add nsw i64 %279, %281
  %283 = call i32 @mod_timer(i32* %278, i64 %282)
  br label %343

284:                                              ; preds = %50
  %285 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %286 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %286, align 4
  %289 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %290 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %284
  %294 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %295 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %300 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %299, i32 0, i32 2
  store i32 1, i32* %300, align 4
  br label %302

301:                                              ; preds = %293
  store i32 1, i32* %6, align 4
  br label %302

302:                                              ; preds = %301, %298
  br label %303

303:                                              ; preds = %302, %284
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %319

306:                                              ; preds = %303
  %307 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %308 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %307, i32 0, i32 2
  store i32 10, i32* %308, align 4
  %309 = load i64, i64* @LED_STATE_ON, align 8
  %310 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %311 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  %312 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %313 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %312, i32 0, i32 6
  %314 = load i64, i64* @jiffies, align 8
  %315 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %316 = call i64 @msecs_to_jiffies(i32 %315)
  %317 = add nsw i64 %314, %316
  %318 = call i32 @mod_timer(i32* %313, i64 %317)
  br label %341

319:                                              ; preds = %303
  %320 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %321 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %319
  %325 = load i8*, i8** @LED_STATE_OFF, align 8
  %326 = ptrtoint i8* %325 to i64
  %327 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %328 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %327, i32 0, i32 0
  store i64 %326, i64* %328, align 8
  br label %333

329:                                              ; preds = %319
  %330 = load i64, i64* @LED_STATE_ON, align 8
  %331 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %332 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %331, i32 0, i32 0
  store i64 %330, i64* %332, align 8
  br label %333

333:                                              ; preds = %329, %324
  %334 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %335 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %334, i32 0, i32 6
  %336 = load i64, i64* @jiffies, align 8
  %337 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %338 = call i64 @msecs_to_jiffies(i32 %337)
  %339 = add nsw i64 %336, %338
  %340 = call i32 @mod_timer(i32* %335, i64 %339)
  br label %341

341:                                              ; preds = %333, %306
  br label %343

342:                                              ; preds = %50
  br label %343

343:                                              ; preds = %342, %341, %276, %261, %232, %168, %104, %68
  ret void
}

declare dso_local i32 @SwLedOn(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
