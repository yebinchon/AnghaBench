; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32, i64, i64, i32 }
%struct.ni_board_struct = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@NI_AI_StartTrigger = common dso_local global i32 0, align 4
@NI_AI_SampleClock = common dso_local global i32 0, align 4
@NI_AI_ConvertClock = common dso_local global i32 0, align 4
@num_adc_stages_611x = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ni_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.ni_board_struct*, align 8
  %9 = alloca %struct.ni_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.ni_board_struct*, %struct.ni_board_struct** %16, align 8
  store %struct.ni_board_struct* %17, %struct.ni_board_struct** %8, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.ni_private*, %struct.ni_private** %19, align 8
  store %struct.ni_private* %20, %struct.ni_private** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = call i32 @comedi_check_trigger_src(i32* %22, i32 131)
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* @TRIG_TIMER, align 4
  %29 = or i32 %28, 130
  %30 = call i32 @comedi_check_trigger_src(i32* %27, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @TRIG_TIMER, align 4
  %34 = or i32 %33, 130
  store i32 %34, i32* %11, align 4
  %35 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %36 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %41 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %3
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, 128
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 2
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @comedi_check_trigger_src(i32* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 3
  %56 = load i32, i32* @TRIG_COUNT, align 4
  %57 = call i32 @comedi_check_trigger_src(i32* %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 4
  %62 = load i32, i32* @TRIG_COUNT, align 4
  %63 = load i32, i32* @TRIG_NONE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @comedi_check_trigger_src(i32* %61, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %396

71:                                               ; preds = %47
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @comedi_check_trigger_is_unique(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @comedi_check_trigger_is_unique(i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @comedi_check_trigger_is_unique(i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @comedi_check_trigger_is_unique(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %71
  store i32 2, i32* %4, align 4
  br label %396

99:                                               ; preds = %71
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %120 [
    i32 128, label %103
    i32 129, label %103
    i32 130, label %109
  ]

103:                                              ; preds = %99, %99
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 5
  %106 = call i32 @comedi_check_trigger_arg_is(i32* %105, i32 0)
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %120

109:                                              ; preds = %99
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @CR_CHAN(i32 %112)
  %114 = load i32, i32* @NI_AI_StartTrigger, align 4
  %115 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %116 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %115, i32 0, i32 3
  %117 = call i32 @ni_check_trigger_arg_roffs(i32 %113, i32 %114, i32* %116, i32 1)
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %99, %109, %103
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @TRIG_TIMER, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %120
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 6
  %129 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ni_min_ai_scan_period_ns(%struct.comedi_device* %129, i32 %132)
  %134 = call i32 @comedi_check_trigger_arg_min(i32* %128, i32 %133)
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 6
  %139 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %140 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %141, 16777215
  %143 = call i32 @comedi_check_trigger_arg_max(i32* %138, i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  br label %169

146:                                              ; preds = %120
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 130
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @CR_CHAN(i32 %154)
  %156 = load i32, i32* @NI_AI_SampleClock, align 4
  %157 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %158 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %157, i32 0, i32 3
  %159 = call i32 @ni_check_trigger_arg_roffs(i32 %155, i32 %156, i32* %158, i32 1)
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  br label %168

162:                                              ; preds = %146
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 6
  %165 = call i32 @comedi_check_trigger_arg_is(i32* %164, i32 0)
  %166 = load i32, i32* %10, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %162, %151
  br label %169

169:                                              ; preds = %168, %126
  %170 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %171 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @TRIG_TIMER, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %210

175:                                              ; preds = %169
  %176 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %177 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %182 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180, %175
  %186 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 7
  %188 = call i32 @comedi_check_trigger_arg_is(i32* %187, i32 0)
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %10, align 4
  br label %209

191:                                              ; preds = %180
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 7
  %194 = load %struct.ni_board_struct*, %struct.ni_board_struct** %8, align 8
  %195 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @comedi_check_trigger_arg_min(i32* %193, i32 %196)
  %198 = load i32, i32* %10, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %10, align 4
  %200 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %201 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %200, i32 0, i32 7
  %202 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %203 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = mul nsw i32 %204, 65535
  %206 = call i32 @comedi_check_trigger_arg_max(i32* %201, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %191, %185
  br label %239

210:                                              ; preds = %169
  %211 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %212 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 130
  br i1 %214, label %215, label %226

215:                                              ; preds = %210
  %216 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %217 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @CR_CHAN(i32 %218)
  %220 = load i32, i32* @NI_AI_ConvertClock, align 4
  %221 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %222 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %221, i32 0, i32 3
  %223 = call i32 @ni_check_trigger_arg_roffs(i32 %219, i32 %220, i32* %222, i32 1)
  %224 = load i32, i32* %10, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %10, align 4
  br label %238

226:                                              ; preds = %210
  %227 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %228 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 128
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 7
  %234 = call i32 @comedi_check_trigger_arg_is(i32* %233, i32 0)
  %235 = load i32, i32* %10, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %10, align 4
  br label %237

237:                                              ; preds = %231, %226
  br label %238

238:                                              ; preds = %237, %215
  br label %239

239:                                              ; preds = %238, %209
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 8
  %242 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %243 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %242, i32 0, i32 11
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @comedi_check_trigger_arg_is(i32* %241, i32 %244)
  %246 = load i32, i32* %10, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %10, align 4
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @TRIG_COUNT, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %276

253:                                              ; preds = %239
  store i32 16777216, i32* %12, align 4
  %254 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %255 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load i64, i64* @num_adc_stages_611x, align 8
  %260 = load i32, i32* %12, align 4
  %261 = zext i32 %260 to i64
  %262 = sub nsw i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %12, align 4
  br label %264

264:                                              ; preds = %258, %253
  %265 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %266 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %265, i32 0, i32 9
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @comedi_check_trigger_arg_max(i32* %266, i32 %267)
  %269 = load i32, i32* %10, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %10, align 4
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 9
  %273 = call i32 @comedi_check_trigger_arg_min(i32* %272, i32 1)
  %274 = load i32, i32* %10, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %10, align 4
  br label %282

276:                                              ; preds = %239
  %277 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %278 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %277, i32 0, i32 9
  %279 = call i32 @comedi_check_trigger_arg_is(i32* %278, i32 0)
  %280 = load i32, i32* %10, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %10, align 4
  br label %282

282:                                              ; preds = %276, %264
  %283 = load i32, i32* %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 3, i32* %4, align 4
  br label %396

286:                                              ; preds = %282
  %287 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %288 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @TRIG_TIMER, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %318

292:                                              ; preds = %286
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %13, align 4
  %296 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %297 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %298 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %299 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 10
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @ni_ns_to_timer(%struct.comedi_device* %297, i32 %300, i32 %303)
  %305 = call i8* @ni_timer_to_ns(%struct.comedi_device* %296, i32 %304)
  %306 = ptrtoint i8* %305 to i32
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 6
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* %13, align 4
  %310 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %311 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %309, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %292
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  br label %317

317:                                              ; preds = %314, %292
  br label %318

318:                                              ; preds = %317, %286
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @TRIG_TIMER, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %391

324:                                              ; preds = %318
  %325 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %326 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %390, label %329

329:                                              ; preds = %324
  %330 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %331 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %390, label %334

334:                                              ; preds = %329
  %335 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %336 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %335, i32 0, i32 7
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %14, align 4
  %338 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %339 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %340 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %341 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %343, i32 0, i32 10
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @ni_ns_to_timer(%struct.comedi_device* %339, i32 %342, i32 %345)
  %347 = call i8* @ni_timer_to_ns(%struct.comedi_device* %338, i32 %346)
  %348 = ptrtoint i8* %347 to i32
  %349 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %350 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %349, i32 0, i32 7
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* %14, align 4
  %352 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %353 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %352, i32 0, i32 7
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %351, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %334
  %357 = load i32, i32* %10, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %10, align 4
  br label %359

359:                                              ; preds = %356, %334
  %360 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %361 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @TRIG_TIMER, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %389

365:                                              ; preds = %359
  %366 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %367 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %366, i32 0, i32 6
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %370 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %369, i32 0, i32 7
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %373 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %372, i32 0, i32 8
  %374 = load i32, i32* %373, align 4
  %375 = mul i32 %371, %374
  %376 = icmp ult i32 %368, %375
  br i1 %376, label %377, label %389

377:                                              ; preds = %365
  %378 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %379 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %378, i32 0, i32 7
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %382 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %381, i32 0, i32 8
  %383 = load i32, i32* %382, align 4
  %384 = mul i32 %380, %383
  %385 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %386 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %385, i32 0, i32 6
  store i32 %384, i32* %386, align 4
  %387 = load i32, i32* %10, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %10, align 4
  br label %389

389:                                              ; preds = %377, %365, %359
  br label %390

390:                                              ; preds = %389, %329, %324
  br label %391

391:                                              ; preds = %390, %318
  %392 = load i32, i32* %10, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  store i32 4, i32* %4, align 4
  br label %396

395:                                              ; preds = %391
  store i32 0, i32* %4, align 4
  br label %396

396:                                              ; preds = %395, %394, %285, %98, %70
  %397 = load i32, i32* %4, align 4
  ret i32 %397
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @ni_check_trigger_arg_roffs(i32, i32, i32*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @ni_min_ai_scan_period_ns(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i8* @ni_timer_to_ns(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
