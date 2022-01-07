; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_mode_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sdebug_dev_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SDEBUG_MAX_MSENSE_SZ = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i8 0, align 1
@sdebug_ptype = common dso_local global i64 0, align 8
@TYPE_DISK = common dso_local global i64 0, align 8
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAVING_PARAMS_UNSUP = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@sdebug_wp = common dso_local global i64 0, align 8
@sdebug_capacity = common dso_local global i32 0, align 4
@sdebug_sector_size = common dso_local global i32 0, align 4
@SDEB_IN_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_mode_sense(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @SDEBUG_MAX_MSENSE_SZ, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %17, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %18, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %19, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %20, align 4
  %47 = load i8*, i8** %19, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 192
  %52 = ashr i32 %51, 6
  store i32 %52, i32* %6, align 4
  %53 = load i8*, i8** %19, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 63
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %19, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i8, i8* @MODE_SENSE, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %63, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %22, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %2
  br label %83

73:                                               ; preds = %2
  %74 = load i8*, i8** %19, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 16
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %73, %72
  %84 = phi i32 [ 0, %72 ], [ %82, %73 ]
  store i32 %84, i32* %21, align 4
  %85 = load i64, i64* @sdebug_ptype, align 8
  %86 = load i64, i64* @TYPE_DISK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %23, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 16, i32 8
  store i32 %98, i32* %9, align 4
  br label %100

99:                                               ; preds = %91, %83
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %22, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i8*, i8** %19, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  br label %113

108:                                              ; preds = %100
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 7
  %111 = call zeroext i8 @get_unaligned_be16(i8* %110)
  %112 = zext i8 %111 to i32
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i32 [ %107, %103 ], [ %112, %108 ]
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* @SDEBUG_MAX_MSENSE_SZ, align 4
  %116 = call i32 @memset(i8* %34, i32 0, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 3, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %121 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %122 = load i32, i32* @SAVING_PARAMS_UNSUP, align 4
  %123 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %120, i32 %121, i32 %122, i32 0)
  %124 = load i32, i32* @check_condition_result, align 4
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %494

125:                                              ; preds = %113
  %126 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %127 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  %134 = mul nsw i32 %133, 2000
  %135 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %136 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 1000
  %139 = add nsw i32 %134, %138
  %140 = sub nsw i32 %139, 3
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %23, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %125
  store i8 16, i8* %10, align 1
  %144 = load i64, i64* @sdebug_wp, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i8, i8* %10, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, 128
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %10, align 1
  br label %151

151:                                              ; preds = %146, %143
  br label %153

152:                                              ; preds = %125
  store i8 0, i8* %10, align 1
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i32, i32* %22, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i8, i8* %10, align 1
  %158 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %157, i8* %158, align 2
  %159 = load i32, i32* %9, align 4
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 %160, i8* %161, align 1
  store i32 4, i32* %12, align 4
  br label %173

162:                                              ; preds = %153
  %163 = load i8, i8* %10, align 1
  %164 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 %163, i8* %164, align 1
  %165 = load i32, i32* %9, align 4
  %166 = icmp eq i32 16, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = getelementptr inbounds i8, i8* %34, i64 4
  store i8 1, i8* %168, align 4
  br label %169

169:                                              ; preds = %167, %162
  %170 = load i32, i32* %9, align 4
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds i8, i8* %34, i64 7
  store i8 %171, i8* %172, align 1
  store i32 8, i32* %12, align 4
  br label %173

173:                                              ; preds = %169, %156
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %34, i64 %175
  store i8* %176, i8** %16, align 8
  %177 = load i32, i32* %9, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load i32, i32* @sdebug_capacity, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = call i32 (...) @get_sdebug_capacity()
  store i32 %183, i32* @sdebug_capacity, align 4
  br label %184

184:                                              ; preds = %182, %179, %173
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 8, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %184
  %188 = load i32, i32* @sdebug_capacity, align 4
  %189 = icmp ugt i32 %188, -2
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i8*, i8** %16, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = call i32 @put_unaligned_be32(i32 -1, i8* %192)
  br label %199

194:                                              ; preds = %187
  %195 = load i32, i32* @sdebug_capacity, align 4
  %196 = load i8*, i8** %16, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = call i32 @put_unaligned_be32(i32 %195, i8* %197)
  br label %199

199:                                              ; preds = %194, %190
  %200 = load i32, i32* @sdebug_sector_size, align 4
  %201 = load i8*, i8** %16, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 6
  %203 = call i32 @put_unaligned_be16(i32 %200, i8* %202)
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %34, i64 %208
  store i8* %209, i8** %16, align 8
  br label %229

210:                                              ; preds = %184
  %211 = load i32, i32* %9, align 4
  %212 = icmp eq i32 16, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load i32, i32* @sdebug_capacity, align 4
  %215 = load i8*, i8** %16, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 0
  %217 = call i32 @put_unaligned_be64(i32 %214, i8* %216)
  %218 = load i32, i32* @sdebug_sector_size, align 4
  %219 = load i8*, i8** %16, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 12
  %221 = call i32 @put_unaligned_be32(i32 %218, i8* %220)
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %34, i64 %226
  store i8* %227, i8** %16, align 8
  br label %228

228:                                              ; preds = %213, %210
  br label %229

229:                                              ; preds = %228, %199
  %230 = load i32, i32* %8, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load i32, i32* %8, align 4
  %234 = icmp slt i32 %233, 255
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 25, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %240 = load i32, i32* @SDEB_IN_CDB, align 4
  %241 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %239, i32 %240, i32 3, i32 -1)
  %242 = load i32, i32* @check_condition_result, align 4
  store i32 %242, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %494

