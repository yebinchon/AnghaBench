; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CR_FLAGS_MASK = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@MAX_SCAN_PERIOD = common dso_local global i32 0, align 4
@CONVERT_PERIOD = common dso_local global i32 0, align 4
@MIN_SCAN_PERIOD = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci224_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci224_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = call i32 @comedi_check_trigger_src(i32* %11, i32 131)
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %8, align 4
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 1
  %17 = call i32 @comedi_check_trigger_src(i32* %16, i32 131)
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 2
  %22 = load i32, i32* @TRIG_NOW, align 4
  %23 = call i32 @comedi_check_trigger_src(i32* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 3
  %28 = call i32 @comedi_check_trigger_src(i32* %27, i32 132)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 4
  %33 = call i32 @comedi_check_trigger_src(i32* %32, i32 135)
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %362

39:                                               ; preds = %3
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @comedi_check_trigger_is_unique(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @comedi_check_trigger_is_unique(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @comedi_check_trigger_is_unique(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 131
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %39
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %39
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 131
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 131
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* %9, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 2, i32* %4, align 4
  br label %362

96:                                               ; preds = %92
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %155 [
    i32 130, label %100
    i32 131, label %106
  ]

100:                                              ; preds = %96
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 5
  %103 = call i32 @comedi_check_trigger_arg_is(i32* %102, i32 0)
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %155

106:                                              ; preds = %96
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CR_FLAGS_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %106
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CR_FLAGS_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = call i8* @COMBINE(i32 %117, i32 0, i32 %119)
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %114, %106
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CR_FLAGS_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @CR_EDGE, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %128
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @CR_FLAGS_MASK, align 4
  %143 = load i32, i32* @CR_EDGE, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = call i8* @COMBINE(i32 %141, i32 0, i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %138, %128
  br label %155

155:                                              ; preds = %96, %154, %100
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  switch i32 %158, label %236 [
    i32 128, label %159
    i32 131, label %183
  ]

159:                                              ; preds = %155
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 6
  %162 = load i32, i32* @MAX_SCAN_PERIOD, align 4
  %163 = call i32 @comedi_check_trigger_arg_max(i32* %161, i32 %162)
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %8, align 4
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @CONVERT_PERIOD, align 4
  %170 = mul i32 %168, %169
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @MIN_SCAN_PERIOD, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %159
  %175 = load i32, i32* @MIN_SCAN_PERIOD, align 4
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %174, %159
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 6
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @comedi_check_trigger_arg_min(i32* %178, i32 %179)
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %8, align 4
  br label %236

183:                                              ; preds = %155
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @CR_FLAGS_MASK, align 4
  %188 = xor i32 %187, -1
  %189 = and i32 %186, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %183
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CR_FLAGS_MASK, align 4
  %196 = xor i32 %195, -1
  %197 = call i8* @COMBINE(i32 %194, i32 0, i32 %196)
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  %203 = load i32, i32* %8, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %191, %183
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CR_FLAGS_MASK, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* @CR_EDGE, align 4
  %212 = load i32, i32* @CR_INVERT, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = and i32 %210, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %205
  %218 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %219 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @CR_FLAGS_MASK, align 4
  %222 = load i32, i32* @CR_EDGE, align 4
  %223 = load i32, i32* @CR_INVERT, align 4
  %224 = or i32 %222, %223
  %225 = xor i32 %224, -1
  %226 = and i32 %221, %225
  %227 = call i8* @COMBINE(i32 %220, i32 0, i32 %226)
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %230 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  %233 = load i32, i32* %8, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %217, %205
  br label %236

236:                                              ; preds = %155, %235, %176
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 8
  %239 = call i32 @comedi_check_trigger_arg_is(i32* %238, i32 0)
  %240 = load i32, i32* %8, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %8, align 4
  %242 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %243 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %242, i32 0, i32 9
  %244 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %245 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @comedi_check_trigger_arg_is(i32* %243, i32 %246)
  %248 = load i32, i32* %8, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %8, align 4
  %250 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  switch i32 %252, label %310 [
    i32 132, label %253
    i32 131, label %259
    i32 129, label %304
  ]

253:                                              ; preds = %236
  %254 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %255 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %254, i32 0, i32 10
  %256 = call i32 @comedi_check_trigger_arg_min(i32* %255, i32 1)
  %257 = load i32, i32* %8, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %8, align 4
  br label %310

259:                                              ; preds = %236
  %260 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %261 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @CR_FLAGS_MASK, align 4
  %264 = xor i32 %263, -1
  %265 = and i32 %262, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %281

267:                                              ; preds = %259
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 10
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @CR_FLAGS_MASK, align 4
  %272 = xor i32 %271, -1
  %273 = call i8* @COMBINE(i32 %270, i32 0, i32 %272)
  %274 = ptrtoint i8* %273 to i32
  %275 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %276 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %275, i32 0, i32 10
  store i32 %274, i32* %276, align 8
  %277 = load i32, i32* @EINVAL, align 4
  %278 = sub nsw i32 0, %277
  %279 = load i32, i32* %8, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %8, align 4
  br label %281

281:                                              ; preds = %267, %259
  %282 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %283 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @CR_FLAGS_MASK, align 4
  %286 = and i32 %284, %285
  %287 = load i32, i32* @CR_EDGE, align 4
  %288 = xor i32 %287, -1
  %289 = and i32 %286, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %303

291:                                              ; preds = %281
  %292 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %293 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @CR_FLAGS_MASK, align 4
  %296 = load i32, i32* @CR_EDGE, align 4
  %297 = xor i32 %296, -1
  %298 = and i32 %295, %297
  %299 = call i8* @COMBINE(i32 %294, i32 0, i32 %298)
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 10
  store i32 %300, i32* %302, align 8
  br label %303

303:                                              ; preds = %291, %281
  br label %310

304:                                              ; preds = %236
  %305 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %306 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %305, i32 0, i32 10
  %307 = call i32 @comedi_check_trigger_arg_is(i32* %306, i32 0)
  %308 = load i32, i32* %8, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %8, align 4
  br label %310

310:                                              ; preds = %236, %304, %303, %253
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 3, i32* %4, align 4
  br label %362

314:                                              ; preds = %310
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %317, 128
  br i1 %318, label %319, label %336

319:                                              ; preds = %314
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  store i32 %322, i32* %9, align 4
  %323 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %324 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 12
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %325, i32* %9, i32 %328)
  %330 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %331 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %330, i32 0, i32 6
  %332 = load i32, i32* %9, align 4
  %333 = call i32 @comedi_check_trigger_arg_is(i32* %331, i32 %332)
  %334 = load i32, i32* %8, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %8, align 4
  br label %336

336:                                              ; preds = %319, %314
  %337 = load i32, i32* %8, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  store i32 4, i32* %4, align 4
  br label %362

340:                                              ; preds = %336
  %341 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %342 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %341, i32 0, i32 11
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %340
  %346 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %347 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 4
  %349 = icmp ugt i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %345
  %351 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %352 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %353 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %354 = call i32 @pci224_ao_check_chanlist(%struct.comedi_device* %351, %struct.comedi_subdevice* %352, %struct.comedi_cmd* %353)
  %355 = load i32, i32* %8, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %8, align 4
  br label %357

357:                                              ; preds = %350, %345, %340
  %358 = load i32, i32* %8, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  store i32 5, i32* %4, align 4
  br label %362

361:                                              ; preds = %357
  store i32 0, i32* %4, align 4
  br label %362

362:                                              ; preds = %361, %360, %339, %313, %95, %38
  %363 = load i32, i32* %4, align 4
  ret i32 %363
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i8* @COMBINE(i32, i32, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @pci224_ao_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
