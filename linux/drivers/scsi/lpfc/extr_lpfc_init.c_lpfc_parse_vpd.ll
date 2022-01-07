; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_parse_vpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_parse_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"0455 Vital Product Data: x%x x%x x%x x%x\0A\00", align 1
@VPD_MODEL_DESC = common dso_local global i32 0, align 4
@VPD_MODEL_NAME = common dso_local global i32 0, align 4
@VPD_PROGRAM_TYPE = common dso_local global i32 0, align 4
@VPD_PORT = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@LPFC_SLI4_PPNAME_GET = common dso_local global i32 0, align 4
@LPFC_SLI4_PPNAME_NON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_parse_vpd(%struct.lpfc_hba* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %485

18:                                               ; preds = %3
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %20 = load i32, i32* @KERN_INFO, align 4
  %21 = load i32, i32* @LOG_INIT, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %483, %18
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 4
  %42 = icmp slt i32 %39, %41
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ false, %35 ], [ %42, %38 ]
  br i1 %44, label %45, label %484

45:                                               ; preds = %43
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %480 [
    i32 130, label %51
    i32 145, label %51
    i32 144, label %77
    i32 120, label %479
  ]

51:                                               ; preds = %45, %45
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %9, align 4
  %69 = trunc i32 %68 to i16
  %70 = zext i16 %69 to i32
  %71 = shl i32 %70, 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %14, align 4
  br label %483

77:                                               ; preds = %45
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %9, align 4
  %95 = trunc i32 %94 to i16
  %96 = zext i16 %95 to i32
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %101, %102
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %77
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105, %77
  br label %110

110:                                              ; preds = %477, %455, %353, %290, %227, %164, %109
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %478

113:                                              ; preds = %110
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 83
  br i1 %119, label %120, label %171

120:                                              ; preds = %113
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 78
  br i1 %127, label %128, label %171

128:                                              ; preds = %120
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %14, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 3, %138
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %163, %128
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %11, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %152, i32* %159, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp eq i32 %160, 31
  br i1 %161, label %162, label %163

162:                                              ; preds = %146
  br label %164

163:                                              ; preds = %146
  br label %142

164:                                              ; preds = %162, %142
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %166 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 0, i32* %170, align 4
  br label %110

171:                                              ; preds = %120, %113
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 86
  br i1 %177, label %178, label %234

178:                                              ; preds = %171
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 49
  br i1 %185, label %186, label %234

186:                                              ; preds = %178
  %187 = load i32, i32* @VPD_MODEL_DESC, align 4
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %189 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 2
  store i32 %193, i32* %14, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 3, %201
  %203 = load i32, i32* %10, align 4
  %204 = sub nsw i32 %203, %202
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %226, %186
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %11, align 4
  %208 = icmp ne i32 %206, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %205
  %210 = load i32*, i32** %6, align 8
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %217 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  store i32 %215, i32* %222, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp eq i32 %223, 255
  br i1 %224, label %225, label %226

225:                                              ; preds = %209
  br label %227

226:                                              ; preds = %209
  br label %205

227:                                              ; preds = %225, %205
  %228 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %229 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 0, i32* %233, align 4
  br label %110

234:                                              ; preds = %178, %171
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 86
  br i1 %240, label %241, label %297

241:                                              ; preds = %234
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 50
  br i1 %248, label %249, label %297

249:                                              ; preds = %241
  %250 = load i32, i32* @VPD_MODEL_NAME, align 4
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %252 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 2
  store i32 %256, i32* %14, align 4
  %257 = load i32*, i32** %6, align 8
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 3, %264
  %266 = load i32, i32* %10, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %10, align 4
  br label %268

268:                                              ; preds = %289, %249
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %11, align 4
  %271 = icmp ne i32 %269, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %268
  %273 = load i32*, i32** %6, align 8
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %280 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %12, align 4
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 %278, i32* %285, align 4
  %286 = load i32, i32* %12, align 4
  %287 = icmp eq i32 %286, 79
  br i1 %287, label %288, label %289

288:                                              ; preds = %272
  br label %290

289:                                              ; preds = %272
  br label %268

290:                                              ; preds = %288, %268
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 0, i32* %296, align 4
  br label %110

297:                                              ; preds = %241, %234
  %298 = load i32*, i32** %6, align 8
  %299 = load i32, i32* %14, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 86
  br i1 %303, label %304, label %360

304:                                              ; preds = %297
  %305 = load i32*, i32** %6, align 8
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 51
  br i1 %311, label %312, label %360

312:                                              ; preds = %304
  %313 = load i32, i32* @VPD_PROGRAM_TYPE, align 4
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %315 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %318, 2
  store i32 %319, i32* %14, align 4
  %320 = load i32*, i32** %6, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %14, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %327 = load i32, i32* %11, align 4
  %328 = add nsw i32 3, %327
  %329 = load i32, i32* %10, align 4
  %330 = sub nsw i32 %329, %328
  store i32 %330, i32* %10, align 4
  br label %331

