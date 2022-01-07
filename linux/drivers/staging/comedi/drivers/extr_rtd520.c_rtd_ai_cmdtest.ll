; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@RTD_MAX_SPEED_1 = common dso_local global i32 0, align 4
@CMDF_ROUND_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTD_MIN_SPEED_1 = common dso_local global i32 0, align 4
@CMDF_ROUND_DOWN = common dso_local global i32 0, align 4
@RTD_MAX_SPEED = common dso_local global i32 0, align 4
@RTD_MIN_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @rtd_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  %12 = load i32, i32* @TRIG_NOW, align 4
  %13 = call i32 @comedi_check_trigger_src(i32* %11, i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* @TRIG_TIMER, align 4
  %19 = load i32, i32* @TRIG_EXT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @comedi_check_trigger_src(i32* %17, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 2
  %26 = load i32, i32* @TRIG_TIMER, align 4
  %27 = load i32, i32* @TRIG_EXT, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @comedi_check_trigger_src(i32* %25, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 3
  %34 = load i32, i32* @TRIG_COUNT, align 4
  %35 = call i32 @comedi_check_trigger_src(i32* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 4
  %40 = load i32, i32* @TRIG_COUNT, align 4
  %41 = load i32, i32* @TRIG_NONE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @comedi_check_trigger_src(i32* %39, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %331

49:                                               ; preds = %3
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @comedi_check_trigger_is_unique(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @comedi_check_trigger_is_unique(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @comedi_check_trigger_is_unique(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  store i32 2, i32* %4, align 4
  br label %331

71:                                               ; preds = %49
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 5
  %74 = call i32 @comedi_check_trigger_arg_is(i32* %73, i32 0)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TRIG_TIMER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %150

82:                                               ; preds = %71
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %118

87:                                               ; preds = %82
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 7
  %90 = load i32, i32* @RTD_MAX_SPEED_1, align 4
  %91 = call i32 @comedi_check_trigger_arg_min(i32* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 7
  %96 = load i32, i32* @CMDF_ROUND_UP, align 4
  %97 = call i32 @rtd_ns_to_timer(i32* %95, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %93, %87
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 7
  %105 = load i32, i32* @RTD_MIN_SPEED_1, align 4
  %106 = call i32 @comedi_check_trigger_arg_max(i32* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 7
  %111 = load i32, i32* @CMDF_ROUND_DOWN, align 4
  %112 = call i32 @rtd_ns_to_timer(i32* %110, i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %108, %102
  br label %149

118:                                              ; preds = %82
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 7
  %121 = load i32, i32* @RTD_MAX_SPEED, align 4
  %122 = call i32 @comedi_check_trigger_arg_min(i32* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 7
  %127 = load i32, i32* @CMDF_ROUND_UP, align 4
  %128 = call i32 @rtd_ns_to_timer(i32* %126, i32 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %124, %118
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 7
  %136 = load i32, i32* @RTD_MIN_SPEED, align 4
  %137 = call i32 @comedi_check_trigger_arg_max(i32* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 7
  %142 = load i32, i32* @CMDF_ROUND_DOWN, align 4
  %143 = call i32 @rtd_ns_to_timer(i32* %141, i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %139, %133
  br label %149

149:                                              ; preds = %148, %117
  br label %156

150:                                              ; preds = %71
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 7
  %153 = call i32 @comedi_check_trigger_arg_max(i32* %152, i32 9)
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %150, %149
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %158 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @TRIG_TIMER, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %230

162:                                              ; preds = %156
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %198

167:                                              ; preds = %162
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 8
  %170 = load i32, i32* @RTD_MAX_SPEED_1, align 4
  %171 = call i32 @comedi_check_trigger_arg_min(i32* %169, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 8
  %176 = load i32, i32* @CMDF_ROUND_UP, align 4
  %177 = call i32 @rtd_ns_to_timer(i32* %175, i32 %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %173, %167
  %183 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %184 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %183, i32 0, i32 8
  %185 = load i32, i32* @RTD_MIN_SPEED_1, align 4
  %186 = call i32 @comedi_check_trigger_arg_max(i32* %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %182
  %189 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %189, i32 0, i32 8
  %191 = load i32, i32* @CMDF_ROUND_DOWN, align 4
  %192 = call i32 @rtd_ns_to_timer(i32* %190, i32 %191)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %188, %182
  br label %229

198:                                              ; preds = %162
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 8
  %201 = load i32, i32* @RTD_MAX_SPEED, align 4
  %202 = call i32 @comedi_check_trigger_arg_min(i32* %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %198
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 8
  %207 = load i32, i32* @CMDF_ROUND_UP, align 4
  %208 = call i32 @rtd_ns_to_timer(i32* %206, i32 %207)
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  %211 = load i32, i32* %8, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %204, %198
  %214 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %215 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %214, i32 0, i32 8
  %216 = load i32, i32* @RTD_MIN_SPEED, align 4
  %217 = call i32 @comedi_check_trigger_arg_max(i32* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 8
  %222 = load i32, i32* @CMDF_ROUND_DOWN, align 4
  %223 = call i32 @rtd_ns_to_timer(i32* %221, i32 %222)
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %219, %213
  br label %229

229:                                              ; preds = %228, %197
  br label %236

230:                                              ; preds = %156
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %232 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 8
  %233 = call i32 @comedi_check_trigger_arg_max(i32* %232, i32 9)
  %234 = load i32, i32* %8, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %230, %229
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 9
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @comedi_check_trigger_arg_is(i32* %238, i32 %241)
  %243 = load i32, i32* %8, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %8, align 4
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @TRIG_COUNT, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %236
  %251 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %252 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %251, i32 0, i32 10
  %253 = call i32 @comedi_check_trigger_arg_min(i32* %252, i32 1)
  %254 = load i32, i32* %8, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %8, align 4
  br label %262

256:                                              ; preds = %236
  %257 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %258 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %257, i32 0, i32 10
  %259 = call i32 @comedi_check_trigger_arg_is(i32* %258, i32 0)
  %260 = load i32, i32* %8, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %256, %250
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  store i32 3, i32* %4, align 4
  br label %331

266:                                              ; preds = %262
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @TRIG_TIMER, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %266
  %273 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %274 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %9, align 4
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 11
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @rtd_ns_to_timer(i32* %9, i32 %278)
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 7
  %282 = load i32, i32* %9, align 4
  %283 = call i32 @comedi_check_trigger_arg_is(i32* %281, i32 %282)
  %284 = load i32, i32* %8, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %272, %266
  %287 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %288 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @TRIG_TIMER, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %326

292:                                              ; preds = %286
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %9, align 4
  %296 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %297 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %296, i32 0, i32 11
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @rtd_ns_to_timer(i32* %9, i32 %298)
  %300 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %301 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %300, i32 0, i32 8
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @comedi_check_trigger_arg_is(i32* %301, i32 %302)
  %304 = load i32, i32* %8, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %8, align 4
  %306 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %307 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @TRIG_TIMER, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %325

311:                                              ; preds = %292
  %312 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %312, i32 0, i32 8
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 9
  %317 = load i32, i32* %316, align 4
  %318 = mul i32 %314, %317
  store i32 %318, i32* %9, align 4
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 7
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @comedi_check_trigger_arg_min(i32* %320, i32 %321)
  %323 = load i32, i32* %8, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %311, %292
  br label %326

326:                                              ; preds = %325, %286
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 4, i32* %4, align 4
  br label %331

330:                                              ; preds = %326
  store i32 0, i32* %4, align 4
  br label %331

331:                                              ; preds = %330, %329, %265, %70, %48
  %332 = load i32, i32* %4, align 4
  ret i32 %332
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @rtd_ns_to_timer(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_max(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
