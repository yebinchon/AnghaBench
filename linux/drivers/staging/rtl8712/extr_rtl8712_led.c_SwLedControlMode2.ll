; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode2.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @SwLedControlMode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedControlMode2(%struct._adapter* %0, i32 %1) #0 {
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
  switch i32 %14, label %295 [
    i32 134, label %15
    i32 128, label %73
    i32 135, label %73
    i32 138, label %123
    i32 132, label %158
    i32 131, label %158
    i32 130, label %201
    i32 129, label %216
    i32 133, label %231
    i32 137, label %231
    i32 136, label %249
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
  br label %296

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
  br label %296

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
  br label %296

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
  br label %296

123:                                              ; preds = %2
  %124 = load i8*, i8** @LED_STATE_ON, align 8
  %125 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %126 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @LED_STATE_ON, align 8
  %128 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %129 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %131 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 4
  %137 = call i32 @del_timer(i32* %136)
  %138 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %139 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %134, %123
  %141 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %142 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %147 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %146, i32 0, i32 4
  %148 = call i32 @del_timer(i32* %147)
  %149 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %150 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %153 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %152, i32 0, i32 4
  %154 = load i64, i64* @jiffies, align 8
  %155 = call i64 @msecs_to_jiffies(i32 0)
  %156 = add nsw i64 %154, %155
  %157 = call i32 @mod_timer(i32* %153, i64 %156)
  br label %296

158:                                              ; preds = %2, %2
  %159 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %160 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %200, label %163

163:                                              ; preds = %158
  %164 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %165 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %170 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %169, i32 0, i32 4
  %171 = call i32 @del_timer(i32* %170)
  %172 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %173 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %176 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %181 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %180, i32 0, i32 4
  %182 = call i32 @del_timer(i32* %181)
  %183 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %184 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %179, %174
  %186 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %187 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %186, i32 0, i32 3
  store i32 1, i32* %187, align 4
  %188 = load i8*, i8** @LED_STATE_ON, align 8
  %189 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %190 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %189, i32 0, i32 6
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** @LED_STATE_ON, align 8
  %192 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %193 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %192, i32 0, i32 5
  store i8* %191, i8** %193, align 8
  %194 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %195 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %194, i32 0, i32 4
  %196 = load i64, i64* @jiffies, align 8
  %197 = call i64 @msecs_to_jiffies(i32 0)
  %198 = add nsw i64 %196, %197
  %199 = call i32 @mod_timer(i32* %195, i64 %198)
  br label %200

200:                                              ; preds = %185, %158
  br label %296

201:                                              ; preds = %2
  %202 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %203 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %202, i32 0, i32 3
  store i32 0, i32* %203, align 4
  %204 = load i8*, i8** @LED_STATE_ON, align 8
  %205 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %206 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %205, i32 0, i32 6
  store i8* %204, i8** %206, align 8
  %207 = load i8*, i8** @LED_STATE_ON, align 8
  %208 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %209 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %211 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %210, i32 0, i32 4
  %212 = load i64, i64* @jiffies, align 8
  %213 = call i64 @msecs_to_jiffies(i32 0)
  %214 = add nsw i64 %212, %213
  %215 = call i32 @mod_timer(i32* %211, i64 %214)
  br label %296

216:                                              ; preds = %2
  %217 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %218 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %217, i32 0, i32 3
  store i32 0, i32* %218, align 4
  %219 = load i8*, i8** @LED_STATE_OFF, align 8
  %220 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %221 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @LED_STATE_OFF, align 8
  %223 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %224 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %226 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %225, i32 0, i32 4
  %227 = load i64, i64* @jiffies, align 8
  %228 = call i64 @msecs_to_jiffies(i32 0)
  %229 = add nsw i64 %227, %228
  %230 = call i32 @mod_timer(i32* %226, i64 %229)
  br label %296

231:                                              ; preds = %2, %2
  %232 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %233 = call i32 @IS_LED_BLINKING(%struct.LED_871x* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %231
  %236 = load i8*, i8** @LED_STATE_OFF, align 8
  %237 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %238 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %237, i32 0, i32 6
  store i8* %236, i8** %238, align 8
  %239 = load i8*, i8** @LED_STATE_OFF, align 8
  %240 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %241 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %240, i32 0, i32 5
  store i8* %239, i8** %241, align 8
  %242 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %243 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %242, i32 0, i32 4
  %244 = load i64, i64* @jiffies, align 8
  %245 = call i64 @msecs_to_jiffies(i32 0)
  %246 = add nsw i64 %244, %245
  %247 = call i32 @mod_timer(i32* %243, i64 %246)
  br label %248

248:                                              ; preds = %235, %231
  br label %296

249:                                              ; preds = %2
  %250 = load i8*, i8** @LED_STATE_OFF, align 8
  %251 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %252 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %251, i32 0, i32 6
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** @LED_STATE_OFF, align 8
  %254 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %255 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %254, i32 0, i32 5
  store i8* %253, i8** %255, align 8
  %256 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %257 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %249
  %261 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %262 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %261, i32 0, i32 4
  %263 = call i32 @del_timer(i32* %262)
  %264 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %265 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %264, i32 0, i32 1
  store i32 0, i32* %265, align 4
  br label %266

266:                                              ; preds = %260, %249
  %267 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %268 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %273 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %272, i32 0, i32 4
  %274 = call i32 @del_timer(i32* %273)
  %275 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %276 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %275, i32 0, i32 0
  store i32 0, i32* %276, align 8
  br label %277

277:                                              ; preds = %271, %266
  %278 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %279 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %284 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %283, i32 0, i32 4
  %285 = call i32 @del_timer(i32* %284)
  %286 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %287 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %286, i32 0, i32 3
  store i32 0, i32* %287, align 4
  br label %288

288:                                              ; preds = %282, %277
  %289 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %290 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %289, i32 0, i32 4
  %291 = load i64, i64* @jiffies, align 8
  %292 = call i64 @msecs_to_jiffies(i32 0)
  %293 = add nsw i64 %291, %292
  %294 = call i32 @mod_timer(i32* %290, i64 %293)
  br label %296

295:                                              ; preds = %2
  br label %296

296:                                              ; preds = %31, %93, %295, %288, %248, %216, %201, %200, %151, %122, %72
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