243:                                              ; preds = %235, %232, %229
  store i32 0, i32* %24, align 4
  %244 = load i32, i32* %7, align 4
  switch i32 %244, label %466 [
    i32 1, label %245
    i32 2, label %253
    i32 3, label %261
    i32 8, label %274
    i32 10, label %287
    i32 25, label %295
    i32 28, label %358
    i32 63, label %366
  ]

245:                                              ; preds = %243
  %246 = load i8*, i8** %16, align 8
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %15, align 4
  %249 = call i32 @resp_err_recov_pg(i8* %246, i32 %247, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %12, align 4
  br label %467

253:                                              ; preds = %243
  %254 = load i8*, i8** %16, align 8
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @resp_disconnect_pg(i8* %254, i32 %255, i32 %256)
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %12, align 4
  br label %467

261:                                              ; preds = %243
  %262 = load i32, i32* %23, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %261
  %265 = load i8*, i8** %16, align 8
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @resp_format_pg(i8* %265, i32 %266, i32 %267)
  store i32 %268, i32* %13, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %12, align 4
  br label %273

272:                                              ; preds = %261
  store i32 1, i32* %24, align 4
  br label %273

273:                                              ; preds = %272, %264
  br label %467

274:                                              ; preds = %243
  %275 = load i32, i32* %23, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = load i8*, i8** %16, align 8
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %15, align 4
  %281 = call i32 @resp_caching_pg(i8* %278, i32 %279, i32 %280)
  store i32 %281, i32* %13, align 4
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %12, align 4
  br label %286

285:                                              ; preds = %274
  store i32 1, i32* %24, align 4
  br label %286

286:                                              ; preds = %285, %277
  br label %467

287:                                              ; preds = %243
  %288 = load i8*, i8** %16, align 8
  %289 = load i32, i32* %6, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i32 @resp_ctrl_m_pg(i8* %288, i32 %289, i32 %290)
  store i32 %291, i32* %13, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %12, align 4
  br label %467

295:                                              ; preds = %243
  %296 = load i32, i32* %8, align 4
  %297 = icmp sgt i32 %296, 2
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = load i32, i32* %8, align 4
  %300 = icmp slt i32 %299, 255
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %303 = load i32, i32* @SDEB_IN_CDB, align 4
  %304 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %302, i32 %303, i32 3, i32 -1)
  %305 = load i32, i32* @check_condition_result, align 4
  store i32 %305, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %494

306:                                              ; preds = %298, %295
  store i32 0, i32* %13, align 4
  %307 = load i32, i32* %8, align 4
  %308 = icmp eq i32 0, %307
  br i1 %308, label %312, label %309

309:                                              ; preds = %306
  %310 = load i32, i32* %8, align 4
  %311 = icmp eq i32 255, %310
  br i1 %311, label %312, label %322

312:                                              ; preds = %309, %306
  %313 = load i8*, i8** %16, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call i32 @resp_sas_sf_m_pg(i8* %316, i32 %317, i32 %318)
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %13, align 4
  br label %322

322:                                              ; preds = %312, %309
  %323 = load i32, i32* %8, align 4
  %324 = icmp eq i32 1, %323
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %8, align 4
  %327 = icmp eq i32 255, %326
  br i1 %327, label %328, label %339

