; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_ioaccel_raid_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_ioaccel_raid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32*, i32, i64, %struct.raid_map_data }
%struct.raid_map_data = type { i64, i64, i64, i32, i64, i64, i32, i32, i32, %struct.raid_map_disk_data* }
%struct.raid_map_disk_data = type { i64 }

@IO_ACCEL_INELIGIBLE = common dso_local global i32 0, align 4
@RAID_MAP_MAX_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_scsi_ioaccel_raid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_ioaccel_raid_map(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca %struct.raid_map_data*, align 8
  %9 = alloca %struct.raid_map_disk_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca [16 x i32], align 16
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList* %1, %struct.CommandList** %5, align 8
  %44 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %45 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %44, i32 0, i32 1
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %45, align 8
  store %struct.scsi_cmnd* %46, %struct.scsi_cmnd** %6, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %50, align 8
  store %struct.hpsa_scsi_dev_t* %51, %struct.hpsa_scsi_dev_t** %7, align 8
  %52 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %53 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %52, i32 0, i32 5
  store %struct.raid_map_data* %53, %struct.raid_map_data** %8, align 8
  %54 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %55 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %54, i32 0, i32 9
  %56 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %55, align 8
  %57 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %56, i64 0
  store %struct.raid_map_disk_data* %57, %struct.raid_map_disk_data** %9, align 8
  store i32 0, i32* %10, align 4
  %58 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %59 = icmp ne %struct.hpsa_scsi_dev_t* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %749

61:                                               ; preds = %2
  %62 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %63 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %749

67:                                               ; preds = %61
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %291 [
    i32 128, label %73
    i32 132, label %74
    i32 131, label %105
    i32 135, label %106
    i32 130, label %147
    i32 134, label %148
    i32 129, label %205
    i32 133, label %206
  ]

73:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %67, %73
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 31
  %81 = shl i32 %80, 16
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %81, %87
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %88, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %74
  store i64 256, i64* %14, align 8
  br label %104

104:                                              ; preds = %103, %74
  br label %293

105:                                              ; preds = %67
  store i32 1, i32* %10, align 4
  br label %106

106:                                              ; preds = %67, %105
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 24
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %112, %118
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %119, %125
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %128 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %126, %131
  store i32 %132, i32* %12, align 4
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 7
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = shl i64 %138, 8
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 8
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = or i64 %139, %145
  store i64 %146, i64* %14, align 8
  br label %293

147:                                              ; preds = %67
  store i32 1, i32* %10, align 4
  br label %148

148:                                              ; preds = %67, %147
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %150 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 24
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 16
  %161 = or i32 %154, %160
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %163 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = or i32 %161, %167
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %170 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 5
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %168, %173
  store i32 %174, i32* %12, align 4
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %176 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = shl i64 %180, 24
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %183 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 7
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = shl i64 %187, 16
  %189 = or i64 %181, %188
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %191 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 8
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = shl i64 %195, 8
  %197 = or i64 %189, %196
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 9
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = or i64 %197, %203
  store i64 %204, i64* %14, align 8
  br label %293

205:                                              ; preds = %67
  store i32 1, i32* %10, align 4
  br label %206

206:                                              ; preds = %67, %205
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 56
  %213 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %214 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 48
  %219 = or i32 %212, %218
  %220 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %221 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 40
  %226 = or i32 %219, %225
  %227 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %228 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 5
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %231, 32
  %233 = or i32 %226, %232
  %234 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %235 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 6
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 24
  %240 = or i32 %233, %239
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %242 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 7
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %245, 16
  %247 = or i32 %240, %246
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %249 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 8
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 8
  %254 = or i32 %247, %253
  %255 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %256 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 9
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %254, %259
  store i32 %260, i32* %12, align 4
  %261 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %262 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 10
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = shl i64 %266, 24
  %268 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %269 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 11
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = shl i64 %273, 16
  %275 = or i64 %267, %274
  %276 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %277 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 12
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = shl i64 %281, 8
  %283 = or i64 %275, %282
  %284 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %285 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 13
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = or i64 %283, %289
  store i64 %290, i64* %14, align 8
  br label %293

291:                                              ; preds = %67
  %292 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %292, i32* %3, align 4
  br label %749

293:                                              ; preds = %206, %148, %106, %104
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* %14, align 8
  %297 = add nsw i64 %295, %296
  %298 = sub nsw i64 %297, 1
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %10, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %309

302:                                              ; preds = %293
  %303 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %304 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %308, i32* %3, align 4
  br label %749

309:                                              ; preds = %302, %293
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %313 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %312, i32 0, i32 8
  %314 = load i32, i32* %313, align 8
  %315 = call i64 @le64_to_cpu(i32 %314)
  %316 = icmp sge i64 %311, %315
  br i1 %316, label %321, label %317

317:                                              ; preds = %309
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %12, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %317, %309
  %322 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %322, i32* %3, align 4
  br label %749

323:                                              ; preds = %317
  %324 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %325 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = call i64 @le16_to_cpu(i64 %326)
  %328 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %329 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = call i64 @le16_to_cpu(i64 %330)
  %332 = mul nsw i64 %327, %331
  store i64 %332, i64* %15, align 8
  %333 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %334 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = call i64 @le16_to_cpu(i64 %335)
  store i64 %336, i64* %42, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = load i64, i64* %15, align 8
  %340 = sdiv i64 %338, %339
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %13, align 4
  %343 = sext i32 %342 to i64
  %344 = load i64, i64* %15, align 8
  %345 = sdiv i64 %343, %344
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %17, align 4
  %347 = load i32, i32* %12, align 4
  %348 = sext i32 %347 to i64
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = load i64, i64* %15, align 8
  %352 = mul nsw i64 %350, %351
  %353 = sub nsw i64 %348, %352
  store i64 %353, i64* %18, align 8
  %354 = load i32, i32* %13, align 4
  %355 = sext i32 %354 to i64
  %356 = load i32, i32* %17, align 4
  %357 = sext i32 %356 to i64
  %358 = load i64, i64* %15, align 8
  %359 = mul nsw i64 %357, %358
  %360 = sub nsw i64 %355, %359
  store i64 %360, i64* %19, align 8
  %361 = load i64, i64* %18, align 8
  %362 = load i64, i64* %42, align 8
  %363 = sdiv i64 %361, %362
  store i64 %363, i64* %20, align 8
  %364 = load i64, i64* %19, align 8
  %365 = load i64, i64* %42, align 8
  %366 = sdiv i64 %364, %365
  store i64 %366, i64* %21, align 8
  %367 = load i32, i32* %16, align 4
  %368 = load i32, i32* %17, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %374, label %370

370:                                              ; preds = %323
  %371 = load i64, i64* %20, align 8
  %372 = load i64, i64* %21, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %370, %323
  %375 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %375, i32* %3, align 4
  br label %749

376:                                              ; preds = %370
  %377 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %378 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = call i64 @le16_to_cpu(i64 %379)
  %381 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %382 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = call i64 @le16_to_cpu(i64 %383)
  %385 = add nsw i64 %380, %384
  store i64 %385, i64* %31, align 8
  %386 = load i32, i32* %16, align 4
  %387 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %388 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = ashr i32 %386, %389
  %391 = sext i32 %390 to i64
  %392 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %393 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %392, i32 0, i32 4
  %394 = load i64, i64* %393, align 8
  %395 = call i64 @le16_to_cpu(i64 %394)
  %396 = srem i64 %391, %395
  store i64 %396, i64* %36, align 8
  %397 = load i64, i64* %36, align 8
  %398 = load i64, i64* %31, align 8
  %399 = mul nsw i64 %397, %398
  %400 = load i64, i64* %20, align 8
  %401 = add nsw i64 %399, %400
  store i64 %401, i64* %11, align 8
  %402 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %403 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  switch i32 %404, label %581 [
    i32 140, label %405
    i32 139, label %406
    i32 136, label %434
    i32 138, label %465
    i32 137, label %465
  ]

405:                                              ; preds = %376
  br label %583

406:                                              ; preds = %376
  %407 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %408 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %407, i32 0, i32 5
  %409 = load i64, i64* %408, align 8
  %410 = call i64 @le16_to_cpu(i64 %409)
  %411 = icmp ne i64 %410, 2
  %412 = zext i1 %411 to i32
  %413 = call i32 @BUG_ON(i32 %412)
  %414 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %415 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %406
  %419 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %420 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = call i64 @le16_to_cpu(i64 %421)
  %423 = load i64, i64* %11, align 8
  %424 = add nsw i64 %423, %422
  store i64 %424, i64* %11, align 8
  br label %425

425:                                              ; preds = %418, %406
  %426 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %427 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, 0
  %430 = xor i1 %429, true
  %431 = zext i1 %430 to i32
  %432 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %433 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %432, i32 0, i32 1
  store i32 %431, i32* %433, align 4
  br label %583

434:                                              ; preds = %376
  %435 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %436 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %435, i32 0, i32 5
  %437 = load i64, i64* %436, align 8
  %438 = call i64 @le16_to_cpu(i64 %437)
  %439 = icmp ne i64 %438, 3
  %440 = zext i1 %439 to i32
  %441 = call i32 @BUG_ON(i32 %440)
  %442 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %443 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %43, align 4
  %445 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %446 = load i32, i32* %43, align 4
  %447 = call i32 @raid_map_helper(%struct.raid_map_data* %445, i32 %446, i64* %11, i64* %35)
  %448 = load i32, i32* %43, align 4
  %449 = sext i32 %448 to i64
  %450 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %451 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %450, i32 0, i32 5
  %452 = load i64, i64* %451, align 8
  %453 = call i64 @le16_to_cpu(i64 %452)
  %454 = sub nsw i64 %453, 1
  %455 = icmp sge i64 %449, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %434
  br label %460

457:                                              ; preds = %434
  %458 = load i32, i32* %43, align 4
  %459 = add nsw i32 %458, 1
  br label %460

460:                                              ; preds = %457, %456
  %461 = phi i32 [ 0, %456 ], [ %459, %457 ]
  store i32 %461, i32* %43, align 4
  %462 = load i32, i32* %43, align 4
  %463 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %464 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %463, i32 0, i32 1
  store i32 %462, i32* %464, align 4
  br label %583

465:                                              ; preds = %376, %376
  %466 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %467 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %466, i32 0, i32 5
  %468 = load i64, i64* %467, align 8
  %469 = call i64 @le16_to_cpu(i64 %468)
  %470 = icmp sle i64 %469, 1
  br i1 %470, label %471, label %472

471:                                              ; preds = %465
  br label %583

472:                                              ; preds = %465
  %473 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %474 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = call i64 @le16_to_cpu(i64 %475)
  %477 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %478 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = call i64 @le16_to_cpu(i64 %479)
  %481 = mul nsw i64 %476, %480
  store i64 %481, i64* %24, align 8
  %482 = load i64, i64* %24, align 8
  %483 = icmp eq i64 %482, 0
  %484 = zext i1 %483 to i32
  %485 = call i32 @BUG_ON(i32 %484)
  %486 = load i64, i64* %24, align 8
  %487 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %488 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %487, i32 0, i32 5
  %489 = load i64, i64* %488, align 8
  %490 = call i64 @le16_to_cpu(i64 %489)
  %491 = mul nsw i64 %486, %490
  store i64 %491, i64* %32, align 8
  %492 = load i32, i32* %12, align 4
  %493 = sext i32 %492 to i64
  %494 = load i64, i64* %32, align 8
  %495 = srem i64 %493, %494
  %496 = load i64, i64* %24, align 8
  %497 = sdiv i64 %495, %496
  store i64 %497, i64* %33, align 8
  %498 = load i32, i32* %13, align 4
  %499 = sext i32 %498 to i64
  %500 = load i64, i64* %32, align 8
  %501 = srem i64 %499, %500
  %502 = load i64, i64* %24, align 8
  %503 = sdiv i64 %501, %502
  store i64 %503, i64* %34, align 8
  %504 = load i64, i64* %33, align 8
  %505 = load i64, i64* %34, align 8
  %506 = icmp ne i64 %504, %505
  br i1 %506, label %507, label %509

507:                                              ; preds = %472
  %508 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %508, i32* %3, align 4
  br label %749

509:                                              ; preds = %472
  %510 = load i32, i32* %12, align 4
  %511 = sext i32 %510 to i64
  %512 = load i64, i64* %32, align 8
  %513 = sdiv i64 %511, %512
  %514 = trunc i64 %513 to i32
  store i32 %514, i32* %22, align 4
  store i32 %514, i32* %25, align 4
  store i32 %514, i32* %16, align 4
  %515 = load i32, i32* %13, align 4
  %516 = sext i32 %515 to i64
  %517 = load i64, i64* %32, align 8
  %518 = sdiv i64 %516, %517
  %519 = trunc i64 %518 to i32
  store i32 %519, i32* %23, align 4
  store i32 %519, i32* %26, align 4
  %520 = load i32, i32* %25, align 4
  %521 = load i32, i32* %26, align 4
  %522 = icmp ne i32 %520, %521
  br i1 %522, label %523, label %525

523:                                              ; preds = %509
  %524 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %524, i32* %3, align 4
  br label %749

525:                                              ; preds = %509
  %526 = load i32, i32* %12, align 4
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* %32, align 8
  %529 = srem i64 %527, %528
  %530 = load i64, i64* %24, align 8
  %531 = srem i64 %529, %530
  store i64 %531, i64* %27, align 8
  store i64 %531, i64* %18, align 8
  %532 = load i32, i32* %13, align 4
  %533 = sext i32 %532 to i64
  %534 = load i64, i64* %32, align 8
  %535 = srem i64 %533, %534
  %536 = load i64, i64* %24, align 8
  %537 = srem i64 %535, %536
  store i64 %537, i64* %28, align 8
  %538 = load i64, i64* %27, align 8
  %539 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %540 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %539, i32 0, i32 1
  %541 = load i64, i64* %540, align 8
  %542 = call i64 @le16_to_cpu(i64 %541)
  %543 = sdiv i64 %538, %542
  store i64 %543, i64* %29, align 8
  store i64 %543, i64* %20, align 8
  %544 = load i64, i64* %28, align 8
  %545 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %546 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = call i64 @le16_to_cpu(i64 %547)
  %549 = sdiv i64 %544, %548
  store i64 %549, i64* %30, align 8
  %550 = load i64, i64* %29, align 8
  %551 = load i64, i64* %30, align 8
  %552 = icmp ne i64 %550, %551
  br i1 %552, label %553, label %555

553:                                              ; preds = %525
  %554 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %554, i32* %3, align 4
  br label %749

555:                                              ; preds = %525
  %556 = load i32, i32* %16, align 4
  %557 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %558 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = ashr i32 %556, %559
  %561 = sext i32 %560 to i64
  %562 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %563 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %562, i32 0, i32 4
  %564 = load i64, i64* %563, align 8
  %565 = call i64 @le16_to_cpu(i64 %564)
  %566 = srem i64 %561, %565
  store i64 %566, i64* %36, align 8
  %567 = load i64, i64* %33, align 8
  %568 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %569 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %568, i32 0, i32 4
  %570 = load i64, i64* %569, align 8
  %571 = call i64 @le16_to_cpu(i64 %570)
  %572 = load i64, i64* %31, align 8
  %573 = mul nsw i64 %571, %572
  %574 = mul nsw i64 %567, %573
  %575 = load i64, i64* %36, align 8
  %576 = load i64, i64* %31, align 8
  %577 = mul nsw i64 %575, %576
  %578 = add nsw i64 %574, %577
  %579 = load i64, i64* %20, align 8
  %580 = add nsw i64 %578, %579
  store i64 %580, i64* %11, align 8
  br label %583

581:                                              ; preds = %376
  %582 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %582, i32* %3, align 4
  br label %749

583:                                              ; preds = %555, %471, %460, %425, %405
  %584 = load i64, i64* %11, align 8
  %585 = load i64, i64* @RAID_MAP_MAX_ENTRIES, align 8
  %586 = icmp sge i64 %584, %585
  %587 = zext i1 %586 to i32
  %588 = call i64 @unlikely(i32 %587)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %592

590:                                              ; preds = %583
  %591 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %591, i32* %3, align 4
  br label %749

592:                                              ; preds = %583
  %593 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %594 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %593, i32 0, i32 2
  %595 = load i32*, i32** %594, align 8
  %596 = load i64, i64* %11, align 8
  %597 = getelementptr inbounds i32, i32* %595, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %600 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %599, i32 0, i32 0
  store i32 %598, i32* %600, align 8
  %601 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %602 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 8
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %607, label %605

605:                                              ; preds = %592
  %606 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %606, i32* %3, align 4
  br label %749

607:                                              ; preds = %592
  %608 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %9, align 8
  %609 = load i64, i64* %11, align 8
  %610 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %608, i64 %609
  %611 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %610, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  store i64 %612, i64* %37, align 8
  %613 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %614 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %613, i32 0, i32 7
  %615 = load i32, i32* %614, align 4
  %616 = call i64 @le64_to_cpu(i32 %615)
  %617 = load i32, i32* %16, align 4
  %618 = sext i32 %617 to i64
  %619 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %620 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %619, i32 0, i32 1
  %621 = load i64, i64* %620, align 8
  %622 = call i64 @le16_to_cpu(i64 %621)
  %623 = mul nsw i64 %618, %622
  %624 = add nsw i64 %616, %623
  %625 = load i64, i64* %18, align 8
  %626 = load i64, i64* %20, align 8
  %627 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %628 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %627, i32 0, i32 1
  %629 = load i64, i64* %628, align 8
  %630 = call i64 @le16_to_cpu(i64 %629)
  %631 = mul nsw i64 %626, %630
  %632 = sub nsw i64 %625, %631
  %633 = add nsw i64 %624, %632
  %634 = trunc i64 %633 to i32
  store i32 %634, i32* %38, align 4
  %635 = load i64, i64* %14, align 8
  store i64 %635, i64* %39, align 8
  %636 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %637 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %636, i32 0, i32 6
  %638 = load i32, i32* %637, align 8
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %652

640:                                              ; preds = %607
  %641 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %642 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %641, i32 0, i32 6
  %643 = load i32, i32* %642, align 8
  %644 = load i32, i32* %38, align 4
  %645 = shl i32 %644, %643
  store i32 %645, i32* %38, align 4
  %646 = load %struct.raid_map_data*, %struct.raid_map_data** %8, align 8
  %647 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %646, i32 0, i32 6
  %648 = load i32, i32* %647, align 8
  %649 = load i64, i64* %39, align 8
  %650 = zext i32 %648 to i64
  %651 = shl i64 %649, %650
  store i64 %651, i64* %39, align 8
  br label %652

652:                                              ; preds = %640, %607
  %653 = load i64, i64* %39, align 8
  %654 = icmp sgt i64 %653, 65535
  %655 = zext i1 %654 to i32
  %656 = call i32 @BUG_ON(i32 %655)
  %657 = load i32, i32* %38, align 4
  %658 = icmp ugt i32 %657, -1
  br i1 %658, label %659, label %706

659:                                              ; preds = %652
  %660 = load i32, i32* %10, align 4
  %661 = icmp ne i32 %660, 0
  %662 = zext i1 %661 to i64
  %663 = select i1 %661, i32 129, i32 133
  %664 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 0
  store i32 %663, i32* %664, align 16
  %665 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 1
  store i32 0, i32* %665, align 4
  %666 = load i32, i32* %38, align 4
  %667 = ashr i32 %666, 56
  %668 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 2
  store i32 %667, i32* %668, align 8
  %669 = load i32, i32* %38, align 4
  %670 = ashr i32 %669, 48
  %671 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 3
  store i32 %670, i32* %671, align 4
  %672 = load i32, i32* %38, align 4
  %673 = ashr i32 %672, 40
  %674 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 4
  store i32 %673, i32* %674, align 16
  %675 = load i32, i32* %38, align 4
  %676 = ashr i32 %675, 32
  %677 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 5
  store i32 %676, i32* %677, align 4
  %678 = load i32, i32* %38, align 4
  %679 = ashr i32 %678, 24
  %680 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 6
  store i32 %679, i32* %680, align 8
  %681 = load i32, i32* %38, align 4
  %682 = ashr i32 %681, 16
  %683 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 7
  store i32 %682, i32* %683, align 4
  %684 = load i32, i32* %38, align 4
  %685 = ashr i32 %684, 8
  %686 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 8
  store i32 %685, i32* %686, align 16
  %687 = load i32, i32* %38, align 4
  %688 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 9
  store i32 %687, i32* %688, align 4
  %689 = load i64, i64* %39, align 8
  %690 = ashr i64 %689, 24
  %691 = trunc i64 %690 to i32
  %692 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 10
  store i32 %691, i32* %692, align 8
  %693 = load i64, i64* %39, align 8
  %694 = ashr i64 %693, 16
  %695 = trunc i64 %694 to i32
  %696 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 11
  store i32 %695, i32* %696, align 4
  %697 = load i64, i64* %39, align 8
  %698 = ashr i64 %697, 8
  %699 = trunc i64 %698 to i32
  %700 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 12
  store i32 %699, i32* %700, align 16
  %701 = load i64, i64* %39, align 8
  %702 = trunc i64 %701 to i32
  %703 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 13
  store i32 %702, i32* %703, align 4
  %704 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 14
  store i32 0, i32* %704, align 8
  %705 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 15
  store i32 0, i32* %705, align 4
  store i32 16, i32* %41, align 4
  br label %733

706:                                              ; preds = %652
  %707 = load i32, i32* %10, align 4
  %708 = icmp ne i32 %707, 0
  %709 = zext i1 %708 to i64
  %710 = select i1 %708, i32 131, i32 135
  %711 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 0
  store i32 %710, i32* %711, align 16
  %712 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 1
  store i32 0, i32* %712, align 4
  %713 = load i32, i32* %38, align 4
  %714 = ashr i32 %713, 24
  %715 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 2
  store i32 %714, i32* %715, align 8
  %716 = load i32, i32* %38, align 4
  %717 = ashr i32 %716, 16
  %718 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 3
  store i32 %717, i32* %718, align 4
  %719 = load i32, i32* %38, align 4
  %720 = ashr i32 %719, 8
  %721 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 4
  store i32 %720, i32* %721, align 16
  %722 = load i32, i32* %38, align 4
  %723 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 5
  store i32 %722, i32* %723, align 4
  %724 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 6
  store i32 0, i32* %724, align 8
  %725 = load i64, i64* %39, align 8
  %726 = ashr i64 %725, 8
  %727 = trunc i64 %726 to i32
  %728 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 7
  store i32 %727, i32* %728, align 4
  %729 = load i64, i64* %39, align 8
  %730 = trunc i64 %729 to i32
  %731 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 8
  store i32 %730, i32* %731, align 16
  %732 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 9
  store i32 0, i32* %732, align 4
  store i32 10, i32* %41, align 4
  br label %733

733:                                              ; preds = %706, %659
  %734 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %735 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %736 = load i64, i64* %37, align 8
  %737 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 0
  %738 = load i32, i32* %41, align 4
  %739 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %740 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %739, i32 0, i32 3
  %741 = load i32, i32* %740, align 8
  %742 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %743 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %742, i32 0, i32 2
  %744 = load i32*, i32** %743, align 8
  %745 = load i64, i64* %11, align 8
  %746 = getelementptr inbounds i32, i32* %744, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = call i32 @hpsa_scsi_ioaccel_queue_command(%struct.ctlr_info* %734, %struct.CommandList* %735, i64 %736, i32* %737, i32 %738, i32 %741, i32 %747)
  store i32 %748, i32* %3, align 4
  br label %749

749:                                              ; preds = %733, %605, %590, %581, %553, %523, %507, %374, %321, %307, %291, %66, %60
  %750 = load i32, i32* %3, align 4
  ret i32 %750
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @raid_map_helper(%struct.raid_map_data*, i32, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hpsa_scsi_ioaccel_queue_command(%struct.ctlr_info*, %struct.CommandList*, i64, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
