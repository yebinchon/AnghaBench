; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_board* }
%struct.pcidas64_board = type { i64, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@TRIG_TIMER = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@TRIG_OTHER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pcidas64_board*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.pcidas64_board*, %struct.pcidas64_board** %14, align 8
  store %struct.pcidas64_board* %15, %struct.pcidas64_board** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 0
  %18 = call i32 @comedi_check_trigger_src(i32* %17, i32 130)
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @TRIG_TIMER, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  %23 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LAYOUT_4020, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @TRIG_OTHER, align 4
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @TRIG_FOLLOW, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @comedi_check_trigger_src(i32* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @TRIG_TIMER, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  %44 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LAYOUT_4020, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, 128
  store i32 %50, i32* %12, align 4
  br label %54

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, 130
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @comedi_check_trigger_src(i32* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 3
  %63 = call i32 @comedi_check_trigger_src(i32* %62, i32 131)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 4
  %68 = call i32 @comedi_check_trigger_src(i32* %67, i32 131)
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %271

74:                                               ; preds = %54
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @comedi_check_trigger_is_unique(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @comedi_check_trigger_is_unique(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @comedi_check_trigger_is_unique(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @comedi_check_trigger_is_unique(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 130
  br i1 %102, label %103, label %114

103:                                              ; preds = %74
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TRIG_TIMER, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %109, %103, %74
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 2, i32* %4, align 4
  br label %271

118:                                              ; preds = %114
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %129 [
    i32 128, label %122
    i32 130, label %128
  ]

122:                                              ; preds = %118
  %123 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %124 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %123, i32 0, i32 5
  %125 = call i32 @comedi_check_trigger_arg_is(i32* %124, i32 0)
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %129

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %118, %128, %122
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TRIG_TIMER, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %176

135:                                              ; preds = %129
  %136 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  %137 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @LAYOUT_4020, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 6
  %144 = call i32 @comedi_check_trigger_arg_is(i32* %143, i32 0)
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  br label %175

147:                                              ; preds = %135
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 6
  %150 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  %151 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @comedi_check_trigger_arg_min(i32* %149, i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @TRIG_TIMER, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %147
  %162 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %162, i32 0, i32 7
  %164 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %165 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %166, %169
  %171 = call i32 @comedi_check_trigger_arg_min(i32* %163, i32 %170)
  %172 = load i32, i32* %9, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %161, %147
  br label %175

175:                                              ; preds = %174, %141
  br label %176

176:                                              ; preds = %175, %129
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 8
  %179 = call i32 @comedi_check_trigger_arg_min(i32* %178, i32 1)
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %182, i32 0, i32 9
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @comedi_check_trigger_arg_is(i32* %183, i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %9, align 4
  %190 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  switch i32 %192, label %206 [
    i32 130, label %193
    i32 131, label %194
    i32 129, label %200
  ]

193:                                              ; preds = %176
  br label %207

194:                                              ; preds = %176
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 10
  %197 = call i32 @comedi_check_trigger_arg_min(i32* %196, i32 1)
  %198 = load i32, i32* %9, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %9, align 4
  br label %207

200:                                              ; preds = %176
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 10
  %203 = call i32 @comedi_check_trigger_arg_is(i32* %202, i32 0)
  %204 = load i32, i32* %9, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %9, align 4
  br label %207

206:                                              ; preds = %176
  br label %207

207:                                              ; preds = %206, %200, %194, %193
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 3, i32* %4, align 4
  br label %271

211:                                              ; preds = %207
  %212 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %213 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @TRIG_TIMER, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %245

217:                                              ; preds = %211
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %10, align 4
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %11, align 4
  %224 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %226 = call i32 @check_adc_timing(%struct.comedi_device* %224, %struct.comedi_cmd* %225)
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %227, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %217
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %232, %217
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %236, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  br label %244

244:                                              ; preds = %241, %235
  br label %245

245:                                              ; preds = %244, %211
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 4, i32* %4, align 4
  br label %271

249:                                              ; preds = %245
  %250 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %250, i32 0, i32 11
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %249
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %261 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %262 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %263 = call i32 @cb_pcidas64_ai_check_chanlist(%struct.comedi_device* %260, %struct.comedi_subdevice* %261, %struct.comedi_cmd* %262)
  %264 = load i32, i32* %9, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %9, align 4
  br label %266

266:                                              ; preds = %259, %254, %249
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  store i32 5, i32* %4, align 4
  br label %271

270:                                              ; preds = %266
  store i32 0, i32* %4, align 4
  br label %271

271:                                              ; preds = %270, %269, %248, %210, %117, %73
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @check_adc_timing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @cb_pcidas64_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
