; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct._adapter* }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@LED_STATE_ON = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_STATE_OFF = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink3(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %6 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %7 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %6, i32 0, i32 8
  %8 = load %struct._adapter*, %struct._adapter** %7, align 8
  store %struct._adapter* %8, %struct._adapter** %3, align 8
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.mlme_priv* %10, %struct.mlme_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %12 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LED_STATE_ON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct._adapter*, %struct._adapter** %3, align 8
  %18 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %19 = call i32 @SwLedOn(%struct._adapter* %17, %struct.LED_871x* %18)
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %22 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 130
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct._adapter*, %struct._adapter** %3, align 8
  %27 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %28 = call i32 @SwLedOff(%struct._adapter* %26, %struct.LED_871x* %27)
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %32 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %262 [
    i32 129, label %34
    i32 128, label %119
    i32 131, label %204
    i32 130, label %226
  ]

34:                                               ; preds = %30
  %35 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %36 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %40 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %49 = load i32, i32* @_FW_LINKED, align 4
  %50 = call i32 @check_fwstate(%struct.mlme_priv* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load i64, i64* @LED_STATE_ON, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %56 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @LED_STATE_ON, align 8
  %58 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %59 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %61 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = load %struct._adapter*, %struct._adapter** %3, align 8
  %66 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %67 = call i32 @SwLedOn(%struct._adapter* %65, %struct.LED_871x* %66)
  br label %68

68:                                               ; preds = %64, %52
  br label %93

69:                                               ; preds = %47
  %70 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %71 = load i32, i32* @_FW_LINKED, align 4
  %72 = call i32 @check_fwstate(%struct.mlme_priv* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** @LED_STATE_OFF, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %78 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** @LED_STATE_OFF, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %82 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %84 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct._adapter*, %struct._adapter** %3, align 8
  %89 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %90 = call i32 @SwLedOff(%struct._adapter* %88, %struct.LED_871x* %89)
  br label %91

91:                                               ; preds = %87, %74
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %68
  %94 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %95 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %94, i32 0, i32 2
  store i32 0, i32* %95, align 4
  br label %118

96:                                               ; preds = %44
  %97 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %98 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** @LED_STATE_OFF, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %105 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %110

106:                                              ; preds = %96
  %107 = load i64, i64* @LED_STATE_ON, align 8
  %108 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %109 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %101
  %111 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %112 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %111, i32 0, i32 5
  %113 = load i64, i64* @jiffies, align 8
  %114 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %115 = call i64 @msecs_to_jiffies(i32 %114)
  %116 = add nsw i64 %113, %115
  %117 = call i32 @mod_timer(i32* %112, i64 %116)
  br label %118

118:                                              ; preds = %110, %93
  br label %263

119:                                              ; preds = %30
  %120 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %121 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %125 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  store i32 1, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %119
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %181

132:                                              ; preds = %129
  %133 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %134 = load i32, i32* @_FW_LINKED, align 4
  %135 = call i32 @check_fwstate(%struct.mlme_priv* %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load i64, i64* @LED_STATE_ON, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %141 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* @LED_STATE_ON, align 8
  %143 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %144 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %146 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %137
  %150 = load %struct._adapter*, %struct._adapter** %3, align 8
  %151 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %152 = call i32 @SwLedOn(%struct._adapter* %150, %struct.LED_871x* %151)
  br label %153

153:                                              ; preds = %149, %137
  br label %178

154:                                              ; preds = %132
  %155 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %156 = load i32, i32* @_FW_LINKED, align 4
  %157 = call i32 @check_fwstate(%struct.mlme_priv* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %177, label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** @LED_STATE_OFF, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %163 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load i8*, i8** @LED_STATE_OFF, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %167 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %169 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %159
  %173 = load %struct._adapter*, %struct._adapter** %3, align 8
  %174 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %175 = call i32 @SwLedOff(%struct._adapter* %173, %struct.LED_871x* %174)
  br label %176

176:                                              ; preds = %172, %159
  br label %177

177:                                              ; preds = %176, %154
  br label %178

178:                                              ; preds = %177, %153
  %179 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %180 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %179, i32 0, i32 3
  store i32 0, i32* %180, align 8
  br label %203

181:                                              ; preds = %129
  %182 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %183 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i8*, i8** @LED_STATE_OFF, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %190 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  br label %195

191:                                              ; preds = %181
  %192 = load i64, i64* @LED_STATE_ON, align 8
  %193 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %194 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %191, %186
  %196 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %197 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %196, i32 0, i32 5
  %198 = load i64, i64* @jiffies, align 8
  %199 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %200 = call i64 @msecs_to_jiffies(i32 %199)
  %201 = add nsw i64 %198, %200
  %202 = call i32 @mod_timer(i32* %197, i64 %201)
  br label %203

203:                                              ; preds = %195, %178
  br label %263

204:                                              ; preds = %30
  %205 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %206 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i8*, i8** @LED_STATE_OFF, align 8
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %213 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  br label %218

214:                                              ; preds = %204
  %215 = load i64, i64* @LED_STATE_ON, align 8
  %216 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %217 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %214, %209
  %219 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %220 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %219, i32 0, i32 5
  %221 = load i64, i64* @jiffies, align 8
  %222 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %223 = call i64 @msecs_to_jiffies(i32 %222)
  %224 = add nsw i64 %221, %223
  %225 = call i32 @mod_timer(i32* %220, i64 %224)
  br label %263

226:                                              ; preds = %30
  %227 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %228 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @LED_STATE_ON, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %226
  %233 = load i8*, i8** @LED_STATE_OFF, align 8
  %234 = ptrtoint i8* %233 to i64
  %235 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %236 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  %237 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %238 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %237, i32 0, i32 5
  %239 = load i64, i64* @jiffies, align 8
  %240 = load i32, i32* @LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA, align 4
  %241 = call i64 @msecs_to_jiffies(i32 %240)
  %242 = add nsw i64 %239, %241
  %243 = call i32 @mod_timer(i32* %238, i64 %242)
  store i32 0, i32* %5, align 4
  br label %245

244:                                              ; preds = %226
  store i32 1, i32* %5, align 4
  br label %245

245:                                              ; preds = %244, %232
  %246 = load i32, i32* %5, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load i64, i64* @LED_STATE_ON, align 8
  %250 = trunc i64 %249 to i32
  %251 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %252 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load i64, i64* @LED_STATE_ON, align 8
  %254 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %255 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  %256 = load %struct._adapter*, %struct._adapter** %3, align 8
  %257 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %258 = call i32 @SwLedOn(%struct._adapter* %256, %struct.LED_871x* %257)
  %259 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %260 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %259, i32 0, i32 4
  store i32 0, i32* %260, align 4
  br label %261

261:                                              ; preds = %248, %245
  br label %263

262:                                              ; preds = %30
  br label %263

263:                                              ; preds = %262, %261, %218, %203, %118
  ret void
}

declare dso_local i32 @SwLedOn(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
