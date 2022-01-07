; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private*, %struct.pci230_board* }
%struct.pci230_private = type { i64 }
%struct.pci230_board = type { i64, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i64 0, align 8
@CR_FLAGS_MASK = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@CMDF_ROUND_UP = common dso_local global i32 0, align 4
@MAX_SPEED_AI_DIFF = common dso_local global i32 0, align 4
@MAX_SPEED_AI_PLUS = common dso_local global i32 0, align 4
@MAX_SPEED_AI_SE = common dso_local global i32 0, align 4
@MIN_SPEED_AI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci230_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pci230_board*, align 8
  %9 = alloca %struct.pci230_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.pci230_board*, %struct.pci230_board** %14, align 8
  store %struct.pci230_board* %15, %struct.pci230_board** %8, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.pci230_private*, %struct.pci230_private** %17, align 8
  store %struct.pci230_private* %18, %struct.pci230_private** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* @TRIG_NOW, align 4
  %22 = load i32, i32* @TRIG_INT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @comedi_check_trigger_src(i32* %20, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @TRIG_FOLLOW, align 4
  %28 = load i32, i32* @TRIG_TIMER, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TRIG_INT, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.pci230_board*, %struct.pci230_board** %8, align 8
  %33 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load %struct.pci230_board*, %struct.pci230_board** %8, align 8
  %38 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %3
  %42 = load i32, i32* @TRIG_EXT, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @comedi_check_trigger_src(i32* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* @TRIG_TIMER, align 4
  %55 = load i32, i32* @TRIG_INT, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TRIG_EXT, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @comedi_check_trigger_src(i32* %53, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 3
  %64 = load i32, i32* @TRIG_COUNT, align 4
  %65 = call i32 @comedi_check_trigger_src(i32* %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 4
  %70 = load i32, i32* @TRIG_COUNT, align 4
  %71 = load i32, i32* @TRIG_NONE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @comedi_check_trigger_src(i32* %69, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %450

79:                                               ; preds = %45
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @comedi_check_trigger_is_unique(i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @comedi_check_trigger_is_unique(i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @comedi_check_trigger_is_unique(i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @comedi_check_trigger_is_unique(i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TRIG_FOLLOW, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %79
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TRIG_TIMER, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %115, %109, %79
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 2, i32* %4, align 4
  br label %450

124:                                              ; preds = %120
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 5
  %127 = call i32 @comedi_check_trigger_arg_is(i32* %126, i64 0)
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TRIG_TIMER, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %177

135:                                              ; preds = %124
  %136 = load %struct.pci230_private*, %struct.pci230_private** %9, align 8
  %137 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %135
  %141 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %142 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %141, i32 0, i32 11
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 11
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @CR_AREF(i32 %155)
  %157 = load i64, i64* @AREF_DIFF, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  store i32 8000, i32* %12, align 4
  br label %161

160:                                              ; preds = %150
  store i32 3200, i32* %12, align 4
  br label %161

161:                                              ; preds = %160, %159
  br label %163

162:                                              ; preds = %145, %140
  store i32 3200, i32* %12, align 4
  br label %163

163:                                              ; preds = %162, %161
  br label %165

164:                                              ; preds = %135
  store i32 4000, i32* %12, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 7
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @comedi_check_trigger_arg_min(i32* %167, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %10, align 4
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 7
  %174 = call i32 @comedi_check_trigger_arg_max(i32* %173, i32 -1)
  %175 = load i32, i32* %10, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %255

177:                                              ; preds = %124
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TRIG_EXT, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %248

183:                                              ; preds = %177
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @CR_FLAGS_MASK, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %241

190:                                              ; preds = %183
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CR_FLAGS_MASK, align 4
  %195 = xor i32 %194, -1
  %196 = and i32 %193, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %190
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @CR_FLAGS_MASK, align 4
  %203 = xor i32 %202, -1
  %204 = call i8* @COMBINE(i32 %201, i32 0, i32 %203)
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  %210 = load i32, i32* %10, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %10, align 4
  br label %212

212:                                              ; preds = %198, %190
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @CR_FLAGS_MASK, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* @CR_INVERT, align 4
  %219 = xor i32 %218, -1
  %220 = and i32 %217, %219
  %221 = load i32, i32* @CR_EDGE, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %240

223:                                              ; preds = %212
  %224 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %225 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @CR_EDGE, align 4
  %228 = load i32, i32* @CR_FLAGS_MASK, align 4
  %229 = load i32, i32* @CR_INVERT, align 4
  %230 = xor i32 %229, -1
  %231 = and i32 %228, %230
  %232 = call i8* @COMBINE(i32 %226, i32 %227, i32 %231)
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  %238 = load i32, i32* %10, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %223, %212
  br label %247

241:                                              ; preds = %183
  %242 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %243 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %242, i32 0, i32 7
  %244 = call i32 @comedi_check_trigger_arg_max(i32* %243, i32 1)
  %245 = load i32, i32* %10, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %10, align 4
  br label %247

247:                                              ; preds = %241, %240
  br label %254

248:                                              ; preds = %177
  %249 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %250 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %249, i32 0, i32 7
  %251 = call i32 @comedi_check_trigger_arg_is(i32* %250, i64 0)
  %252 = load i32, i32* %10, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %10, align 4
  br label %254

254:                                              ; preds = %248, %247
  br label %255

255:                                              ; preds = %254, %165
  %256 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %257 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %256, i32 0, i32 8
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @comedi_check_trigger_arg_is(i32* %257, i64 %260)
  %262 = load i32, i32* %10, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %10, align 4
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @TRIG_COUNT, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %255
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 9
  %272 = call i32 @comedi_check_trigger_arg_min(i32* %271, i32 1)
  %273 = load i32, i32* %10, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %10, align 4
  br label %281

275:                                              ; preds = %255
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 9
  %278 = call i32 @comedi_check_trigger_arg_is(i32* %277, i64 0)
  %279 = load i32, i32* %10, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %10, align 4
  br label %281

281:                                              ; preds = %275, %269
  %282 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %283 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @TRIG_EXT, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %336

287:                                              ; preds = %281
  %288 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %289 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @CR_FLAGS_MASK, align 4
  %292 = xor i32 %291, -1
  %293 = and i32 %290, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %309

295:                                              ; preds = %287
  %296 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @CR_FLAGS_MASK, align 4
  %300 = xor i32 %299, -1
  %301 = call i8* @COMBINE(i32 %298, i32 0, i32 %300)
  %302 = ptrtoint i8* %301 to i32
  %303 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %304 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %303, i32 0, i32 10
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* @EINVAL, align 4
  %306 = sub nsw i32 0, %305
  %307 = load i32, i32* %10, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %10, align 4
  br label %309

309:                                              ; preds = %295, %287
  %310 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %311 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %310, i32 0, i32 10
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @CR_FLAGS_MASK, align 4
  %314 = and i32 %312, %313
  %315 = load i32, i32* @CR_EDGE, align 4
  %316 = xor i32 %315, -1
  %317 = and i32 %314, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %335

319:                                              ; preds = %309
  %320 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %321 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %320, i32 0, i32 10
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @CR_FLAGS_MASK, align 4
  %324 = load i32, i32* @CR_EDGE, align 4
  %325 = xor i32 %324, -1
  %326 = and i32 %323, %325
  %327 = call i8* @COMBINE(i32 %322, i32 0, i32 %326)
  %328 = ptrtoint i8* %327 to i32
  %329 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %330 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %329, i32 0, i32 10
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  %333 = load i32, i32* %10, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %319, %309
  br label %359

336:                                              ; preds = %281
  %337 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %338 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @TRIG_TIMER, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %352

342:                                              ; preds = %336
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = call i32 @pci230_ai_check_scan_period(%struct.comedi_cmd* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %342
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  %349 = load i32, i32* %10, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %10, align 4
  br label %351

351:                                              ; preds = %346, %342
  br label %358

352:                                              ; preds = %336
  %353 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %354 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %353, i32 0, i32 10
  %355 = call i32 @comedi_check_trigger_arg_is(i32* %354, i64 0)
  %356 = load i32, i32* %10, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %10, align 4
  br label %358

358:                                              ; preds = %352, %351
  br label %359

359:                                              ; preds = %358, %335
  %360 = load i32, i32* %10, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  store i32 3, i32* %4, align 4
  br label %450

363:                                              ; preds = %359
  %364 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %365 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @TRIG_TIMER, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %388

369:                                              ; preds = %363
  %370 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %371 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %370, i32 0, i32 7
  %372 = load i32, i32* %371, align 8
  store i32 %372, i32* %11, align 4
  %373 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %374 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %373, i32 0, i32 7
  %375 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %376 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %375, i32 0, i32 12
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @pci230_ns_to_single_timer(i32* %374, i32 %377)
  %379 = load i32, i32* %11, align 4
  %380 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %381 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %380, i32 0, i32 7
  %382 = load i32, i32* %381, align 8
  %383 = icmp ne i32 %379, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %369
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %10, align 4
  br label %387

387:                                              ; preds = %384, %369
  br label %388

388:                                              ; preds = %387, %363
  %389 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %390 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @TRIG_TIMER, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %424

394:                                              ; preds = %388
  %395 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %396 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %395, i32 0, i32 10
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %11, align 4
  %398 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %399 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %398, i32 0, i32 10
  %400 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %401 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %400, i32 0, i32 12
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @pci230_ns_to_single_timer(i32* %399, i32 %402)
  %404 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %405 = call i32 @pci230_ai_check_scan_period(%struct.comedi_cmd* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %414, label %407

407:                                              ; preds = %394
  %408 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %409 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %408, i32 0, i32 10
  %410 = load i32, i32* @CMDF_ROUND_UP, align 4
  %411 = call i32 @pci230_ns_to_single_timer(i32* %409, i32 %410)
  %412 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %413 = call i32 @pci230_ai_check_scan_period(%struct.comedi_cmd* %412)
  br label %414

414:                                              ; preds = %407, %394
  %415 = load i32, i32* %11, align 4
  %416 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %417 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %416, i32 0, i32 10
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %415, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %414
  %421 = load i32, i32* %10, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %10, align 4
  br label %423

423:                                              ; preds = %420, %414
  br label %424

424:                                              ; preds = %423, %388
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store i32 4, i32* %4, align 4
  br label %450

428:                                              ; preds = %424
  %429 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %430 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %429, i32 0, i32 11
  %431 = load i32*, i32** %430, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %433, label %445

433:                                              ; preds = %428
  %434 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %435 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %434, i32 0, i32 6
  %436 = load i64, i64* %435, align 8
  %437 = icmp sgt i64 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %433
  %439 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %440 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %441 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %442 = call i32 @pci230_ai_check_chanlist(%struct.comedi_device* %439, %struct.comedi_subdevice* %440, %struct.comedi_cmd* %441)
  %443 = load i32, i32* %10, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %10, align 4
  br label %445

445:                                              ; preds = %438, %433, %428
  %446 = load i32, i32* %10, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  store i32 5, i32* %4, align 4
  br label %450

449:                                              ; preds = %445
  store i32 0, i32* %4, align 4
  br label %450

450:                                              ; preds = %449, %448, %427, %362, %123, %78
  %451 = load i32, i32* %4, align 4
  ret i32 %451
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i64) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

declare dso_local i8* @COMBINE(i32, i32, i32) #1

declare dso_local i32 @pci230_ai_check_scan_period(%struct.comedi_cmd*) #1

declare dso_local i32 @pci230_ns_to_single_timer(i32*, i32) #1

declare dso_local i32 @pci230_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
