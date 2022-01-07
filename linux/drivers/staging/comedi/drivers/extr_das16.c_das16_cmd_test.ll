; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.das16_private_struct*, %struct.das16_board* }
%struct.das16_private_struct = type { i64 }
%struct.das16_board = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @das16_cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_cmd_test(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.das16_board*, align 8
  %9 = alloca %struct.das16_private_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.das16_board*, %struct.das16_board** %14, align 8
  store %struct.das16_board* %15, %struct.das16_board** %8, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.das16_private_struct*, %struct.das16_private_struct** %17, align 8
  store %struct.das16_private_struct* %18, %struct.das16_private_struct** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* @TRIG_NOW, align 4
  %22 = call i32 @comedi_check_trigger_src(i32* %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @TRIG_FOLLOW, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.das16_private_struct*, %struct.das16_private_struct** %9, align 8
  %27 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @TRIG_TIMER, align 4
  %32 = load i32, i32* @TRIG_EXT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @comedi_check_trigger_src(i32* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @TRIG_TIMER, align 4
  %44 = load i32, i32* @TRIG_EXT, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.das16_private_struct*, %struct.das16_private_struct** %9, align 8
  %47 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i32, i32* @TRIG_NOW, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %36
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @comedi_check_trigger_src(i32* %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 3
  %63 = load i32, i32* @TRIG_COUNT, align 4
  %64 = call i32 @comedi_check_trigger_src(i32* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 4
  %69 = load i32, i32* @TRIG_COUNT, align 4
  %70 = load i32, i32* @TRIG_NONE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @comedi_check_trigger_src(i32* %68, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %287

78:                                               ; preds = %54
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @comedi_check_trigger_is_unique(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @comedi_check_trigger_is_unique(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @comedi_check_trigger_is_unique(i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TRIG_FOLLOW, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %78
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TRIG_NOW, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %108, %102, %78
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TRIG_FOLLOW, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @TRIG_NOW, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %125, %119, %113
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 2, i32* %4, align 4
  br label %287

134:                                              ; preds = %130
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 5
  %137 = call i32 @comedi_check_trigger_arg_is(i32* %136, i32 0)
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @TRIG_FOLLOW, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 6
  %148 = call i32 @comedi_check_trigger_arg_is(i32* %147, i32 0)
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %145, %134
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 7
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @comedi_check_trigger_arg_is(i32* %153, i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TRIG_TIMER, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %151
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 6
  %168 = load %struct.das16_board*, %struct.das16_board** %8, align 8
  %169 = getelementptr inbounds %struct.das16_board, %struct.das16_board* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = mul i32 %170, %173
  %175 = call i32 @comedi_check_trigger_arg_min(i32* %167, i32 %174)
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %165, %151
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @TRIG_TIMER, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %186 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %185, i32 0, i32 9
  %187 = load %struct.das16_board*, %struct.das16_board** %8, align 8
  %188 = getelementptr inbounds %struct.das16_board, %struct.das16_board* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @comedi_check_trigger_arg_min(i32* %186, i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %184, %178
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @TRIG_COUNT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %201 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %200, i32 0, i32 10
  %202 = call i32 @comedi_check_trigger_arg_min(i32* %201, i32 1)
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  br label %211

205:                                              ; preds = %193
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 10
  %208 = call i32 @comedi_check_trigger_arg_is(i32* %207, i32 0)
  %209 = load i32, i32* %10, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %205, %199
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 3, i32* %4, align 4
  br label %287

215:                                              ; preds = %211
  %216 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %217 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @TRIG_TIMER, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %215
  %222 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %223 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %12, align 4
  %225 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %226 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %227, i32* %12, i32 %230)
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 6
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @comedi_check_trigger_arg_is(i32* %233, i32 %234)
  %236 = load i32, i32* %10, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %221, %215
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @TRIG_TIMER, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %261

244:                                              ; preds = %238
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %12, align 4
  %248 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %249 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %252 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %251, i32 0, i32 12
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %250, i32* %12, i32 %253)
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 9
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @comedi_check_trigger_arg_is(i32* %256, i32 %257)
  %259 = load i32, i32* %10, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %244, %238
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 4, i32* %4, align 4
  br label %287

265:                                              ; preds = %261
  %266 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %267 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %266, i32 0, i32 11
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = icmp ugt i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %270
  %276 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %277 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %279 = call i32 @das16_ai_check_chanlist(%struct.comedi_device* %276, %struct.comedi_subdevice* %277, %struct.comedi_cmd* %278)
  %280 = load i32, i32* %10, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %10, align 4
  br label %282

282:                                              ; preds = %275, %270, %265
  %283 = load i32, i32* %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 5, i32* %4, align 4
  br label %287

286:                                              ; preds = %282
  store i32 0, i32* %4, align 4
  br label %287

287:                                              ; preds = %286, %285, %264, %214, %133, %77
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @das16_ai_check_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