328:                                              ; preds = %325, %322
  %329 = load i8*, i8** %16, align 8
  %330 = load i32, i32* %13, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  %333 = load i32, i32* %6, align 4
  %334 = load i32, i32* %15, align 4
  %335 = load i32, i32* %14, align 4
  %336 = call i32 @resp_sas_pcd_m_spg(i8* %332, i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %13, align 4
  br label %339

339:                                              ; preds = %328, %325
  %340 = load i32, i32* %8, align 4
  %341 = icmp eq i32 2, %340
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = load i32, i32* %8, align 4
  %344 = icmp eq i32 255, %343
  br i1 %344, label %345, label %354

345:                                              ; preds = %342, %339
  %346 = load i8*, i8** %16, align 8
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i32, i32* %6, align 4
  %351 = call i32 @resp_sas_sha_m_spg(i8* %349, i32 %350)
  %352 = load i32, i32* %13, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %13, align 4
  br label %354

354:                                              ; preds = %345, %342
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* %12, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %12, align 4
  br label %467

358:                                              ; preds = %243
  %359 = load i8*, i8** %16, align 8
  %360 = load i32, i32* %6, align 4
  %361 = load i32, i32* %15, align 4
  %362 = call i32 @resp_iec_m_pg(i8* %359, i32 %360, i32 %361)
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %13, align 4
  %364 = load i32, i32* %12, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %12, align 4
  br label %467

366:                                              ; preds = %243
  %367 = load i32, i32* %8, align 4
  %368 = icmp eq i32 0, %367
  br i1 %368, label %372, label %369

369:                                              ; preds = %366
  %370 = load i32, i32* %8, align 4
  %371 = icmp eq i32 255, %370
  br i1 %371, label %372, label %460

372:                                              ; preds = %369, %366
  %373 = load i8*, i8** %16, align 8
  %374 = load i32, i32* %6, align 4
  %375 = load i32, i32* %15, align 4
  %376 = call i32 @resp_err_recov_pg(i8* %373, i32 %374, i32 %375)
  store i32 %376, i32* %13, align 4
  %377 = load i8*, i8** %16, align 8
  %378 = load i32, i32* %13, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %377, i64 %379
  %381 = load i32, i32* %6, align 4
  %382 = load i32, i32* %15, align 4
  %383 = call i32 @resp_disconnect_pg(i8* %380, i32 %381, i32 %382)
  %384 = load i32, i32* %13, align 4
  %385 = add nsw i32 %384, %383
  store i32 %385, i32* %13, align 4
  %386 = load i32, i32* %23, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %407

388:                                              ; preds = %372
  %389 = load i8*, i8** %16, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %389, i64 %391
  %393 = load i32, i32* %6, align 4
  %394 = load i32, i32* %15, align 4
  %395 = call i32 @resp_format_pg(i8* %392, i32 %393, i32 %394)
  %396 = load i32, i32* %13, align 4
  %397 = add nsw i32 %396, %395
  store i32 %397, i32* %13, align 4
  %398 = load i8*, i8** %16, align 8
  %399 = load i32, i32* %13, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %398, i64 %400
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* %15, align 4
  %404 = call i32 @resp_caching_pg(i8* %401, i32 %402, i32 %403)
  %405 = load i32, i32* %13, align 4
  %406 = add nsw i32 %405, %404
  store i32 %406, i32* %13, align 4
  br label %407

407:                                              ; preds = %388, %372
  %408 = load i8*, i8** %16, align 8
  %409 = load i32, i32* %13, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %408, i64 %410
  %412 = load i32, i32* %6, align 4
  %413 = load i32, i32* %15, align 4
  %414 = call i32 @resp_ctrl_m_pg(i8* %411, i32 %412, i32 %413)
  %415 = load i32, i32* %13, align 4
  %416 = add nsw i32 %415, %414
  store i32 %416, i32* %13, align 4
  %417 = load i8*, i8** %16, align 8
  %418 = load i32, i32* %13, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* %417, i64 %419
  %421 = load i32, i32* %6, align 4
  %422 = load i32, i32* %15, align 4
  %423 = call i32 @resp_sas_sf_m_pg(i8* %420, i32 %421, i32 %422)
  %424 = load i32, i32* %13, align 4
  %425 = add nsw i32 %424, %423
  store i32 %425, i32* %13, align 4
  %426 = load i32, i32* %8, align 4
  %427 = icmp eq i32 255, %426
  br i1 %427, label %428, label %447

428:                                              ; preds = %407
  %429 = load i8*, i8** %16, align 8
  %430 = load i32, i32* %13, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %429, i64 %431
  %433 = load i32, i32* %6, align 4
  %434 = load i32, i32* %15, align 4
  %435 = load i32, i32* %14, align 4
  %436 = call i32 @resp_sas_pcd_m_spg(i8* %432, i32 %433, i32 %434, i32 %435)
  %437 = load i32, i32* %13, align 4
  %438 = add nsw i32 %437, %436
  store i32 %438, i32* %13, align 4
  %439 = load i8*, i8** %16, align 8
  %440 = load i32, i32* %13, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i32, i32* %6, align 4
  %444 = call i32 @resp_sas_sha_m_spg(i8* %442, i32 %443)
  %445 = load i32, i32* %13, align 4
  %446 = add nsw i32 %445, %444
  store i32 %446, i32* %13, align 4
  br label %447

447:                                              ; preds = %428, %407
  %448 = load i8*, i8** %16, align 8
  %449 = load i32, i32* %13, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %448, i64 %450
  %452 = load i32, i32* %6, align 4
  %453 = load i32, i32* %15, align 4
  %454 = call i32 @resp_iec_m_pg(i8* %451, i32 %452, i32 %453)
  %455 = load i32, i32* %13, align 4
  %456 = add nsw i32 %455, %454
  store i32 %456, i32* %13, align 4
  %457 = load i32, i32* %13, align 4
  %458 = load i32, i32* %12, align 4
  %459 = add nsw i32 %458, %457
  store i32 %459, i32* %12, align 4
  br label %465

460:                                              ; preds = %369
  %461 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %462 = load i32, i32* @SDEB_IN_CDB, align 4
  %463 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %461, i32 %462, i32 3, i32 -1)
  %464 = load i32, i32* @check_condition_result, align 4
  store i32 %464, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %494

