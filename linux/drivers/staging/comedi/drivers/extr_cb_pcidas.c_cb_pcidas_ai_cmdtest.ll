; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.cb_pcidas_board* }
%struct.cb_pcidas_board = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CR_FLAGS_MASK = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @cb_pcidas_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.cb_pcidas_board*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %12, align 8
  store %struct.cb_pcidas_board* %13, %struct.cb_pcidas_board** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = call i32 @comedi_check_trigger_src(i32* %15, i32 129)
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* @TRIG_FOLLOW, align 4
  %22 = load i32, i32* @TRIG_TIMER, align 4
  %23 = or i32 %21, %22
  %24 = or i32 %23, 129
  %25 = call i32 @comedi_check_trigger_src(i32* %20, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 2
  %30 = load i32, i32* @TRIG_TIMER, align 4
  %31 = or i32 %30, 128
  %32 = or i32 %31, 129
  %33 = call i32 @comedi_check_trigger_src(i32* %29, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* @TRIG_COUNT, align 4
  %39 = call i32 @comedi_check_trigger_src(i32* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 4
  %44 = load i32, i32* @TRIG_COUNT, align 4
  %45 = load i32, i32* @TRIG_NONE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @comedi_check_trigger_src(i32* %43, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %333

53:                                               ; preds = %3
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @comedi_check_trigger_is_unique(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @comedi_check_trigger_is_unique(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @comedi_check_trigger_is_unique(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @comedi_check_trigger_is_unique(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TRIG_FOLLOW, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %53
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 128
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %88, %83, %53
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TRIG_FOLLOW, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 128
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %104, %99, %93
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 129
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 129
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 129
  br i1 %123, label %124, label %129

124:                                              ; preds = %119, %114
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %124, %119, %109
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 2, i32* %4, align 4
  br label %333

133:                                              ; preds = %129
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %197 [
    i32 128, label %137
    i32 129, label %143
  ]

137:                                              ; preds = %133
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 5
  %140 = call i32 @comedi_check_trigger_arg_is(i32* %139, i32 0)
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %197

143:                                              ; preds = %133
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @CR_FLAGS_MASK, align 4
  %148 = load i32, i32* @CR_EDGE, align 4
  %149 = load i32, i32* @CR_INVERT, align 4
  %150 = or i32 %148, %149
  %151 = xor i32 %150, -1
  %152 = and i32 %147, %151
  %153 = and i32 %146, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %143
  %156 = load i32, i32* @CR_FLAGS_MASK, align 4
  %157 = load i32, i32* @CR_EDGE, align 4
  %158 = load i32, i32* @CR_INVERT, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = and i32 %156, %160
  %162 = xor i32 %161, -1
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %155, %143
  %172 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %8, align 8
  %173 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %196, label %176

176:                                              ; preds = %171
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @CR_INVERT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %176
  %184 = load i32, i32* @CR_FLAGS_MASK, align 4
  %185 = load i32, i32* @CR_INVERT, align 4
  %186 = xor i32 %185, -1
  %187 = and i32 %184, %186
  %188 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  %194 = load i32, i32* %9, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %183, %176, %171
  br label %197

197:                                              ; preds = %133, %196, %137
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @TRIG_TIMER, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %216

203:                                              ; preds = %197
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 6
  %206 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %8, align 8
  %207 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = call i32 @comedi_check_trigger_arg_min(i32* %205, i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %203, %197
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @TRIG_TIMER, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %216
  %223 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %223, i32 0, i32 8
  %225 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %8, align 8
  %226 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @comedi_check_trigger_arg_min(i32* %224, i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %222, %216
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 9
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @comedi_check_trigger_arg_is(i32* %233, i32 %236)
  %238 = load i32, i32* %9, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %9, align 4
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @TRIG_COUNT, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %231
  %246 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %247 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %246, i32 0, i32 10
  %248 = call i32 @comedi_check_trigger_arg_min(i32* %247, i32 1)
  %249 = load i32, i32* %9, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %9, align 4
  br label %257

251:                                              ; preds = %231
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 10
  %254 = call i32 @comedi_check_trigger_arg_is(i32* %253, i32 0)
  %255 = load i32, i32* %9, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %251, %245
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  store i32 3, i32* %4, align 4
  br label %333

261:                                              ; preds = %257
  %262 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %263 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @TRIG_TIMER, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %284

267:                                              ; preds = %261
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  store i32 %270, i32* %10, align 4
  %271 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %272 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %275 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %274, i32 0, i32 12
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %273, i32* %10, i32 %276)
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %278, i32 0, i32 6
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @comedi_check_trigger_arg_is(i32* %279, i32 %280)
  %282 = load i32, i32* %9, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %9, align 4
  br label %284

284:                                              ; preds = %267, %261
  %285 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %286 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @TRIG_TIMER, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %307

290:                                              ; preds = %284
  %291 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %292 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  store i32 %293, i32* %10, align 4
  %294 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %295 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %298 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %296, i32* %10, i32 %299)
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 8
  %303 = load i32, i32* %10, align 4
  %304 = call i32 @comedi_check_trigger_arg_is(i32* %302, i32 %303)
  %305 = load i32, i32* %9, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %9, align 4
  br label %307

307:                                              ; preds = %290, %284
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i32 4, i32* %4, align 4
  br label %333

311:                                              ; preds = %307
  %312 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %312, i32 0, i32 11
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %328

316:                                              ; preds = %311
  %317 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %318 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %316
  %322 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %323 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %324 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %325 = call i32 @cb_pcidas_ai_check_chanlist(%struct.comedi_device* %322, %struct.comedi_subdevice* %323, %struct.comedi_cmd* %324)
  %326 = load i32, i32* %9, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %9, align 4
  br label %328

328:                                              ; preds = %321, %316, %311
  %329 = load i32, i32* %9, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  store i32 5, i32* %4, align 4
  br label %333

332:                                              ; preds = %328
  store i32 0, i32* %4, align 4
  br label %333

333:                                              ; preds = %332, %331, %310, %260, %132, %52
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @cb_pcidas_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
