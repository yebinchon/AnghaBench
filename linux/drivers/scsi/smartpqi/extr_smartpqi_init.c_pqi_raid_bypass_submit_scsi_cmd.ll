; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_raid_bypass_submit_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_raid_bypass_submit_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i64, i32, %struct.raid_map* }
%struct.raid_map = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_cmnd = type { i32* }
%struct.pqi_queue_group = type { i32 }
%struct.pqi_encryption_info = type { i32 }

@PQI_RAID_BYPASS_INELIGIBLE = common dso_local global i32 0, align 4
@SA_RAID_0 = common dso_local global i64 0, align 8
@SA_RAID_1 = common dso_local global i64 0, align 8
@SA_RAID_ADM = common dso_local global i64 0, align 8
@SA_RAID_5 = common dso_local global i64 0, align 8
@SA_RAID_6 = common dso_local global i64 0, align 8
@RAID_MAP_ENCRYPTION_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.scsi_cmnd*, %struct.pqi_queue_group*)* @pqi_raid_bypass_submit_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_raid_bypass_submit_scsi_cmd(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1, %struct.scsi_cmnd* %2, %struct.pqi_queue_group* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  %7 = alloca %struct.pqi_scsi_dev*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.pqi_queue_group*, align 8
  %10 = alloca %struct.raid_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca [16 x i32], align 16
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.pqi_encryption_info*, align 8
  %48 = alloca %struct.pqi_encryption_info, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %6, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store %struct.pqi_queue_group* %3, %struct.pqi_queue_group** %9, align 8
  store i32 0, i32* %11, align 4
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %123 [
    i32 128, label %54
    i32 132, label %55
    i32 131, label %87
    i32 135, label %88
    i32 130, label %99
    i32 134, label %100
    i32 129, label %111
    i32 133, label %112
  ]

54:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %4, %54
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 31
  %62 = shl i32 %61, 16
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %62, %68
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %13, align 8
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %55
  store i64 256, i64* %15, align 8
  br label %86

86:                                               ; preds = %85, %55
  br label %125

87:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %88

88:                                               ; preds = %4, %87
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = call i64 @get_unaligned_be32(i32* %92)
  store i64 %93, i64* %13, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = call i64 @get_unaligned_be16(i32* %97)
  store i64 %98, i64* %15, align 8
  br label %125

99:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %100

100:                                              ; preds = %4, %99
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = call i64 @get_unaligned_be32(i32* %104)
  store i64 %105, i64* %13, align 8
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 6
  %110 = call i64 @get_unaligned_be32(i32* %109)
  store i64 %110, i64* %15, align 8
  br label %125

111:                                              ; preds = %4
  store i32 1, i32* %11, align 4
  br label %112

112:                                              ; preds = %4, %111
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = call i64 @get_unaligned_be64(i32* %116)
  store i64 %117, i64* %13, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 10
  %122 = call i64 @get_unaligned_be32(i32* %121)
  store i64 %122, i64* %15, align 8
  br label %125

123:                                              ; preds = %4
  %124 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %124, i32* %5, align 4
  br label %524

125:                                              ; preds = %112, %100, %88, %86
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %130 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SA_RAID_0, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %135, i32* %5, align 4
  br label %524

136:                                              ; preds = %128, %125
  %137 = load i64, i64* %15, align 8
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %143, i32* %5, align 4
  br label %524

144:                                              ; preds = %136
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %15, align 8
  %147 = add nsw i64 %145, %146
  %148 = sub nsw i64 %147, 1
  store i64 %148, i64* %14, align 8
  %149 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %150 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %149, i32 0, i32 2
  %151 = load %struct.raid_map*, %struct.raid_map** %150, align 8
  store %struct.raid_map* %151, %struct.raid_map** %10, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %154 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %153, i32 0, i32 10
  %155 = call i64 @get_unaligned_le64(i32* %154)
  %156 = icmp sge i64 %152, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %144
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* %13, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157, %144
  %162 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %162, i32* %5, align 4
  br label %524

163:                                              ; preds = %157
  %164 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %165 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %164, i32 0, i32 9
  %166 = call i32 @get_unaligned_le16(i32* %165)
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %32, align 8
  %168 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %169 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %168, i32 0, i32 8
  %170 = call i32 @get_unaligned_le16(i32* %169)
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %36, align 8
  %172 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %173 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %172, i32 0, i32 7
  %174 = call i32 @get_unaligned_le16(i32* %173)
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %34, align 8
  %176 = load i64, i64* %32, align 8
  %177 = load i64, i64* %36, align 8
  %178 = mul nsw i64 %176, %177
  store i64 %178, i64* %16, align 8
  %179 = load i64, i64* %13, align 8
  %180 = load i64, i64* %16, align 8
  %181 = sdiv i64 %179, %180
  store i64 %181, i64* %17, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %16, align 8
  %184 = sdiv i64 %182, %183
  store i64 %184, i64* %18, align 8
  %185 = load i64, i64* %13, align 8
  %186 = load i64, i64* %17, align 8
  %187 = load i64, i64* %16, align 8
  %188 = mul nsw i64 %186, %187
  %189 = sub nsw i64 %185, %188
  store i64 %189, i64* %19, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* %16, align 8
  %193 = mul nsw i64 %191, %192
  %194 = sub nsw i64 %190, %193
  store i64 %194, i64* %20, align 8
  %195 = load i64, i64* %19, align 8
  %196 = load i64, i64* %36, align 8
  %197 = sdiv i64 %195, %196
  store i64 %197, i64* %21, align 8
  %198 = load i64, i64* %20, align 8
  %199 = load i64, i64* %36, align 8
  %200 = sdiv i64 %198, %199
  store i64 %200, i64* %22, align 8
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* %18, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %163
  %205 = load i64, i64* %21, align 8
  %206 = load i64, i64* %22, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204, %163
  %209 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %209, i32* %5, align 4
  br label %524

210:                                              ; preds = %204
  %211 = load i64, i64* %32, align 8
  %212 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %213 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %212, i32 0, i32 6
  %214 = call i32 @get_unaligned_le16(i32* %213)
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %211, %215
  store i64 %216, i64* %33, align 8
  %217 = load i64, i64* %17, align 8
  %218 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %219 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = ashr i64 %217, %220
  %222 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %223 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %222, i32 0, i32 5
  %224 = call i32 @get_unaligned_le16(i32* %223)
  %225 = sext i32 %224 to i64
  %226 = srem i64 %221, %225
  store i64 %226, i64* %40, align 8
  %227 = load i64, i64* %40, align 8
  %228 = load i64, i64* %33, align 8
  %229 = mul nsw i64 %227, %228
  %230 = load i64, i64* %21, align 8
  %231 = add nsw i64 %229, %230
  store i64 %231, i64* %12, align 8
  %232 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %233 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @SA_RAID_1, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %255

237:                                              ; preds = %210
  %238 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %239 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load i64, i64* %32, align 8
  %244 = load i64, i64* %12, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %12, align 8
  br label %246

246:                                              ; preds = %242, %237
  %247 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %248 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %254 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 8
  br label %423

255:                                              ; preds = %210
  %256 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %257 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @SA_RAID_ADM, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %324

261:                                              ; preds = %255
  %262 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %263 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  store i32 %264, i32* %46, align 4
  %265 = load i32, i32* %46, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load i64, i64* %32, align 8
  %269 = load i64, i64* %12, align 8
  %270 = srem i64 %269, %268
  store i64 %270, i64* %12, align 8
  br label %303

271:                                              ; preds = %261
  br label %272

272:                                              ; preds = %297, %271
  %273 = load i64, i64* %12, align 8
  %274 = load i64, i64* %32, align 8
  %275 = sdiv i64 %273, %274
  store i64 %275, i64* %39, align 8
  %276 = load i32, i32* %46, align 4
  %277 = sext i32 %276 to i64
  %278 = load i64, i64* %39, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %296

280:                                              ; preds = %272
  %281 = load i64, i64* %39, align 8
  %282 = load i64, i64* %34, align 8
  %283 = sub nsw i64 %282, 1
  %284 = icmp slt i64 %281, %283
  br i1 %284, label %285, label %291

285:                                              ; preds = %280
  %286 = load i64, i64* %32, align 8
  %287 = load i64, i64* %12, align 8
  %288 = add nsw i64 %287, %286
  store i64 %288, i64* %12, align 8
  %289 = load i64, i64* %39, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %39, align 8
  br label %295

291:                                              ; preds = %280
  %292 = load i64, i64* %32, align 8
  %293 = load i64, i64* %12, align 8
  %294 = srem i64 %293, %292
  store i64 %294, i64* %12, align 8
  store i64 0, i64* %39, align 8
  br label %295

295:                                              ; preds = %291, %285
  br label %296

296:                                              ; preds = %295, %272
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %46, align 4
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* %39, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %272, label %302

302:                                              ; preds = %297
  br label %303

303:                                              ; preds = %302, %267
  %304 = load i32, i32* %46, align 4
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* %34, align 8
  %307 = sub nsw i64 %306, 1
  %308 = icmp sge i64 %305, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  br label %313

310:                                              ; preds = %303
  %311 = load i32, i32* %46, align 4
  %312 = add nsw i32 %311, 1
  br label %313

313:                                              ; preds = %310, %309
  %314 = phi i32 [ 0, %309 ], [ %312, %310 ]
  store i32 %314, i32* %46, align 4
  %315 = load i32, i32* %46, align 4
  %316 = sext i32 %315 to i64
  %317 = load i64, i64* %34, align 8
  %318 = icmp sge i64 %316, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 @WARN_ON(i32 %319)
  %321 = load i32, i32* %46, align 4
  %322 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %323 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 8
  br label %422

324:                                              ; preds = %255
  %325 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %326 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @SA_RAID_5, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %332 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @SA_RAID_6, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %421

336:                                              ; preds = %330, %324
  %337 = load i64, i64* %34, align 8
  %338 = icmp sgt i64 %337, 1
  br i1 %338, label %339, label %421

339:                                              ; preds = %336
  %340 = load i64, i64* %36, align 8
  %341 = load i64, i64* %32, align 8
  %342 = mul nsw i64 %340, %341
  store i64 %342, i64* %25, align 8
  %343 = load i64, i64* %25, align 8
  %344 = load i64, i64* %34, align 8
  %345 = mul nsw i64 %343, %344
  store i64 %345, i64* %35, align 8
  %346 = load i64, i64* %13, align 8
  %347 = load i64, i64* %35, align 8
  %348 = srem i64 %346, %347
  %349 = load i64, i64* %25, align 8
  %350 = sdiv i64 %348, %349
  store i64 %350, i64* %37, align 8
  %351 = load i64, i64* %14, align 8
  %352 = load i64, i64* %35, align 8
  %353 = srem i64 %351, %352
  %354 = load i64, i64* %25, align 8
  %355 = sdiv i64 %353, %354
  store i64 %355, i64* %38, align 8
  %356 = load i64, i64* %37, align 8
  %357 = load i64, i64* %38, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %339
  %360 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %360, i32* %5, align 4
  br label %524

361:                                              ; preds = %339
  %362 = load i64, i64* %13, align 8
  %363 = load i64, i64* %35, align 8
  %364 = sdiv i64 %362, %363
  store i64 %364, i64* %23, align 8
  store i64 %364, i64* %26, align 8
  store i64 %364, i64* %17, align 8
  %365 = load i64, i64* %14, align 8
  %366 = load i64, i64* %35, align 8
  %367 = sdiv i64 %365, %366
  store i64 %367, i64* %24, align 8
  store i64 %367, i64* %27, align 8
  %368 = load i64, i64* %26, align 8
  %369 = load i64, i64* %27, align 8
  %370 = icmp ne i64 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %361
  %372 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %372, i32* %5, align 4
  br label %524

373:                                              ; preds = %361
  %374 = load i64, i64* %13, align 8
  %375 = load i64, i64* %35, align 8
  %376 = srem i64 %374, %375
  %377 = load i64, i64* %25, align 8
  %378 = srem i64 %376, %377
  store i64 %378, i64* %28, align 8
  store i64 %378, i64* %19, align 8
  %379 = load i64, i64* %14, align 8
  %380 = load i64, i64* %35, align 8
  %381 = srem i64 %379, %380
  %382 = load i64, i64* %25, align 8
  %383 = srem i64 %381, %382
  store i64 %383, i64* %29, align 8
  %384 = load i64, i64* %28, align 8
  %385 = load i64, i64* %36, align 8
  %386 = sdiv i64 %384, %385
  store i64 %386, i64* %21, align 8
  %387 = load i64, i64* %21, align 8
  store i64 %387, i64* %30, align 8
  %388 = load i64, i64* %29, align 8
  %389 = load i64, i64* %36, align 8
  %390 = sdiv i64 %388, %389
  store i64 %390, i64* %31, align 8
  %391 = load i64, i64* %30, align 8
  %392 = load i64, i64* %31, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %373
  %395 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %395, i32* %5, align 4
  br label %524

396:                                              ; preds = %373
  %397 = load i64, i64* %17, align 8
  %398 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %399 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = ashr i64 %397, %400
  %402 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %403 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %402, i32 0, i32 5
  %404 = call i32 @get_unaligned_le16(i32* %403)
  %405 = sext i32 %404 to i64
  %406 = srem i64 %401, %405
  store i64 %406, i64* %40, align 8
  %407 = load i64, i64* %37, align 8
  %408 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %409 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %408, i32 0, i32 5
  %410 = call i32 @get_unaligned_le16(i32* %409)
  %411 = sext i32 %410 to i64
  %412 = load i64, i64* %33, align 8
  %413 = mul nsw i64 %411, %412
  %414 = mul nsw i64 %407, %413
  %415 = load i64, i64* %40, align 8
  %416 = load i64, i64* %33, align 8
  %417 = mul nsw i64 %415, %416
  %418 = add nsw i64 %414, %417
  %419 = load i64, i64* %21, align 8
  %420 = add nsw i64 %418, %419
  store i64 %420, i64* %12, align 8
  br label %421

421:                                              ; preds = %396, %336, %330
  br label %422

422:                                              ; preds = %421, %313
  br label %423

423:                                              ; preds = %422, %246
  %424 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %425 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %424, i32 0, i32 4
  %426 = load %struct.TYPE_2__*, %struct.TYPE_2__** %425, align 8
  %427 = load i64, i64* %12, align 8
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %41, align 8
  %431 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %432 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %431, i32 0, i32 3
  %433 = call i64 @get_unaligned_le64(i32* %432)
  %434 = load i64, i64* %17, align 8
  %435 = load i64, i64* %36, align 8
  %436 = mul nsw i64 %434, %435
  %437 = add nsw i64 %433, %436
  %438 = load i64, i64* %19, align 8
  %439 = load i64, i64* %21, align 8
  %440 = load i64, i64* %36, align 8
  %441 = mul nsw i64 %439, %440
  %442 = sub nsw i64 %438, %441
  %443 = add nsw i64 %437, %442
  store i64 %443, i64* %42, align 8
  %444 = load i64, i64* %15, align 8
  store i64 %444, i64* %43, align 8
  %445 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %446 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %462

449:                                              ; preds = %423
  %450 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %451 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 8
  %453 = load i64, i64* %42, align 8
  %454 = zext i32 %452 to i64
  %455 = shl i64 %453, %454
  store i64 %455, i64* %42, align 8
  %456 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %457 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = load i64, i64* %43, align 8
  %460 = zext i32 %458 to i64
  %461 = shl i64 %459, %460
  store i64 %461, i64* %43, align 8
  br label %462

462:                                              ; preds = %449, %423
  %463 = load i64, i64* %43, align 8
  %464 = icmp sgt i64 %463, 65535
  %465 = zext i1 %464 to i32
  %466 = call i64 @unlikely(i32 %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %470

468:                                              ; preds = %462
  %469 = load i32, i32* @PQI_RAID_BYPASS_INELIGIBLE, align 4
  store i32 %469, i32* %5, align 4
  br label %524

470:                                              ; preds = %462
  %471 = load i64, i64* %42, align 8
  %472 = icmp sgt i64 %471, 4294967295
  br i1 %472, label %473, label %488

473:                                              ; preds = %470
  %474 = load i32, i32* %11, align 4
  %475 = icmp ne i32 %474, 0
  %476 = zext i1 %475 to i64
  %477 = select i1 %475, i32 129, i32 133
  %478 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 0
  store i32 %477, i32* %478, align 16
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 1
  store i32 0, i32* %479, align 4
  %480 = load i64, i64* %42, align 8
  %481 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 2
  %482 = call i32 @put_unaligned_be64(i64 %480, i32* %481)
  %483 = load i64, i64* %43, align 8
  %484 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 10
  %485 = call i32 @put_unaligned_be32(i64 %483, i32* %484)
  %486 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 14
  store i32 0, i32* %486, align 8
  %487 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 15
  store i32 0, i32* %487, align 4
  store i32 16, i32* %45, align 4
  br label %503

488:                                              ; preds = %470
  %489 = load i32, i32* %11, align 4
  %490 = icmp ne i32 %489, 0
  %491 = zext i1 %490 to i64
  %492 = select i1 %490, i32 131, i32 135
  %493 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 0
  store i32 %492, i32* %493, align 16
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 1
  store i32 0, i32* %494, align 4
  %495 = load i64, i64* %42, align 8
  %496 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 2
  %497 = call i32 @put_unaligned_be32(i64 %495, i32* %496)
  %498 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 6
  store i32 0, i32* %498, align 8
  %499 = load i64, i64* %43, align 8
  %500 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 7
  %501 = call i32 @put_unaligned_be16(i64 %499, i32* %500)
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 9
  store i32 0, i32* %502, align 4
  store i32 10, i32* %45, align 4
  br label %503

503:                                              ; preds = %488, %473
  %504 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %505 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %504, i32 0, i32 2
  %506 = call i32 @get_unaligned_le16(i32* %505)
  %507 = load i32, i32* @RAID_MAP_ENCRYPTION_ENABLED, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %503
  %511 = load %struct.raid_map*, %struct.raid_map** %10, align 8
  %512 = load i64, i64* %13, align 8
  %513 = call i32 @pqi_set_encryption_info(%struct.pqi_encryption_info* %48, %struct.raid_map* %511, i64 %512)
  store %struct.pqi_encryption_info* %48, %struct.pqi_encryption_info** %47, align 8
  br label %515

514:                                              ; preds = %503
  store %struct.pqi_encryption_info* null, %struct.pqi_encryption_info** %47, align 8
  br label %515

515:                                              ; preds = %514, %510
  %516 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %517 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %518 = load i64, i64* %41, align 8
  %519 = getelementptr inbounds [16 x i32], [16 x i32]* %44, i64 0, i64 0
  %520 = load i32, i32* %45, align 4
  %521 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %9, align 8
  %522 = load %struct.pqi_encryption_info*, %struct.pqi_encryption_info** %47, align 8
  %523 = call i32 @pqi_aio_submit_io(%struct.pqi_ctrl_info* %516, %struct.scsi_cmnd* %517, i64 %518, i32* %519, i32 %520, %struct.pqi_queue_group* %521, %struct.pqi_encryption_info* %522, i32 1)
  store i32 %523, i32* %5, align 4
  br label %524

524:                                              ; preds = %515, %468, %394, %371, %359, %208, %161, %142, %134, %123
  %525 = load i32, i32* %5, align 4
  ret i32 %525
}

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i64 @get_unaligned_be64(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_unaligned_le64(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @put_unaligned_be64(i64, i32*) #1

declare dso_local i32 @put_unaligned_be32(i64, i32*) #1

declare dso_local i32 @put_unaligned_be16(i64, i32*) #1

declare dso_local i32 @pqi_set_encryption_info(%struct.pqi_encryption_info*, %struct.raid_map*, i64) #1

declare dso_local i32 @pqi_aio_submit_io(%struct.pqi_ctrl_info*, %struct.scsi_cmnd*, i64, i32*, i32, %struct.pqi_queue_group*, %struct.pqi_encryption_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
