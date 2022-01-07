; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_led.c_SwLedControlMode1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_led.c_SwLedControlMode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.led_priv }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.led_priv = type { %struct.LED_871x }
%struct.LED_871x = type { i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }

@LED_BLINK_SCAN = common dso_local global i8* null, align 8
@LED_BLINK_SLOWLY = common dso_local global i8* null, align 8
@RTW_LED_OFF = common dso_local global i8* null, align 8
@RTW_LED_ON = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_NO_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_NORMAL = common dso_local global i8* null, align 8
@LED_BLINK_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_TXRX = common dso_local global i8* null, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS = common dso_local global i8* null, align 8
@LED_BLINK_WPS_STOP = common dso_local global i8* null, align 8
@LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@_module_rtl8712_led_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Led %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @SwLedControlMode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedControlMode1(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_priv*, align 8
  %6 = alloca %struct.LED_871x*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.led_priv* %9, %struct.led_priv** %5, align 8
  %10 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %11 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %10, i32 0, i32 0
  store %struct.LED_871x* %11, %struct.LED_871x** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_priv* %13, %struct.mlme_priv** %7, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %560 [
    i32 136, label %15
    i32 133, label %15
    i32 138, label %15
    i32 139, label %80
    i32 134, label %145
    i32 128, label %229
    i32 135, label %229
    i32 132, label %296
    i32 131, label %296
    i32 130, label %372
    i32 129, label %458
    i32 137, label %495
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %17 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %561

21:                                               ; preds = %15
  %22 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %23 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** @LED_BLINK_SCAN, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %29 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %21
  br label %568

32:                                               ; preds = %27
  %33 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %34 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %39 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %38, i32 0, i32 7
  %40 = call i32 @del_timer_sync(i32* %39)
  %41 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %42 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %45 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %50 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %49, i32 0, i32 7
  %51 = call i32 @del_timer_sync(i32* %50)
  %52 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %53 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %56 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %58 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %59 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %61 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i8*, i8** @RTW_LED_OFF, align 8
  %66 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %67 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %54
  %69 = load i8*, i8** @RTW_LED_ON, align 8
  %70 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %71 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %74 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %73, i32 0, i32 7
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %77 = call i64 @msecs_to_jiffies(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i32 @mod_timer(i32* %74, i64 %78)
  br label %561

80:                                               ; preds = %2
  %81 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %82 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %561

86:                                               ; preds = %80
  %87 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %88 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %87, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** @LED_BLINK_SCAN, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %94 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %86
  br label %568

97:                                               ; preds = %92
  %98 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %99 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %104 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %103, i32 0, i32 7
  %105 = call i32 @del_timer_sync(i32* %104)
  %106 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %107 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %110 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %115 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %114, i32 0, i32 7
  %116 = call i32 @del_timer_sync(i32* %115)
  %117 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %118 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %121 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load i8*, i8** @LED_BLINK_NORMAL, align 8
  %123 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %124 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %126 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load i8*, i8** @RTW_LED_OFF, align 8
  %131 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %132 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %131, i32 0, i32 8
  store i8* %130, i8** %132, align 8
  br label %137

133:                                              ; preds = %119
  %134 = load i8*, i8** @RTW_LED_ON, align 8
  %135 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %133, %129
  %138 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %139 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %138, i32 0, i32 7
  %140 = load i64, i64* @jiffies, align 8
  %141 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %142 = call i64 @msecs_to_jiffies(i32 %141)
  %143 = add nsw i64 %140, %142
  %144 = call i32 @mod_timer(i32* %139, i64 %143)
  br label %561

145:                                              ; preds = %2
  %146 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %147 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %153 = load i32, i32* @_FW_LINKED, align 4
  %154 = call i32 @check_fwstate(%struct.mlme_priv* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %561

157:                                              ; preds = %151, %145
  %158 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %159 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %561

163:                                              ; preds = %157
  %164 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %165 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %568

168:                                              ; preds = %163
  %169 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %170 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %175 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %174, i32 0, i32 7
  %176 = call i32 @del_timer_sync(i32* %175)
  %177 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %178 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %168
  %180 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %181 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %186 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %185, i32 0, i32 7
  %187 = call i32 @del_timer_sync(i32* %186)
  %188 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %189 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %188, i32 0, i32 1
  store i32 0, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %179
  %191 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %192 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %197 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %196, i32 0, i32 7
  %198 = call i32 @del_timer_sync(i32* %197)
  %199 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %200 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %199, i32 0, i32 2
  store i32 0, i32* %200, align 8
  br label %201

201:                                              ; preds = %195, %190
  %202 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %203 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %202, i32 0, i32 3
  store i32 1, i32* %203, align 4
  %204 = load i8*, i8** @LED_BLINK_SCAN, align 8
  %205 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %206 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %205, i32 0, i32 6
  store i8* %204, i8** %206, align 8
  %207 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %208 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %207, i32 0, i32 4
  store i32 24, i32* %208, align 8
  %209 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %210 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %201
  %214 = load i8*, i8** @RTW_LED_OFF, align 8
  %215 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %216 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %215, i32 0, i32 8
  store i8* %214, i8** %216, align 8
  br label %221

217:                                              ; preds = %201
  %218 = load i8*, i8** @RTW_LED_ON, align 8
  %219 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %220 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %219, i32 0, i32 8
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %217, %213
  %222 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %223 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %222, i32 0, i32 7
  %224 = load i64, i64* @jiffies, align 8
  %225 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %226 = call i64 @msecs_to_jiffies(i32 %225)
  %227 = add nsw i64 %224, %226
  %228 = call i32 @mod_timer(i32* %223, i64 %227)
  br label %561

229:                                              ; preds = %2, %2
  %230 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %231 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %561

235:                                              ; preds = %229
  %236 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %237 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %236, i32 0, i32 6
  %238 = load i8*, i8** %237, align 8
  %239 = load i8*, i8** @LED_BLINK_SCAN, align 8
  %240 = icmp eq i8* %238, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %235
  %242 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %243 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %241, %235
  br label %568

246:                                              ; preds = %241
  %247 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %248 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %253 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %252, i32 0, i32 7
  %254 = call i32 @del_timer_sync(i32* %253)
  %255 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %256 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %255, i32 0, i32 0
  store i32 0, i32* %256, align 8
  br label %257

257:                                              ; preds = %251, %246
  %258 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %259 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %264 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %263, i32 0, i32 7
  %265 = call i32 @del_timer_sync(i32* %264)
  %266 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %267 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %266, i32 0, i32 1
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %262, %257
  %269 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %270 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %269, i32 0, i32 2
  store i32 1, i32* %270, align 8
  %271 = load i8*, i8** @LED_BLINK_TXRX, align 8
  %272 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %273 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %272, i32 0, i32 6
  store i8* %271, i8** %273, align 8
  %274 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %275 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %274, i32 0, i32 4
  store i32 2, i32* %275, align 8
  %276 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %277 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %268
  %281 = load i8*, i8** @RTW_LED_OFF, align 8
  %282 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %283 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %282, i32 0, i32 8
  store i8* %281, i8** %283, align 8
  br label %288

284:                                              ; preds = %268
  %285 = load i8*, i8** @RTW_LED_ON, align 8
  %286 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %287 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %286, i32 0, i32 8
  store i8* %285, i8** %287, align 8
  br label %288

288:                                              ; preds = %284, %280
  %289 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %290 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %289, i32 0, i32 7
  %291 = load i64, i64* @jiffies, align 8
  %292 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %293 = call i64 @msecs_to_jiffies(i32 %292)
  %294 = add nsw i64 %291, %293
  %295 = call i32 @mod_timer(i32* %290, i64 %294)
  br label %561

296:                                              ; preds = %2, %2
  %297 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %298 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  br label %561

302:                                              ; preds = %296
  %303 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %304 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %309 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %308, i32 0, i32 7
  %310 = call i32 @del_timer_sync(i32* %309)
  %311 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %312 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %311, i32 0, i32 0
  store i32 0, i32* %312, align 8
  br label %313

313:                                              ; preds = %307, %302
  %314 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %315 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %313
  %319 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %320 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %319, i32 0, i32 7
  %321 = call i32 @del_timer_sync(i32* %320)
  %322 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %323 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %322, i32 0, i32 1
  store i32 0, i32* %323, align 4
  br label %324

324:                                              ; preds = %318, %313
  %325 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %326 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %324
  %330 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %331 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %330, i32 0, i32 7
  %332 = call i32 @del_timer_sync(i32* %331)
  %333 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %334 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %333, i32 0, i32 2
  store i32 0, i32* %334, align 8
  br label %335

335:                                              ; preds = %329, %324
  %336 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %337 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %335
  %341 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %342 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %341, i32 0, i32 7
  %343 = call i32 @del_timer_sync(i32* %342)
  %344 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %345 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %344, i32 0, i32 3
  store i32 0, i32* %345, align 4
  br label %346

346:                                              ; preds = %340, %335
  %347 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %348 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %347, i32 0, i32 5
  store i32 1, i32* %348, align 4
  %349 = load i8*, i8** @LED_BLINK_WPS, align 8
  %350 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %351 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %350, i32 0, i32 6
  store i8* %349, i8** %351, align 8
  %352 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %353 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %352, i32 0, i32 9
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %346
  %357 = load i8*, i8** @RTW_LED_OFF, align 8
  %358 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %359 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %358, i32 0, i32 8
  store i8* %357, i8** %359, align 8
  br label %364

360:                                              ; preds = %346
  %361 = load i8*, i8** @RTW_LED_ON, align 8
  %362 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %363 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %362, i32 0, i32 8
  store i8* %361, i8** %363, align 8
  br label %364

364:                                              ; preds = %360, %356
  %365 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %366 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %365, i32 0, i32 7
  %367 = load i64, i64* @jiffies, align 8
  %368 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %369 = call i64 @msecs_to_jiffies(i32 %368)
  %370 = add nsw i64 %367, %369
  %371 = call i32 @mod_timer(i32* %366, i64 %370)
  br label %561

372:                                              ; preds = %2
  %373 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %374 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %372
  %378 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %379 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %378, i32 0, i32 7
  %380 = call i32 @del_timer_sync(i32* %379)
  %381 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %382 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %381, i32 0, i32 0
  store i32 0, i32* %382, align 8
  br label %383

383:                                              ; preds = %377, %372
  %384 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %385 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %390 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %389, i32 0, i32 7
  %391 = call i32 @del_timer_sync(i32* %390)
  %392 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %393 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %392, i32 0, i32 1
  store i32 0, i32* %393, align 4
  br label %394

394:                                              ; preds = %388, %383
  %395 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %396 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %394
  %400 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %401 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %400, i32 0, i32 7
  %402 = call i32 @del_timer_sync(i32* %401)
  %403 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %404 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %403, i32 0, i32 2
  store i32 0, i32* %404, align 8
  br label %405

405:                                              ; preds = %399, %394
  %406 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %407 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %416

410:                                              ; preds = %405
  %411 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %412 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %411, i32 0, i32 7
  %413 = call i32 @del_timer_sync(i32* %412)
  %414 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %415 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %414, i32 0, i32 3
  store i32 0, i32* %415, align 4
  br label %416

416:                                              ; preds = %410, %405
  %417 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %418 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %416
  %422 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %423 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %422, i32 0, i32 7
  %424 = call i32 @del_timer_sync(i32* %423)
  br label %428

425:                                              ; preds = %416
  %426 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %427 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %426, i32 0, i32 5
  store i32 1, i32* %427, align 4
  br label %428

428:                                              ; preds = %425, %421
  %429 = load i8*, i8** @LED_BLINK_WPS_STOP, align 8
  %430 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %431 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %430, i32 0, i32 6
  store i8* %429, i8** %431, align 8
  %432 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %433 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %432, i32 0, i32 9
  %434 = load i32, i32* %433, align 8
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %447

436:                                              ; preds = %428
  %437 = load i8*, i8** @RTW_LED_OFF, align 8
  %438 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %439 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %438, i32 0, i32 8
  store i8* %437, i8** %439, align 8
  %440 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %441 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %440, i32 0, i32 7
  %442 = load i64, i64* @jiffies, align 8
  %443 = load i32, i32* @LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA, align 4
  %444 = call i64 @msecs_to_jiffies(i32 %443)
  %445 = add nsw i64 %442, %444
  %446 = call i32 @mod_timer(i32* %441, i64 %445)
  br label %457

447:                                              ; preds = %428
  %448 = load i8*, i8** @RTW_LED_ON, align 8
  %449 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %450 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %449, i32 0, i32 8
  store i8* %448, i8** %450, align 8
  %451 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %452 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %451, i32 0, i32 7
  %453 = load i64, i64* @jiffies, align 8
  %454 = call i64 @msecs_to_jiffies(i32 0)
  %455 = add nsw i64 %453, %454
  %456 = call i32 @mod_timer(i32* %452, i64 %455)
  br label %457

457:                                              ; preds = %447, %436
  br label %561

458:                                              ; preds = %2
  %459 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %460 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %458
  %464 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %465 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %464, i32 0, i32 7
  %466 = call i32 @del_timer_sync(i32* %465)
  %467 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %468 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %467, i32 0, i32 5
  store i32 0, i32* %468, align 4
  br label %469

469:                                              ; preds = %463, %458
  %470 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %471 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %470, i32 0, i32 0
  store i32 1, i32* %471, align 8
  %472 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %473 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %474 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %473, i32 0, i32 6
  store i8* %472, i8** %474, align 8
  %475 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %476 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %475, i32 0, i32 9
  %477 = load i32, i32* %476, align 8
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %469
  %480 = load i8*, i8** @RTW_LED_OFF, align 8
  %481 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %482 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %481, i32 0, i32 8
  store i8* %480, i8** %482, align 8
  br label %487

483:                                              ; preds = %469
  %484 = load i8*, i8** @RTW_LED_ON, align 8
  %485 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %486 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %485, i32 0, i32 8
  store i8* %484, i8** %486, align 8
  br label %487

487:                                              ; preds = %483, %479
  %488 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %489 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %488, i32 0, i32 7
  %490 = load i64, i64* @jiffies, align 8
  %491 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %492 = call i64 @msecs_to_jiffies(i32 %491)
  %493 = add nsw i64 %490, %492
  %494 = call i32 @mod_timer(i32* %489, i64 %493)
  br label %561

495:                                              ; preds = %2
  %496 = load i8*, i8** @RTW_LED_OFF, align 8
  %497 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %498 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %497, i32 0, i32 6
  store i8* %496, i8** %498, align 8
  %499 = load i8*, i8** @RTW_LED_OFF, align 8
  %500 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %501 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %500, i32 0, i32 8
  store i8* %499, i8** %501, align 8
  %502 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %503 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %512

506:                                              ; preds = %495
  %507 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %508 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %507, i32 0, i32 7
  %509 = call i32 @del_timer_sync(i32* %508)
  %510 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %511 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %510, i32 0, i32 0
  store i32 0, i32* %511, align 8
  br label %512

512:                                              ; preds = %506, %495
  %513 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %514 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %523

517:                                              ; preds = %512
  %518 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %519 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %518, i32 0, i32 7
  %520 = call i32 @del_timer_sync(i32* %519)
  %521 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %522 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %521, i32 0, i32 1
  store i32 0, i32* %522, align 4
  br label %523

523:                                              ; preds = %517, %512
  %524 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %525 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %524, i32 0, i32 2
  %526 = load i32, i32* %525, align 8
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %523
  %529 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %530 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %529, i32 0, i32 7
  %531 = call i32 @del_timer_sync(i32* %530)
  %532 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %533 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %532, i32 0, i32 2
  store i32 0, i32* %533, align 8
  br label %534

534:                                              ; preds = %528, %523
  %535 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %536 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %535, i32 0, i32 5
  %537 = load i32, i32* %536, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %534
  %540 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %541 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %540, i32 0, i32 7
  %542 = call i32 @del_timer_sync(i32* %541)
  %543 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %544 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %543, i32 0, i32 5
  store i32 0, i32* %544, align 4
  br label %545

545:                                              ; preds = %539, %534
  %546 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %547 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %546, i32 0, i32 3
  %548 = load i32, i32* %547, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %545
  %551 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %552 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %551, i32 0, i32 7
  %553 = call i32 @del_timer_sync(i32* %552)
  %554 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %555 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %554, i32 0, i32 3
  store i32 0, i32* %555, align 4
  br label %556

556:                                              ; preds = %550, %545
  %557 = load %struct.adapter*, %struct.adapter** %3, align 8
  %558 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %559 = call i32 @sw_led_off(%struct.adapter* %557, %struct.LED_871x* %558)
  br label %561

560:                                              ; preds = %2
  br label %561

561:                                              ; preds = %560, %556, %487, %457, %364, %301, %288, %234, %221, %162, %156, %137, %85, %72, %20
  %562 = load i32, i32* @_module_rtl8712_led_c_, align 4
  %563 = load i32, i32* @_drv_info_, align 4
  %564 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %565 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %564, i32 0, i32 6
  %566 = load i8*, i8** %565, align 8
  %567 = call i32 @RT_TRACE(i32 %562, i32 %563, i8* %566)
  br label %568

568:                                              ; preds = %561, %245, %167, %96, %31
  ret void
}

declare dso_local i32 @IS_LED_WPS_BLINKING(%struct.LED_871x*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @sw_led_off(%struct.adapter*, %struct.LED_871x*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
