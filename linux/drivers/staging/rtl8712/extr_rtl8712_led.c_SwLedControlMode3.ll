; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv, %struct.led_priv }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.led_priv = type { %struct.LED_871x }
%struct.LED_871x = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }

@LED_SCAN_BLINK = common dso_local global i8* null, align 8
@LED_STATE_OFF = common dso_local global i8* null, align 8
@LED_STATE_ON = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_TXRX_BLINK = common dso_local global i8* null, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS = common dso_local global i8* null, align 8
@LED_BLINK_WPS_STOP = common dso_local global i8* null, align 8
@LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @SwLedControlMode3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedControlMode3(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_priv*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.LED_871x*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 1
  store %struct.led_priv* %9, %struct.led_priv** %5, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  store %struct.mlme_priv* %11, %struct.mlme_priv** %6, align 8
  %12 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %13 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %12, i32 0, i32 0
  store %struct.LED_871x* %13, %struct.LED_871x** %7, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %349 [
    i32 134, label %15
    i32 128, label %73
    i32 135, label %73
    i32 138, label %123
    i32 132, label %163
    i32 131, label %163
    i32 130, label %217
    i32 129, label %261
    i32 133, label %285
    i32 137, label %285
    i32 136, label %303
  ]

15:                                               ; preds = %2
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %72

22:                                               ; preds = %15
  %23 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %24 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %22
  %28 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %29 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %350

32:                                               ; preds = %27
  %33 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %34 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %39 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %38, i32 0, i32 4
  %40 = call i32 @del_timer(i32* %39)
  %41 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %42 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %45 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %47 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %48 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %50 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %49, i32 0, i32 2
  store i32 24, i32* %50, align 8
  %51 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %52 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i8*, i8** @LED_STATE_OFF, align 8
  %57 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %58 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  br label %63

59:                                               ; preds = %43
  %60 = load i8*, i8** @LED_STATE_ON, align 8
  %61 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %62 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %65 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %64, i32 0, i32 4
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %68 = call i64 @msecs_to_jiffies(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = call i32 @mod_timer(i32* %65, i64 %69)
  br label %71

71:                                               ; preds = %63, %22
  br label %72

72:                                               ; preds = %71, %21
  br label %350

73:                                               ; preds = %2, %2
  %74 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %75 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %122, label %78

78:                                               ; preds = %73
  %79 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %80 = load i32, i32* @_FW_LINKED, align 4
  %81 = call i32 @check_fwstate(%struct.mlme_priv* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %78
  %84 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %85 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %91 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %83
  br label %350

94:                                               ; preds = %89
  %95 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %96 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load i8*, i8** @LED_TXRX_BLINK, align 8
  %98 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %99 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %98, i32 0, i32 6
  store i8* %97, i8** %99, align 8
  %100 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %101 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %100, i32 0, i32 2
  store i32 2, i32* %101, align 8
  %102 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %103 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = load i8*, i8** @LED_STATE_OFF, align 8
  %108 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %109 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  br label %114

110:                                              ; preds = %94
  %111 = load i8*, i8** @LED_STATE_ON, align 8
  %112 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %113 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %116 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %115, i32 0, i32 4
  %117 = load i64, i64* @jiffies, align 8
  %118 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %119 = call i64 @msecs_to_jiffies(i32 %118)
  %120 = add nsw i64 %117, %119
  %121 = call i32 @mod_timer(i32* %116, i64 %120)
  br label %122

122:                                              ; preds = %114, %78, %73
  br label %350

123:                                              ; preds = %2
  %124 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %125 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %350

128:                                              ; preds = %123
  %129 = load i8*, i8** @LED_STATE_ON, align 8
  %130 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %131 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @LED_STATE_ON, align 8
  %133 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %134 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %141 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %140, i32 0, i32 4
  %142 = call i32 @del_timer(i32* %141)
  %143 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %144 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %128
  %146 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %147 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %152 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %151, i32 0, i32 4
  %153 = call i32 @del_timer(i32* %152)
  %154 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %155 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %145
  %157 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %158 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %157, i32 0, i32 4
  %159 = load i64, i64* @jiffies, align 8
  %160 = call i64 @msecs_to_jiffies(i32 0)
  %161 = add nsw i64 %159, %160
  %162 = call i32 @mod_timer(i32* %158, i64 %161)
  br label %350

163:                                              ; preds = %2, %2
  %164 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %165 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %216, label %168

168:                                              ; preds = %163
  %169 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %170 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %175 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %174, i32 0, i32 4
  %176 = call i32 @del_timer(i32* %175)
  %177 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %178 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %168
  %180 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %181 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %186 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %185, i32 0, i32 4
  %187 = call i32 @del_timer(i32* %186)
  %188 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %189 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %188, i32 0, i32 0
  store i32 0, i32* %189, align 8
  br label %190

190:                                              ; preds = %184, %179
  %191 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %192 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %191, i32 0, i32 3
  store i32 1, i32* %192, align 4
  %193 = load i8*, i8** @LED_BLINK_WPS, align 8
  %194 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %195 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %194, i32 0, i32 6
  store i8* %193, i8** %195, align 8
  %196 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %197 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %190
  %201 = load i8*, i8** @LED_STATE_OFF, align 8
  %202 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %203 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  br label %208

204:                                              ; preds = %190
  %205 = load i8*, i8** @LED_STATE_ON, align 8
  %206 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %207 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %206, i32 0, i32 5
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %200
  %209 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %210 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %209, i32 0, i32 4
  %211 = load i64, i64* @jiffies, align 8
  %212 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %213 = call i64 @msecs_to_jiffies(i32 %212)
  %214 = add nsw i64 %211, %213
  %215 = call i32 @mod_timer(i32* %210, i64 %214)
  br label %216

216:                                              ; preds = %208, %163
  br label %350

217:                                              ; preds = %2
  %218 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %219 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %224 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %223, i32 0, i32 4
  %225 = call i32 @del_timer(i32* %224)
  %226 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %227 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %226, i32 0, i32 3
  store i32 0, i32* %227, align 4
  br label %231

228:                                              ; preds = %217
  %229 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %230 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %229, i32 0, i32 3
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %222
  %232 = load i8*, i8** @LED_BLINK_WPS_STOP, align 8
  %233 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %234 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %233, i32 0, i32 6
  store i8* %232, i8** %234, align 8
  %235 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %236 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %231
  %240 = load i8*, i8** @LED_STATE_OFF, align 8
  %241 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %242 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %241, i32 0, i32 5
  store i8* %240, i8** %242, align 8
  %243 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %244 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %243, i32 0, i32 4
  %245 = load i64, i64* @jiffies, align 8
  %246 = load i32, i32* @LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA, align 4
  %247 = call i64 @msecs_to_jiffies(i32 %246)
  %248 = add nsw i64 %245, %247
  %249 = call i32 @mod_timer(i32* %244, i64 %248)
  br label %260

250:                                              ; preds = %231
  %251 = load i8*, i8** @LED_STATE_ON, align 8
  %252 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %253 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %252, i32 0, i32 5
  store i8* %251, i8** %253, align 8
  %254 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %255 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %254, i32 0, i32 4
  %256 = load i64, i64* @jiffies, align 8
  %257 = call i64 @msecs_to_jiffies(i32 0)
  %258 = add nsw i64 %256, %257
  %259 = call i32 @mod_timer(i32* %255, i64 %258)
  br label %260

260:                                              ; preds = %250, %239
  br label %350

261:                                              ; preds = %2
  %262 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %263 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %268 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %267, i32 0, i32 4
  %269 = call i32 @del_timer(i32* %268)
  %270 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %271 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %270, i32 0, i32 3
  store i32 0, i32* %271, align 4
  br label %272

272:                                              ; preds = %266, %261
  %273 = load i8*, i8** @LED_STATE_OFF, align 8
  %274 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %275 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %274, i32 0, i32 6
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @LED_STATE_OFF, align 8
  %277 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %278 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %277, i32 0, i32 5
  store i8* %276, i8** %278, align 8
  %279 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %280 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %279, i32 0, i32 4
  %281 = load i64, i64* @jiffies, align 8
  %282 = call i64 @msecs_to_jiffies(i32 0)
  %283 = add nsw i64 %281, %282
  %284 = call i32 @mod_timer(i32* %280, i64 %283)
  br label %350

285:                                              ; preds = %2, %2
  %286 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %287 = call i32 @IS_LED_BLINKING(%struct.LED_871x* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %302, label %289

289:                                              ; preds = %285
  %290 = load i8*, i8** @LED_STATE_OFF, align 8
  %291 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %292 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %291, i32 0, i32 6
  store i8* %290, i8** %292, align 8
  %293 = load i8*, i8** @LED_STATE_OFF, align 8
  %294 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %295 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %294, i32 0, i32 5
  store i8* %293, i8** %295, align 8
  %296 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %297 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %296, i32 0, i32 4
  %298 = load i64, i64* @jiffies, align 8
  %299 = call i64 @msecs_to_jiffies(i32 0)
  %300 = add nsw i64 %298, %299
  %301 = call i32 @mod_timer(i32* %297, i64 %300)
  br label %302

302:                                              ; preds = %289, %285
  br label %350

303:                                              ; preds = %2
  %304 = load i8*, i8** @LED_STATE_OFF, align 8
  %305 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %306 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %305, i32 0, i32 6
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** @LED_STATE_OFF, align 8
  %308 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %309 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %308, i32 0, i32 5
  store i8* %307, i8** %309, align 8
  %310 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %311 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %303
  %315 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %316 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %315, i32 0, i32 4
  %317 = call i32 @del_timer(i32* %316)
  %318 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %319 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %318, i32 0, i32 1
  store i32 0, i32* %319, align 4
  br label %320

320:                                              ; preds = %314, %303
  %321 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %322 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %320
  %326 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %327 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %326, i32 0, i32 4
  %328 = call i32 @del_timer(i32* %327)
  %329 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %330 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %329, i32 0, i32 0
  store i32 0, i32* %330, align 8
  br label %331

331:                                              ; preds = %325, %320
  %332 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %333 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %331
  %337 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %338 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %337, i32 0, i32 4
  %339 = call i32 @del_timer(i32* %338)
  %340 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %341 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %340, i32 0, i32 3
  store i32 0, i32* %341, align 4
  br label %342

342:                                              ; preds = %336, %331
  %343 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %344 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %343, i32 0, i32 4
  %345 = load i64, i64* @jiffies, align 8
  %346 = call i64 @msecs_to_jiffies(i32 0)
  %347 = add nsw i64 %345, %346
  %348 = call i32 @mod_timer(i32* %344, i64 %347)
  br label %350

349:                                              ; preds = %2
  br label %350

350:                                              ; preds = %31, %93, %127, %349, %342, %302, %272, %260, %216, %156, %122, %72
  ret void
}

declare dso_local i32 @IS_LED_WPS_BLINKING(%struct.LED_871x*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @IS_LED_BLINKING(%struct.LED_871x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
