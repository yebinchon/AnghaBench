; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct._adapter* }
%struct._adapter = type { %struct.eeprom_priv, %struct.mlme_priv, %struct.led_priv }
%struct.eeprom_priv = type { i64 }
%struct.mlme_priv = type { i32 }
%struct.led_priv = type { %struct.LED_871x }

@RT_CID_819x_CAMEO = common dso_local global i64 0, align 8
@LED_STATE_ON = common dso_local global i64 0, align 8
@RT_CID_DEFAULT = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_STATE_OFF = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_NO_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink1(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.led_priv*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.eeprom_priv*, align 8
  %7 = alloca %struct.LED_871x*, align 8
  %8 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %9 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %10 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %9, i32 0, i32 11
  %11 = load %struct._adapter*, %struct._adapter** %10, align 8
  store %struct._adapter* %11, %struct._adapter** %3, align 8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 2
  store %struct.led_priv* %13, %struct.led_priv** %4, align 8
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 1
  store %struct.mlme_priv* %15, %struct.mlme_priv** %5, align 8
  %16 = load %struct._adapter*, %struct._adapter** %3, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 0
  store %struct.eeprom_priv* %17, %struct.eeprom_priv** %6, align 8
  %18 = load %struct.led_priv*, %struct.led_priv** %4, align 8
  %19 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %18, i32 0, i32 0
  store %struct.LED_871x* %19, %struct.LED_871x** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.eeprom_priv*, %struct.eeprom_priv** %6, align 8
  %21 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RT_CID_819x_CAMEO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.led_priv*, %struct.led_priv** %4, align 8
  %27 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %26, i32 0, i32 0
  store %struct.LED_871x* %27, %struct.LED_871x** %2, align 8
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %30 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LED_STATE_ON, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct._adapter*, %struct._adapter** %3, align 8
  %36 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %37 = call i32 @SwLedOn(%struct._adapter* %35, %struct.LED_871x* %36)
  br label %42

38:                                               ; preds = %28
  %39 = load %struct._adapter*, %struct._adapter** %3, align 8
  %40 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %41 = call i32 @SwLedOff(%struct._adapter* %39, %struct.LED_871x* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.eeprom_priv*, %struct.eeprom_priv** %6, align 8
  %44 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RT_CID_DEFAULT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %98

48:                                               ; preds = %42
  %49 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %50 = load i32, i32* @_FW_LINKED, align 4
  %51 = call i64 @check_fwstate(%struct.mlme_priv* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %55 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct._adapter*, %struct._adapter** %3, align 8
  %60 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %61 = call i32 @SwLedOn(%struct._adapter* %59, %struct.LED_871x* %60)
  %62 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %63 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %74

64:                                               ; preds = %53
  %65 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %66 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %65, i32 0, i32 9
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct._adapter*, %struct._adapter** %3, align 8
  %71 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %72 = call i32 @SwLedOn(%struct._adapter* %70, %struct.LED_871x* %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %58
  br label %97

75:                                               ; preds = %48
  %76 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %77 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load %struct._adapter*, %struct._adapter** %3, align 8
  %82 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %83 = call i32 @SwLedOff(%struct._adapter* %81, %struct.LED_871x* %82)
  %84 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %85 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  br label %96

86:                                               ; preds = %75
  %87 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %88 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct._adapter*, %struct._adapter** %3, align 8
  %93 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %94 = call i32 @SwLedOff(%struct._adapter* %92, %struct.LED_871x* %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %95, %80
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %42
  %99 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %100 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %425 [
    i32 132, label %102
    i32 133, label %124
    i32 129, label %146
    i32 128, label %248
    i32 131, label %352
    i32 130, label %374
  ]

102:                                              ; preds = %98
  %103 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %104 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** @LED_STATE_OFF, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %111 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %116

112:                                              ; preds = %102
  %113 = load i64, i64* @LED_STATE_ON, align 8
  %114 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %115 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %118 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %117, i32 0, i32 8
  %119 = load i64, i64* @jiffies, align 8
  %120 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %121 = call i64 @msecs_to_jiffies(i32 %120)
  %122 = add nsw i64 %119, %121
  %123 = call i32 @mod_timer(i32* %118, i64 %122)
  br label %426

124:                                              ; preds = %98
  %125 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %126 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** @LED_STATE_OFF, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %133 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %138

134:                                              ; preds = %124
  %135 = load i64, i64* @LED_STATE_ON, align 8
  %136 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %137 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %129
  %139 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %140 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %139, i32 0, i32 8
  %141 = load i64, i64* @jiffies, align 8
  %142 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %143 = call i64 @msecs_to_jiffies(i32 %142)
  %144 = add nsw i64 %141, %143
  %145 = call i32 @mod_timer(i32* %140, i64 %144)
  br label %426

146:                                              ; preds = %98
  %147 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %148 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 8
  %151 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %152 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  store i32 1, i32* %8, align 4
  br label %156

156:                                              ; preds = %155, %146
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %225

159:                                              ; preds = %156
  %160 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %161 = load i32, i32* @_FW_LINKED, align 4
  %162 = call i64 @check_fwstate(%struct.mlme_priv* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %159
  %165 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %166 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %165, i32 0, i32 3
  store i32 1, i32* %166, align 8
  %167 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %168 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %167, i32 0, i32 2
  store i32 133, i32* %168, align 4
  %169 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %170 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %169, i32 0, i32 9
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load i8*, i8** @LED_STATE_OFF, align 8
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %177 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %182

178:                                              ; preds = %164
  %179 = load i64, i64* @LED_STATE_ON, align 8
  %180 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %181 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %178, %173
  %183 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %184 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %183, i32 0, i32 8
  %185 = load i64, i64* @jiffies, align 8
  %186 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %187 = call i64 @msecs_to_jiffies(i32 %186)
  %188 = add nsw i64 %185, %187
  %189 = call i32 @mod_timer(i32* %184, i64 %188)
  br label %222

190:                                              ; preds = %159
  %191 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %192 = load i32, i32* @_FW_LINKED, align 4
  %193 = call i64 @check_fwstate(%struct.mlme_priv* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %221, label %195

195:                                              ; preds = %190
  %196 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %197 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %196, i32 0, i32 4
  store i32 1, i32* %197, align 4
  %198 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %199 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %198, i32 0, i32 2
  store i32 132, i32* %199, align 4
  %200 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %201 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %200, i32 0, i32 9
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %195
  %205 = load i8*, i8** @LED_STATE_OFF, align 8
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %208 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  br label %213

209:                                              ; preds = %195
  %210 = load i64, i64* @LED_STATE_ON, align 8
  %211 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %212 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %209, %204
  %214 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %215 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %214, i32 0, i32 8
  %216 = load i64, i64* @jiffies, align 8
  %217 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %218 = call i64 @msecs_to_jiffies(i32 %217)
  %219 = add nsw i64 %216, %218
  %220 = call i32 @mod_timer(i32* %215, i64 %219)
  br label %221

221:                                              ; preds = %213, %190
  br label %222

222:                                              ; preds = %221, %182
  %223 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %224 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %223, i32 0, i32 5
  store i32 0, i32* %224, align 8
  br label %247

225:                                              ; preds = %156
  %226 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %227 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i8*, i8** @LED_STATE_OFF, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %234 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  br label %239

235:                                              ; preds = %225
  %236 = load i64, i64* @LED_STATE_ON, align 8
  %237 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %238 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %235, %230
  %240 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %241 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %240, i32 0, i32 8
  %242 = load i64, i64* @jiffies, align 8
  %243 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %244 = call i64 @msecs_to_jiffies(i32 %243)
  %245 = add nsw i64 %242, %244
  %246 = call i32 @mod_timer(i32* %241, i64 %245)
  br label %247

247:                                              ; preds = %239, %222
  br label %426

248:                                              ; preds = %98
  %249 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %250 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %250, align 8
  %253 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %254 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %253, i32 0, i32 10
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  store i32 1, i32* %8, align 4
  br label %258

258:                                              ; preds = %257, %248
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %329

261:                                              ; preds = %258
  %262 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %263 = load i32, i32* @_FW_LINKED, align 4
  %264 = call i64 @check_fwstate(%struct.mlme_priv* %262, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %292

266:                                              ; preds = %261
  %267 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %268 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %267, i32 0, i32 3
  store i32 1, i32* %268, align 8
  %269 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %270 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %269, i32 0, i32 2
  store i32 133, i32* %270, align 4
  %271 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %272 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %271, i32 0, i32 9
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %266
  %276 = load i8*, i8** @LED_STATE_OFF, align 8
  %277 = ptrtoint i8* %276 to i64
  %278 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %279 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  br label %284

280:                                              ; preds = %266
  %281 = load i64, i64* @LED_STATE_ON, align 8
  %282 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %283 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  br label %284

284:                                              ; preds = %280, %275
  %285 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %286 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %285, i32 0, i32 8
  %287 = load i64, i64* @jiffies, align 8
  %288 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %289 = call i64 @msecs_to_jiffies(i32 %288)
  %290 = add nsw i64 %287, %289
  %291 = call i32 @mod_timer(i32* %286, i64 %290)
  br label %324

292:                                              ; preds = %261
  %293 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %294 = load i32, i32* @_FW_LINKED, align 4
  %295 = call i64 @check_fwstate(%struct.mlme_priv* %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %323, label %297

297:                                              ; preds = %292
  %298 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %299 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %298, i32 0, i32 4
  store i32 1, i32* %299, align 4
  %300 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %301 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %300, i32 0, i32 2
  store i32 132, i32* %301, align 4
  %302 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %303 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %302, i32 0, i32 9
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %297
  %307 = load i8*, i8** @LED_STATE_OFF, align 8
  %308 = ptrtoint i8* %307 to i64
  %309 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %310 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  br label %315

311:                                              ; preds = %297
  %312 = load i64, i64* @LED_STATE_ON, align 8
  %313 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %314 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %313, i32 0, i32 0
  store i64 %312, i64* %314, align 8
  br label %315

315:                                              ; preds = %311, %306
  %316 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %317 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %316, i32 0, i32 8
  %318 = load i64, i64* @jiffies, align 8
  %319 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %320 = call i64 @msecs_to_jiffies(i32 %319)
  %321 = add nsw i64 %318, %320
  %322 = call i32 @mod_timer(i32* %317, i64 %321)
  br label %323

323:                                              ; preds = %315, %292
  br label %324

324:                                              ; preds = %323, %284
  %325 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %326 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %325, i32 0, i32 10
  store i32 0, i32* %326, align 8
  %327 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %328 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %327, i32 0, i32 6
  store i32 0, i32* %328, align 4
  br label %351

329:                                              ; preds = %258
  %330 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %331 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %330, i32 0, i32 9
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %329
  %335 = load i8*, i8** @LED_STATE_OFF, align 8
  %336 = ptrtoint i8* %335 to i64
  %337 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %338 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %337, i32 0, i32 0
  store i64 %336, i64* %338, align 8
  br label %343

339:                                              ; preds = %329
  %340 = load i64, i64* @LED_STATE_ON, align 8
  %341 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %342 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %341, i32 0, i32 0
  store i64 %340, i64* %342, align 8
  br label %343

343:                                              ; preds = %339, %334
  %344 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %345 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %344, i32 0, i32 8
  %346 = load i64, i64* @jiffies, align 8
  %347 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %348 = call i64 @msecs_to_jiffies(i32 %347)
  %349 = add nsw i64 %346, %348
  %350 = call i32 @mod_timer(i32* %345, i64 %349)
  br label %351

351:                                              ; preds = %343, %324
  br label %426

352:                                              ; preds = %98
  %353 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %354 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %353, i32 0, i32 9
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = load i8*, i8** @LED_STATE_OFF, align 8
  %359 = ptrtoint i8* %358 to i64
  %360 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %361 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %360, i32 0, i32 0
  store i64 %359, i64* %361, align 8
  br label %366

362:                                              ; preds = %352
  %363 = load i64, i64* @LED_STATE_ON, align 8
  %364 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %365 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %364, i32 0, i32 0
  store i64 %363, i64* %365, align 8
  br label %366

366:                                              ; preds = %362, %357
  %367 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %368 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %367, i32 0, i32 8
  %369 = load i64, i64* @jiffies, align 8
  %370 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %371 = call i64 @msecs_to_jiffies(i32 %370)
  %372 = add nsw i64 %369, %371
  %373 = call i32 @mod_timer(i32* %368, i64 %372)
  br label %426

374:                                              ; preds = %98
  %375 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %376 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @LED_STATE_ON, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %392

380:                                              ; preds = %374
  %381 = load i8*, i8** @LED_STATE_OFF, align 8
  %382 = ptrtoint i8* %381 to i64
  %383 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %384 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %383, i32 0, i32 0
  store i64 %382, i64* %384, align 8
  %385 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %386 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %385, i32 0, i32 8
  %387 = load i64, i64* @jiffies, align 8
  %388 = load i32, i32* @LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA, align 4
  %389 = call i64 @msecs_to_jiffies(i32 %388)
  %390 = add nsw i64 %387, %389
  %391 = call i32 @mod_timer(i32* %386, i64 %390)
  store i32 0, i32* %8, align 4
  br label %393

392:                                              ; preds = %374
  store i32 1, i32* %8, align 4
  br label %393

393:                                              ; preds = %392, %380
  %394 = load i32, i32* %8, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %422

396:                                              ; preds = %393
  %397 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %398 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %397, i32 0, i32 3
  store i32 1, i32* %398, align 8
  %399 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %400 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %399, i32 0, i32 2
  store i32 133, i32* %400, align 4
  %401 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %402 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %401, i32 0, i32 9
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %396
  %406 = load i8*, i8** @LED_STATE_OFF, align 8
  %407 = ptrtoint i8* %406 to i64
  %408 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %409 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %408, i32 0, i32 0
  store i64 %407, i64* %409, align 8
  br label %414

410:                                              ; preds = %396
  %411 = load i64, i64* @LED_STATE_ON, align 8
  %412 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %413 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %412, i32 0, i32 0
  store i64 %411, i64* %413, align 8
  br label %414

414:                                              ; preds = %410, %405
  %415 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %416 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %415, i32 0, i32 8
  %417 = load i64, i64* @jiffies, align 8
  %418 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %419 = call i64 @msecs_to_jiffies(i32 %418)
  %420 = add nsw i64 %417, %419
  %421 = call i32 @mod_timer(i32* %416, i64 %420)
  br label %422

422:                                              ; preds = %414, %393
  %423 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %424 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %423, i32 0, i32 7
  store i32 0, i32* %424, align 8
  br label %426

425:                                              ; preds = %98
  br label %426

426:                                              ; preds = %425, %422, %366, %351, %247, %138, %116
  ret void
}

declare dso_local i32 @SwLedOn(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
