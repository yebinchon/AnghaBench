; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__, %struct.mlme_priv, %struct.led_priv }
%struct.TYPE_2__ = type { i64 }
%struct.mlme_priv = type { %struct.sitesurvey_ctrl }
%struct.sitesurvey_ctrl = type { i32 }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x }
%struct.LED_871x = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@RT_CID_819x_CAMEO = common dso_local global i64 0, align 8
@LED_SCAN_BLINK = common dso_local global i8* null, align 8
@LED_BLINK_SLOWLY = common dso_local global i8* null, align 8
@LED_STATE_OFF = common dso_local global i8* null, align 8
@LED_STATE_ON = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_NO_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_NORMAL = common dso_local global i8* null, align 8
@LED_BLINK_LINK_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_TXRX_BLINK = common dso_local global i8* null, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS = common dso_local global i8* null, align 8
@LED_BLINK_WPS_STOP = common dso_local global i8* null, align 8
@LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @SwLedControlMode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedControlMode1(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_priv*, align 8
  %6 = alloca %struct.LED_871x*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.sitesurvey_ctrl*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 2
  store %struct.led_priv* %10, %struct.led_priv** %5, align 8
  %11 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %12 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %11, i32 0, i32 1
  store %struct.LED_871x* %12, %struct.LED_871x** %6, align 8
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 1
  store %struct.mlme_priv* %14, %struct.mlme_priv** %7, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 0
  store %struct.sitesurvey_ctrl* %16, %struct.sitesurvey_ctrl** %8, align 8
  %17 = load %struct._adapter*, %struct._adapter** %3, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RT_CID_819x_CAMEO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %25 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %24, i32 0, i32 0
  store %struct.LED_871x* %25, %struct.LED_871x** %6, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %576 [
    i32 133, label %28
    i32 137, label %28
    i32 138, label %93
    i32 134, label %158
    i32 128, label %242
    i32 135, label %242
    i32 132, label %309
    i32 131, label %309
    i32 130, label %385
    i32 129, label %471
    i32 136, label %508
  ]

28:                                               ; preds = %26, %26
  %29 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %30 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %92, label %33

33:                                               ; preds = %28
  %34 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %35 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %34, i32 0, i32 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %41 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %33
  br label %577

44:                                               ; preds = %39
  %45 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %46 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %51 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %50, i32 0, i32 6
  %52 = call i32 @del_timer(i32* %51)
  %53 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %54 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %57 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %62 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %61, i32 0, i32 6
  %63 = call i32 @del_timer(i32* %62)
  %64 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %65 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %68 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %70 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %71 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  %72 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %73 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i8*, i8** @LED_STATE_OFF, align 8
  %78 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %79 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  br label %84

80:                                               ; preds = %66
  %81 = load i8*, i8** @LED_STATE_ON, align 8
  %82 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %83 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %86 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %85, i32 0, i32 6
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %89 = call i64 @msecs_to_jiffies(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @mod_timer(i32* %86, i64 %90)
  br label %92

92:                                               ; preds = %84, %28
  br label %577

93:                                               ; preds = %26
  %94 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %95 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %157, label %98

98:                                               ; preds = %93
  %99 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %100 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %99, i32 0, i32 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %103 = icmp eq i8* %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %106 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %98
  br label %577

109:                                              ; preds = %104
  %110 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %111 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %116 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %115, i32 0, i32 6
  %117 = call i32 @del_timer(i32* %116)
  %118 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %119 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %114, %109
  %121 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %122 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %127 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %126, i32 0, i32 6
  %128 = call i32 @del_timer(i32* %127)
  %129 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %130 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  br label %131

131:                                              ; preds = %125, %120
  %132 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %133 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  %134 = load i8*, i8** @LED_BLINK_NORMAL, align 8
  %135 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  %137 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %138 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %131
  %142 = load i8*, i8** @LED_STATE_OFF, align 8
  %143 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %144 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %143, i32 0, i32 7
  store i8* %142, i8** %144, align 8
  br label %149

145:                                              ; preds = %131
  %146 = load i8*, i8** @LED_STATE_ON, align 8
  %147 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %148 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %147, i32 0, i32 7
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  %150 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %151 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %150, i32 0, i32 6
  %152 = load i64, i64* @jiffies, align 8
  %153 = load i32, i32* @LED_BLINK_LINK_INTERVAL_ALPHA, align 4
  %154 = call i64 @msecs_to_jiffies(i32 %153)
  %155 = add nsw i64 %152, %154
  %156 = call i32 @mod_timer(i32* %151, i64 %155)
  br label %157

157:                                              ; preds = %149, %93
  br label %577

158:                                              ; preds = %26
  %159 = load %struct.sitesurvey_ctrl*, %struct.sitesurvey_ctrl** %8, align 8
  %160 = getelementptr inbounds %struct.sitesurvey_ctrl, %struct.sitesurvey_ctrl* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %165 = load i32, i32* @_FW_LINKED, align 4
  %166 = call i32 @check_fwstate(%struct.mlme_priv* %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %241

169:                                              ; preds = %163, %158
  %170 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %171 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %240, label %174

174:                                              ; preds = %169
  %175 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %176 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %577

179:                                              ; preds = %174
  %180 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %181 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %186 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %185, i32 0, i32 6
  %187 = call i32 @del_timer(i32* %186)
  %188 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %189 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %188, i32 0, i32 0
  store i32 0, i32* %189, align 8
  br label %190

190:                                              ; preds = %184, %179
  %191 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %192 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %197 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %196, i32 0, i32 6
  %198 = call i32 @del_timer(i32* %197)
  %199 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %200 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %195, %190
  %202 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %203 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %208 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %207, i32 0, i32 6
  %209 = call i32 @del_timer(i32* %208)
  %210 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %211 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %210, i32 0, i32 2
  store i32 0, i32* %211, align 8
  br label %212

212:                                              ; preds = %206, %201
  %213 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %214 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %213, i32 0, i32 3
  store i32 1, i32* %214, align 4
  %215 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %216 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %217 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %216, i32 0, i32 8
  store i8* %215, i8** %217, align 8
  %218 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %219 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %218, i32 0, i32 4
  store i32 24, i32* %219, align 8
  %220 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %221 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %212
  %225 = load i8*, i8** @LED_STATE_OFF, align 8
  %226 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %227 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %226, i32 0, i32 7
  store i8* %225, i8** %227, align 8
  br label %232

228:                                              ; preds = %212
  %229 = load i8*, i8** @LED_STATE_ON, align 8
  %230 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %231 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %230, i32 0, i32 7
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %228, %224
  %233 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %234 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %233, i32 0, i32 6
  %235 = load i64, i64* @jiffies, align 8
  %236 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %237 = call i64 @msecs_to_jiffies(i32 %236)
  %238 = add nsw i64 %235, %237
  %239 = call i32 @mod_timer(i32* %234, i64 %238)
  br label %240

240:                                              ; preds = %232, %169
  br label %241

241:                                              ; preds = %240, %168
  br label %577

242:                                              ; preds = %26, %26
  %243 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %244 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %308, label %247

247:                                              ; preds = %242
  %248 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %249 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %248, i32 0, i32 8
  %250 = load i8*, i8** %249, align 8
  %251 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %252 = icmp eq i8* %250, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %247
  %254 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %255 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253, %247
  br label %577

258:                                              ; preds = %253
  %259 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %260 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %265 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %264, i32 0, i32 6
  %266 = call i32 @del_timer(i32* %265)
  %267 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %268 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  br label %269

269:                                              ; preds = %263, %258
  %270 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %271 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %276 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %275, i32 0, i32 6
  %277 = call i32 @del_timer(i32* %276)
  %278 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %279 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %278, i32 0, i32 1
  store i32 0, i32* %279, align 4
  br label %280

280:                                              ; preds = %274, %269
  %281 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %282 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %281, i32 0, i32 2
  store i32 1, i32* %282, align 8
  %283 = load i8*, i8** @LED_TXRX_BLINK, align 8
  %284 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %285 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %284, i32 0, i32 8
  store i8* %283, i8** %285, align 8
  %286 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %287 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %286, i32 0, i32 4
  store i32 2, i32* %287, align 8
  %288 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %289 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %280
  %293 = load i8*, i8** @LED_STATE_OFF, align 8
  %294 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %295 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %294, i32 0, i32 7
  store i8* %293, i8** %295, align 8
  br label %300

296:                                              ; preds = %280
  %297 = load i8*, i8** @LED_STATE_ON, align 8
  %298 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %299 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %298, i32 0, i32 7
  store i8* %297, i8** %299, align 8
  br label %300

300:                                              ; preds = %296, %292
  %301 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %302 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %301, i32 0, i32 6
  %303 = load i64, i64* @jiffies, align 8
  %304 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %305 = call i64 @msecs_to_jiffies(i32 %304)
  %306 = add nsw i64 %303, %305
  %307 = call i32 @mod_timer(i32* %302, i64 %306)
  br label %308

308:                                              ; preds = %300, %242
  br label %577

309:                                              ; preds = %26, %26
  %310 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %311 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %384, label %314

314:                                              ; preds = %309
  %315 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %316 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %321 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %320, i32 0, i32 6
  %322 = call i32 @del_timer(i32* %321)
  %323 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %324 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %323, i32 0, i32 0
  store i32 0, i32* %324, align 8
  br label %325

325:                                              ; preds = %319, %314
  %326 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %327 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %325
  %331 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %332 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %331, i32 0, i32 6
  %333 = call i32 @del_timer(i32* %332)
  %334 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %335 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %334, i32 0, i32 1
  store i32 0, i32* %335, align 4
  br label %336

336:                                              ; preds = %330, %325
  %337 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %338 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %343 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %342, i32 0, i32 6
  %344 = call i32 @del_timer(i32* %343)
  %345 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %346 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %345, i32 0, i32 2
  store i32 0, i32* %346, align 8
  br label %347

347:                                              ; preds = %341, %336
  %348 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %349 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %354 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %353, i32 0, i32 6
  %355 = call i32 @del_timer(i32* %354)
  %356 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %357 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %356, i32 0, i32 3
  store i32 0, i32* %357, align 4
  br label %358

358:                                              ; preds = %352, %347
  %359 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %360 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %359, i32 0, i32 5
  store i32 1, i32* %360, align 4
  %361 = load i8*, i8** @LED_BLINK_WPS, align 8
  %362 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %363 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %362, i32 0, i32 8
  store i8* %361, i8** %363, align 8
  %364 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %365 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %364, i32 0, i32 9
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %358
  %369 = load i8*, i8** @LED_STATE_OFF, align 8
  %370 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %371 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %370, i32 0, i32 7
  store i8* %369, i8** %371, align 8
  br label %376

372:                                              ; preds = %358
  %373 = load i8*, i8** @LED_STATE_ON, align 8
  %374 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %375 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %374, i32 0, i32 7
  store i8* %373, i8** %375, align 8
  br label %376

376:                                              ; preds = %372, %368
  %377 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %378 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %377, i32 0, i32 6
  %379 = load i64, i64* @jiffies, align 8
  %380 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %381 = call i64 @msecs_to_jiffies(i32 %380)
  %382 = add nsw i64 %379, %381
  %383 = call i32 @mod_timer(i32* %378, i64 %382)
  br label %384

384:                                              ; preds = %376, %309
  br label %577

385:                                              ; preds = %26
  %386 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %387 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %392 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %391, i32 0, i32 6
  %393 = call i32 @del_timer(i32* %392)
  %394 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %395 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %394, i32 0, i32 0
  store i32 0, i32* %395, align 8
  br label %396

396:                                              ; preds = %390, %385
  %397 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %398 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %396
  %402 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %403 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %402, i32 0, i32 6
  %404 = call i32 @del_timer(i32* %403)
  %405 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %406 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %405, i32 0, i32 1
  store i32 0, i32* %406, align 4
  br label %407

407:                                              ; preds = %401, %396
  %408 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %409 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %407
  %413 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %414 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %413, i32 0, i32 6
  %415 = call i32 @del_timer(i32* %414)
  %416 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %417 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %416, i32 0, i32 2
  store i32 0, i32* %417, align 8
  br label %418

418:                                              ; preds = %412, %407
  %419 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %420 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %418
  %424 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %425 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %424, i32 0, i32 6
  %426 = call i32 @del_timer(i32* %425)
  %427 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %428 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %427, i32 0, i32 3
  store i32 0, i32* %428, align 4
  br label %429

429:                                              ; preds = %423, %418
  %430 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %431 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %429
  %435 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %436 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %435, i32 0, i32 6
  %437 = call i32 @del_timer(i32* %436)
  br label %441

438:                                              ; preds = %429
  %439 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %440 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %439, i32 0, i32 5
  store i32 1, i32* %440, align 4
  br label %441

441:                                              ; preds = %438, %434
  %442 = load i8*, i8** @LED_BLINK_WPS_STOP, align 8
  %443 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %444 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %443, i32 0, i32 8
  store i8* %442, i8** %444, align 8
  %445 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %446 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %445, i32 0, i32 9
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %460

449:                                              ; preds = %441
  %450 = load i8*, i8** @LED_STATE_OFF, align 8
  %451 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %452 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %451, i32 0, i32 7
  store i8* %450, i8** %452, align 8
  %453 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %454 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %453, i32 0, i32 6
  %455 = load i64, i64* @jiffies, align 8
  %456 = load i32, i32* @LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA, align 4
  %457 = call i64 @msecs_to_jiffies(i32 %456)
  %458 = add nsw i64 %455, %457
  %459 = call i32 @mod_timer(i32* %454, i64 %458)
  br label %470

460:                                              ; preds = %441
  %461 = load i8*, i8** @LED_STATE_ON, align 8
  %462 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %463 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %462, i32 0, i32 7
  store i8* %461, i8** %463, align 8
  %464 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %465 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %464, i32 0, i32 6
  %466 = load i64, i64* @jiffies, align 8
  %467 = call i64 @msecs_to_jiffies(i32 0)
  %468 = add nsw i64 %466, %467
  %469 = call i32 @mod_timer(i32* %465, i64 %468)
  br label %470

470:                                              ; preds = %460, %449
  br label %577

471:                                              ; preds = %26
  %472 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %473 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %482

476:                                              ; preds = %471
  %477 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %478 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %477, i32 0, i32 6
  %479 = call i32 @del_timer(i32* %478)
  %480 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %481 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %480, i32 0, i32 5
  store i32 0, i32* %481, align 4
  br label %482

482:                                              ; preds = %476, %471
  %483 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %484 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %483, i32 0, i32 0
  store i32 1, i32* %484, align 8
  %485 = load i8*, i8** @LED_BLINK_SLOWLY, align 8
  %486 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %487 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %486, i32 0, i32 8
  store i8* %485, i8** %487, align 8
  %488 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %489 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %488, i32 0, i32 9
  %490 = load i32, i32* %489, align 8
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %482
  %493 = load i8*, i8** @LED_STATE_OFF, align 8
  %494 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %495 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %494, i32 0, i32 7
  store i8* %493, i8** %495, align 8
  br label %500

496:                                              ; preds = %482
  %497 = load i8*, i8** @LED_STATE_ON, align 8
  %498 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %499 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %498, i32 0, i32 7
  store i8* %497, i8** %499, align 8
  br label %500

500:                                              ; preds = %496, %492
  %501 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %502 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %501, i32 0, i32 6
  %503 = load i64, i64* @jiffies, align 8
  %504 = load i32, i32* @LED_BLINK_NO_LINK_INTERVAL_ALPHA, align 4
  %505 = call i64 @msecs_to_jiffies(i32 %504)
  %506 = add nsw i64 %503, %505
  %507 = call i32 @mod_timer(i32* %502, i64 %506)
  br label %577

508:                                              ; preds = %26
  %509 = load i8*, i8** @LED_STATE_OFF, align 8
  %510 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %511 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %510, i32 0, i32 8
  store i8* %509, i8** %511, align 8
  %512 = load i8*, i8** @LED_STATE_OFF, align 8
  %513 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %514 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %513, i32 0, i32 7
  store i8* %512, i8** %514, align 8
  %515 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %516 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %525

519:                                              ; preds = %508
  %520 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %521 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %520, i32 0, i32 6
  %522 = call i32 @del_timer(i32* %521)
  %523 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %524 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %523, i32 0, i32 0
  store i32 0, i32* %524, align 8
  br label %525

525:                                              ; preds = %519, %508
  %526 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %527 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %536

530:                                              ; preds = %525
  %531 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %532 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %531, i32 0, i32 6
  %533 = call i32 @del_timer(i32* %532)
  %534 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %535 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %534, i32 0, i32 1
  store i32 0, i32* %535, align 4
  br label %536

536:                                              ; preds = %530, %525
  %537 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %538 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %547

541:                                              ; preds = %536
  %542 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %543 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %542, i32 0, i32 6
  %544 = call i32 @del_timer(i32* %543)
  %545 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %546 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %545, i32 0, i32 2
  store i32 0, i32* %546, align 8
  br label %547

547:                                              ; preds = %541, %536
  %548 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %549 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %548, i32 0, i32 5
  %550 = load i32, i32* %549, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %558

552:                                              ; preds = %547
  %553 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %554 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %553, i32 0, i32 6
  %555 = call i32 @del_timer(i32* %554)
  %556 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %557 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %556, i32 0, i32 5
  store i32 0, i32* %557, align 4
  br label %558

558:                                              ; preds = %552, %547
  %559 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %560 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %559, i32 0, i32 3
  %561 = load i32, i32* %560, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %569

563:                                              ; preds = %558
  %564 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %565 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %564, i32 0, i32 6
  %566 = call i32 @del_timer(i32* %565)
  %567 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %568 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %567, i32 0, i32 3
  store i32 0, i32* %568, align 4
  br label %569

569:                                              ; preds = %563, %558
  %570 = load %struct.LED_871x*, %struct.LED_871x** %6, align 8
  %571 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %570, i32 0, i32 6
  %572 = load i64, i64* @jiffies, align 8
  %573 = call i64 @msecs_to_jiffies(i32 0)
  %574 = add nsw i64 %572, %573
  %575 = call i32 @mod_timer(i32* %571, i64 %574)
  br label %577

576:                                              ; preds = %26
  br label %577

577:                                              ; preds = %43, %108, %178, %257, %576, %569, %500, %470, %384, %308, %241, %157, %92
  ret void
}

declare dso_local i32 @IS_LED_WPS_BLINKING(%struct.LED_871x*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