465:                                              ; preds = %447
  br label %467

466:                                              ; preds = %243
  store i32 1, i32* %24, align 4
  br label %467

467:                                              ; preds = %466, %465, %358, %354, %287, %286, %273, %253, %245
  %468 = load i32, i32* %24, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %475

470:                                              ; preds = %467
  %471 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %472 = load i32, i32* @SDEB_IN_CDB, align 4
  %473 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %471, i32 %472, i32 2, i32 5)
  %474 = load i32, i32* @check_condition_result, align 4
  store i32 %474, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %494

475:                                              ; preds = %467
  %476 = load i32, i32* %22, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = load i32, i32* %12, align 4
  %480 = sub nsw i32 %479, 1
  %481 = trunc i32 %480 to i8
  %482 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %481, i8* %482, align 16
  br label %488

483:                                              ; preds = %475
  %484 = load i32, i32* %12, align 4
  %485 = sub nsw i32 %484, 2
  %486 = getelementptr inbounds i8, i8* %34, i64 0
  %487 = call i32 @put_unaligned_be16(i32 %485, i8* %486)
  br label %488

488:                                              ; preds = %483, %478
  %489 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %490 = load i32, i32* %11, align 4
  %491 = load i32, i32* %12, align 4
  %492 = call i32 @min(i32 %490, i32 %491)
  %493 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %489, i8* %34, i32 %492)
  store i32 %493, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %494

494:                                              ; preds = %488, %470, %460, %301, %238, %119
  %495 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %495)
  %496 = load i32, i32* %3, align 4
  ret i32 %496
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i8 @get_unaligned_be16(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #2

declare dso_local i32 @get_sdebug_capacity(...) #2

declare dso_local i32 @put_unaligned_be32(i32, i8*) #2

declare dso_local i32 @put_unaligned_be16(i32, i8*) #2

declare dso_local i32 @put_unaligned_be64(i32, i8*) #2

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #2

declare dso_local i32 @resp_err_recov_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_disconnect_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_format_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_caching_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_ctrl_m_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_sas_sf_m_pg(i8*, i32, i32) #2

declare dso_local i32 @resp_sas_pcd_m_spg(i8*, i32, i32, i32) #2

declare dso_local i32 @resp_sas_sha_m_spg(i8*, i32) #2

declare dso_local i32 @resp_iec_m_pg(i8*, i32, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