331:                                              ; preds = %352, %312
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %11, align 4
  %334 = icmp ne i32 %332, 0
  br i1 %334, label %335, label %353

335:                                              ; preds = %331
  %336 = load i32*, i32** %6, align 8
  %337 = load i32, i32* %14, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %14, align 4
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %343 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %342, i32 0, i32 3
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %12, align 4
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  store i32 %341, i32* %348, align 4
  %349 = load i32, i32* %12, align 4
  %350 = icmp eq i32 %349, 255
  br i1 %350, label %351, label %352

351:                                              ; preds = %335
  br label %353

352:                                              ; preds = %335
  br label %331

353:                                              ; preds = %351, %331
  %354 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %355 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  store i32 0, i32* %359, align 4
  br label %110

360:                                              ; preds = %304, %297
  %361 = load i32*, i32** %6, align 8
  %362 = load i32, i32* %14, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 86
  br i1 %366, label %367, label %456

367:                                              ; preds = %360
  %368 = load i32*, i32** %6, align 8
  %369 = load i32, i32* %14, align 4
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %373, 52
  br i1 %374, label %375, label %456

375:                                              ; preds = %367
  %376 = load i32, i32* @VPD_PORT, align 4
  %377 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %378 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  %381 = load i32, i32* %14, align 4
  %382 = add nsw i32 %381, 2
  store i32 %382, i32* %14, align 4
  %383 = load i32*, i32** %6, align 8
  %384 = load i32, i32* %14, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %11, align 4
  %388 = load i32, i32* %14, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 3, %390
  %392 = load i32, i32* %10, align 4
  %393 = sub nsw i32 %392, %391
  store i32 %393, i32* %10, align 4
  br label %394

394:                                              ; preds = %434, %375
  %395 = load i32, i32* %11, align 4
  %396 = add nsw i32 %395, -1
  store i32 %396, i32* %11, align 4
  %397 = icmp ne i32 %395, 0
  br i1 %397, label %398, label %435

398:                                              ; preds = %394
  %399 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %400 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @LPFC_SLI_REV4, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %398
  %405 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %406 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @LPFC_SLI4_PPNAME_GET, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %416

411:                                              ; preds = %404
  %412 = load i32, i32* %12, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %12, align 4
  %414 = load i32, i32* %14, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %14, align 4
  br label %430

416:                                              ; preds = %404, %398
  %417 = load i32*, i32** %6, align 8
  %418 = load i32, i32* %14, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %14, align 4
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %424 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %423, i32 0, i32 4
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %12, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %12, align 4
  %428 = sext i32 %426 to i64
  %429 = getelementptr inbounds i32, i32* %425, i64 %428
  store i32 %422, i32* %429, align 4
  br label %430

430:                                              ; preds = %416, %411
  %431 = load i32, i32* %12, align 4
  %432 = icmp eq i32 %431, 19
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  br label %435

434:                                              ; preds = %430
  br label %394

435:                                              ; preds = %433, %394
  %436 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %437 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %436, i32 0, i32 6
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @LPFC_SLI_REV4, align 4
  %440 = icmp ne i32 %438, %439
  br i1 %440, label %448, label %441

441:                                              ; preds = %435
  %442 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %443 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @LPFC_SLI4_PPNAME_NON, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %455

448:                                              ; preds = %441, %435
  %449 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %450 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %449, i32 0, i32 4
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %12, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  store i32 0, i32* %454, align 4
  br label %455

455:                                              ; preds = %448, %441
  br label %110

456:                                              ; preds = %367, %360
  %457 = load i32, i32* %14, align 4
  %458 = add nsw i32 %457, 2
  store i32 %458, i32* %14, align 4
  %459 = load i32*, i32** %6, align 8
  %460 = load i32, i32* %14, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  store i32 %463, i32* %11, align 4
  %464 = load i32, i32* %14, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %14, align 4
  %466 = load i32, i32* %11, align 4
  %467 = load i32, i32* %14, align 4
  %468 = add nsw i32 %467, %466
  store i32 %468, i32* %14, align 4
  %469 = load i32, i32* %11, align 4
  %470 = add nsw i32 3, %469
  %471 = load i32, i32* %10, align 4
  %472 = sub nsw i32 %471, %470
  store i32 %472, i32* %10, align 4
  br label %473

473:                                              ; preds = %456
  br label %474

474:                                              ; preds = %473
  br label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476
  br label %110

478:                                              ; preds = %110
  store i32 0, i32* %13, align 4
  br label %483

479:                                              ; preds = %45
  store i32 1, i32* %13, align 4
  br label %483

480:                                              ; preds = %45
  %481 = load i32, i32* %14, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %14, align 4
  br label %483

483:                                              ; preds = %480, %479, %478, %51
  br label %35

484:                                              ; preds = %43
  store i32 1, i32* %4, align 4
  br label %485

485:                                              ; preds = %484, %17
  %486 = load i32, i32* %4, align 4
  ret i32 %486
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
