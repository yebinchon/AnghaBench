; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_boardinfo* }
%struct.labpc_boardinfo = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @labpc_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.labpc_boardinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %15, align 8
  store %struct.labpc_boardinfo* %16, %struct.labpc_boardinfo** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 0
  %19 = call i32 @comedi_check_trigger_src(i32* %18, i32 130)
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* @TRIG_TIMER, align 4
  %25 = load i32, i32* @TRIG_FOLLOW, align 4
  %26 = or i32 %24, %25
  %27 = or i32 %26, 130
  %28 = call i32 @comedi_check_trigger_src(i32* %23, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* @TRIG_TIMER, align 4
  %34 = or i32 %33, 130
  %35 = call i32 @comedi_check_trigger_src(i32* %32, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 3
  %40 = call i32 @comedi_check_trigger_src(i32* %39, i32 131)
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  store i32 131, i32* %12, align 4
  %43 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %8, align 8
  %44 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, 130
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %3
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @comedi_check_trigger_src(i32* %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %257

60:                                               ; preds = %50
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @comedi_check_trigger_is_unique(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @comedi_check_trigger_is_unique(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @comedi_check_trigger_is_unique(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @comedi_check_trigger_is_unique(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 130
  br i1 %88, label %89, label %97

89:                                               ; preds = %60
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 130
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %89, %60
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 2, i32* %4, align 4
  br label %257

101:                                              ; preds = %97
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %112 [
    i32 128, label %105
    i32 130, label %111
  ]

105:                                              ; preds = %101
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 5
  %108 = call i32 @comedi_check_trigger_arg_is(i32* %107, i32 0)
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %112

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %101, %111, %105
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %124 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %123, i32 0, i32 7
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @comedi_check_trigger_arg_is(i32* %124, i32 %127)
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @TRIG_TIMER, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %122
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 8
  %139 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %8, align 8
  %140 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @comedi_check_trigger_arg_min(i32* %138, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %136, %122
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TRIG_TIMER, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %183

151:                                              ; preds = %145
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @TRIG_TIMER, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 9
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %162, %165
  %167 = call i32 @comedi_check_trigger_arg_min(i32* %159, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %157, %151
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 9
  %173 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %8, align 8
  %174 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  %180 = call i32 @comedi_check_trigger_arg_min(i32* %172, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %170, %145
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  switch i32 %186, label %199 [
    i32 131, label %187
    i32 129, label %193
  ]

187:                                              ; preds = %183
  %188 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %188, i32 0, i32 10
  %190 = call i32 @comedi_check_trigger_arg_min(i32* %189, i32 1)
  %191 = load i32, i32* %9, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %9, align 4
  br label %200

193:                                              ; preds = %183
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 10
  %196 = call i32 @comedi_check_trigger_arg_is(i32* %195, i32 0)
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %9, align 4
  br label %200

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199, %193, %187
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 3, i32* %4, align 4
  br label %257

204:                                              ; preds = %200
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %10, align 4
  %208 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %209 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %11, align 4
  %211 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %212 = call i32 @labpc_ai_scan_mode(%struct.comedi_cmd* %211)
  store i32 %212, i32* %13, align 4
  %213 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %214 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @labpc_adc_timing(%struct.comedi_device* %213, %struct.comedi_cmd* %214, i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %217, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %204
  %223 = load i32, i32* %11, align 4
  %224 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %225 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %223, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %222, %204
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %228, %222
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 4, i32* %4, align 4
  br label %257

235:                                              ; preds = %231
  %236 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %237 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %236, i32 0, i32 11
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %235
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %247 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = call i32 @labpc_ai_check_chanlist(%struct.comedi_device* %246, %struct.comedi_subdevice* %247, %struct.comedi_cmd* %248)
  %250 = load i32, i32* %9, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %245, %240, %235
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 5, i32* %4, align 4
  br label %257

256:                                              ; preds = %252
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %256, %255, %234, %203, %100, %59
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @labpc_ai_scan_mode(%struct.comedi_cmd*) #1

declare dso_local i32 @labpc_adc_timing(%struct.comedi_device*, %struct.comedi_cmd*, i32) #1

declare dso_local i32 @labpc_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
