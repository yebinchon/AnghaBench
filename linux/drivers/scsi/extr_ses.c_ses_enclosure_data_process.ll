; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_enclosure_data_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_enclosure_data_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.enclosure_component*, %struct.ses_device* }
%struct.enclosure_component = type { i32 }
%struct.ses_device = type { i32, i8*, i32, i8* }
%struct.scsi_device = type { i32 }

@INIT_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENCLOSURE_COMPONENT_DEVICE = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_ARRAY_DEVICE = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_SAS_EXPANDER = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_SCSI_TARGET_PORT = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_SCSI_INITIATOR_PORT = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_CONTROLLER_ELECTRONICS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_device*, %struct.scsi_device*, i32)* @ses_enclosure_data_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_enclosure_data_process(%struct.enclosure_device* %0, %struct.scsi_device* %1, i32 %2) #0 {
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ses_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.enclosure_component*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %11, align 8
  %22 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %23 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %22, i32 0, i32 1
  %24 = load %struct.ses_device*, %struct.ses_device** %23, align 8
  store %struct.ses_device* %24, %struct.ses_device** %17, align 8
  %25 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %26 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* @INIT_ALLOC_SIZE, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 %28, i32 %29)
  store i8* %30, i8** %19, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %83

34:                                               ; preds = %3
  %35 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %36 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %41 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %42 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %45 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @ses_recv_diag(%struct.scsi_device* %40, i32 10, i8* %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load i32, i32* @INIT_ALLOC_SIZE, align 4
  %52 = call i64 @ses_recv_diag(%struct.scsi_device* %49, i32 7, i8* %50, i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %83

56:                                               ; preds = %48
  %57 = load i8*, i8** %19, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = load i8*, i8** %19, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %61, %65
  %67 = add nsw i32 %66, 4
  store i32 %67, i32* %15, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kzalloc(i32 %69, i32 %70)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %56
  br label %83

75:                                               ; preds = %56
  %76 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i64 @ses_recv_diag(%struct.scsi_device* %76, i32 7, i8* %77, i32 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %74, %55, %33
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @kfree(i8* %84)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %104

86:                                               ; preds = %75
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 8
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %93, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 4
  %101 = load i8*, i8** %10, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %86, %83
  %105 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %106 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %111 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 8
  store i8* %113, i8** %11, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = load %struct.ses_device*, %struct.ses_device** %17, align 8
  %116 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %288, %114
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %293

122:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %284, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %287

130:                                              ; preds = %123
  store i8* null, i8** %20, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = load i8*, i8** %10, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = icmp uge i8* %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i8* null, i8** %10, align 8
  br label %159

141:                                              ; preds = %133
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, 8
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 3
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %146, %150
  store i32 %151, i32* %15, align 4
  %152 = load i8*, i8** %10, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  store i8* %153, i8** %10, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %10, align 8
  store i8* %158, i8** %20, align 8
  br label %159

159:                                              ; preds = %141, %140
  br label %160

160:                                              ; preds = %159, %130
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* @ENCLOSURE_COMPONENT_DEVICE, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %160
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8, i8* @ENCLOSURE_COMPONENT_ARRAY_DEVICE, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %215

176:                                              ; preds = %168, %160
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = load i8*, i8** %20, align 8
  %187 = call %struct.enclosure_component* @enclosure_component_alloc(%struct.enclosure_device* %180, i32 %181, i8 zeroext %185, i8* %186)
  store %struct.enclosure_component* %187, %struct.enclosure_component** %21, align 8
  br label %196

188:                                              ; preds = %176
  %189 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %190 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %189, i32 0, i32 0
  %191 = load %struct.enclosure_component*, %struct.enclosure_component** %190, align 8
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %191, i64 %194
  store %struct.enclosure_component* %195, %struct.enclosure_component** %21, align 8
  br label %196

196:                                              ; preds = %188, %179
  %197 = load %struct.enclosure_component*, %struct.enclosure_component** %21, align 8
  %198 = call i32 @IS_ERR(%struct.enclosure_component* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %214, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %11, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load %struct.enclosure_component*, %struct.enclosure_component** %21, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 @ses_process_descriptor(%struct.enclosure_component* %204, i8* %205)
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct.enclosure_component*, %struct.enclosure_component** %21, align 8
  %212 = call i32 @enclosure_component_register(%struct.enclosure_component* %211)
  br label %213

213:                                              ; preds = %210, %207
  br label %214

214:                                              ; preds = %213, %196
  br label %215

215:                                              ; preds = %214, %168
  %216 = load i8*, i8** %10, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load i32, i32* %15, align 4
  %220 = load i8*, i8** %10, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %10, align 8
  br label %223

223:                                              ; preds = %218, %215
  %224 = load i8*, i8** %11, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %283

226:                                              ; preds = %223
  %227 = load i8*, i8** %9, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = load i8, i8* @ENCLOSURE_COMPONENT_DEVICE, align 1
  %232 = zext i8 %231 to i32
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %274, label %234

234:                                              ; preds = %226
  %235 = load i8*, i8** %9, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = load i8, i8* @ENCLOSURE_COMPONENT_ARRAY_DEVICE, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %274, label %242

242:                                              ; preds = %234
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 0
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8, i8* @ENCLOSURE_COMPONENT_SAS_EXPANDER, align 1
  %248 = zext i8 %247 to i32
  %249 = icmp eq i32 %246, %248
  br i1 %249, label %274, label %250

250:                                              ; preds = %242
  %251 = load i8*, i8** %9, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = load i8, i8* @ENCLOSURE_COMPONENT_SCSI_TARGET_PORT, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp eq i32 %254, %256
  br i1 %257, label %274, label %258

258:                                              ; preds = %250
  %259 = load i8*, i8** %9, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 0
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = load i8, i8* @ENCLOSURE_COMPONENT_SCSI_INITIATOR_PORT, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp eq i32 %262, %264
  br i1 %265, label %274, label %266

266:                                              ; preds = %258
  %267 = load i8*, i8** %9, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 0
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = load i8, i8* @ENCLOSURE_COMPONENT_CONTROLLER_ELECTRONICS, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %283

274:                                              ; preds = %266, %258, %250, %242, %234, %226
  %275 = load i8*, i8** %11, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = add nsw i32 %278, 2
  %280 = load i8*, i8** %11, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %11, align 8
  br label %283

283:                                              ; preds = %274, %266, %223
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %13, align 4
  br label %123

287:                                              ; preds = %123
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %12, align 4
  %291 = load i8*, i8** %9, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 4
  store i8* %292, i8** %9, align 8
  br label %118

293:                                              ; preds = %118
  %294 = load i8*, i8** %8, align 8
  %295 = call i32 @kfree(i8* %294)
  %296 = load i8*, i8** %19, align 8
  %297 = call i32 @kfree(i8* %296)
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @ses_recv_diag(%struct.scsi_device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.enclosure_component* @enclosure_component_alloc(%struct.enclosure_device*, i32, i8 zeroext, i8*) #1

declare dso_local i32 @IS_ERR(%struct.enclosure_component*) #1

declare dso_local i32 @ses_process_descriptor(%struct.enclosure_component*, i8*) #1

declare dso_local i32 @enclosure_component_register(%struct.enclosure_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
