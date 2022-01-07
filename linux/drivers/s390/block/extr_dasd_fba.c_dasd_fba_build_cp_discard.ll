; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_build_cp_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_build_cp_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, %struct.dasd_block*, %struct.dasd_device*, %struct.dasd_device*, i32, %struct.LO_fba_data*, %struct.ccw1* }
%struct.LO_fba_data = type { i32 }
%struct.ccw1 = type { i32 }
%struct.dasd_device = type { i32, i32 }
%struct.dasd_block = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }

@DASD_FBA_MAGIC = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@DASD_FEATURE_FAILFAST = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_FAILFAST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* @dasd_fba_build_cp_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_fba_build_cp_discard(%struct.dasd_device* %0, %struct.dasd_block* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_block*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.LO_fba_data*, align 8
  %9 = alloca %struct.dasd_ccw_req*, align 8
  %10 = alloca %struct.ccw1*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_block* %1, %struct.dasd_block** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %25 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load %struct.request*, %struct.request** %7, align 8
  %28 = call i32 @blk_rq_pos(%struct.request* %27)
  %29 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %30 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.request*, %struct.request** %7, align 8
  %34 = call i32 @blk_rq_pos(%struct.request* %33)
  %35 = load %struct.request*, %struct.request** %7, align 8
  %36 = call i32 @blk_rq_sectors(%struct.request* %35)
  %37 = add nsw i32 %34, %36
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %40 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %38, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @BLOCKS_PER_PAGE(i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @count_ccws(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 1, %54
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %23, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = add i64 4, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* @DASD_FBA_MAGIC, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %22, align 4
  %64 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %65 = load %struct.request*, %struct.request** %7, align 8
  %66 = call i32 @blk_mq_rq_to_pdu(%struct.request* %65)
  %67 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %61, i32 %62, i32 %63, %struct.dasd_device* %64, i32 %66)
  store %struct.dasd_ccw_req* %67, %struct.dasd_ccw_req** %9, align 8
  %68 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %69 = call i64 @IS_ERR(%struct.dasd_ccw_req* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %3
  %72 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  store %struct.dasd_ccw_req* %72, %struct.dasd_ccw_req** %4, align 8
  br label %313

73:                                               ; preds = %3
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %75 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %74, i32 0, i32 9
  %76 = load %struct.ccw1*, %struct.ccw1** %75, align 8
  store %struct.ccw1* %76, %struct.ccw1** %10, align 8
  %77 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %78 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %77, i32 1
  store %struct.ccw1* %78, %struct.ccw1** %10, align 8
  %79 = ptrtoint %struct.ccw1* %77 to i32
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %81 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %80, i32 0, i32 8
  %82 = load %struct.LO_fba_data*, %struct.LO_fba_data** %81, align 8
  %83 = load i32, i32* @WRITE, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @define_extent(i32 %79, %struct.LO_fba_data* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %89 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %88, i32 0, i32 8
  %90 = load %struct.LO_fba_data*, %struct.LO_fba_data** %89, align 8
  %91 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %90, i64 4
  store %struct.LO_fba_data* %91, %struct.LO_fba_data** %8, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %16, align 4
  %94 = urem i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %145

96:                                               ; preds = %73
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %16, align 4
  %99 = add i32 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %16, align 4
  %102 = urem i32 %100, %101
  %103 = sub i32 %99, %102
  %104 = sub i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %108, %96
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %111, %112
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* @CCW_FLAG_CC, align 4
  %116 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %117 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %116, i64 -1
  %118 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %122 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %121, i32 1
  store %struct.ccw1* %122, %struct.ccw1** %10, align 8
  %123 = ptrtoint %struct.ccw1* %121 to i32
  %124 = load %struct.LO_fba_data*, %struct.LO_fba_data** %8, align 8
  %125 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %124, i32 1
  store %struct.LO_fba_data* %125, %struct.LO_fba_data** %8, align 8
  %126 = ptrtoint %struct.LO_fba_data* %124 to i32
  %127 = load i32, i32* @WRITE, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @locate_record(i32 %123, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* @CCW_FLAG_CC, align 4
  %132 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %133 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %132, i64 -1
  %134 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %138 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %137, i32 1
  store %struct.ccw1* %138, %struct.ccw1** %10, align 8
  %139 = ptrtoint %struct.ccw1* %137 to i32
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %15, align 4
  %142 = mul i32 %140, %141
  %143 = call i32 @ccw_write_zero(i32 %139, i32 %142)
  %144 = load i32, i32* %17, align 4
  store i32 %144, i32* %19, align 4
  br label %145

145:                                              ; preds = %110, %73
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %147, %148
  %150 = sub nsw i32 %146, %149
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %16, align 4
  %153 = icmp uge i32 %151, %152
  br i1 %153, label %154, label %209

154:                                              ; preds = %145
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %16, align 4
  %157 = sub i32 %155, %156
  %158 = add i32 %157, 1
  %159 = load i32, i32* %16, align 4
  %160 = urem i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %16, align 4
  %166 = sub i32 %164, %165
  %167 = add i32 %166, 1
  %168 = load i32, i32* %16, align 4
  %169 = urem i32 %167, %168
  %170 = sub i32 %163, %169
  store i32 %170, i32* %12, align 4
  br label %173

171:                                              ; preds = %154
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %171, %162
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %175, %176
  %178 = sub nsw i32 %174, %177
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* @CCW_FLAG_CC, align 4
  %181 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %182 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %181, i64 -1
  %183 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 4
  %186 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %187 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %186, i32 1
  store %struct.ccw1* %187, %struct.ccw1** %10, align 8
  %188 = ptrtoint %struct.ccw1* %186 to i32
  %189 = load %struct.LO_fba_data*, %struct.LO_fba_data** %8, align 8
  %190 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %189, i32 1
  store %struct.LO_fba_data* %190, %struct.LO_fba_data** %8, align 8
  %191 = ptrtoint %struct.LO_fba_data* %189 to i32
  %192 = load i32, i32* @WRITE, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @locate_record(i32 %188, i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = load i32, i32* @CCW_FLAG_CC, align 4
  %197 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %198 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %197, i64 -1
  %199 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %196
  store i32 %201, i32* %199, align 4
  %202 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %203 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %202, i32 1
  store %struct.ccw1* %203, %struct.ccw1** %10, align 8
  %204 = ptrtoint %struct.ccw1* %202 to i32
  %205 = call i32 @ccw_write_no_data(i32 %204)
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %19, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %19, align 4
  br label %209

209:                                              ; preds = %173, %145
  %210 = load i32, i32* %19, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %213, %214
  %216 = sub nsw i32 %215, 1
  %217 = load i32, i32* %14, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %266

219:                                              ; preds = %212, %209
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %12, align 4
  %225 = sub nsw i32 %223, %224
  store i32 %225, i32* %17, align 4
  br label %236

226:                                              ; preds = %219
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %11, align 4
  %232 = sub nsw i32 %230, %231
  store i32 %232, i32* %17, align 4
  br label %235

233:                                              ; preds = %226
  %234 = load i32, i32* %20, align 4
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %233, %229
  br label %236

236:                                              ; preds = %235, %222
  %237 = load i32, i32* @CCW_FLAG_CC, align 4
  %238 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %239 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %238, i64 -1
  %240 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %237
  store i32 %242, i32* %240, align 4
  %243 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %244 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %243, i32 1
  store %struct.ccw1* %244, %struct.ccw1** %10, align 8
  %245 = ptrtoint %struct.ccw1* %243 to i32
  %246 = load %struct.LO_fba_data*, %struct.LO_fba_data** %8, align 8
  %247 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %246, i32 1
  store %struct.LO_fba_data* %247, %struct.LO_fba_data** %8, align 8
  %248 = ptrtoint %struct.LO_fba_data* %246 to i32
  %249 = load i32, i32* @WRITE, align 4
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* %17, align 4
  %252 = call i32 @locate_record(i32 %245, i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* @CCW_FLAG_CC, align 4
  %254 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %255 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %254, i64 -1
  %256 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %253
  store i32 %258, i32* %256, align 4
  %259 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %260 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %259, i32 1
  store %struct.ccw1* %260, %struct.ccw1** %10, align 8
  %261 = ptrtoint %struct.ccw1* %259 to i32
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %15, align 4
  %264 = mul i32 %262, %263
  %265 = call i32 @ccw_write_zero(i32 %261, i32 %264)
  br label %266

266:                                              ; preds = %236, %212
  %267 = load %struct.request*, %struct.request** %7, align 8
  %268 = call i64 @blk_noretry_request(%struct.request* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %266
  %271 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %272 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %271, i32 0, i32 2
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @DASD_FEATURE_FAILFAST, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %270, %266
  %280 = load i32, i32* @DASD_CQR_FLAGS_FAILFAST, align 4
  %281 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %282 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %281, i32 0, i32 7
  %283 = call i32 @set_bit(i32 %280, i32* %282)
  br label %284

284:                                              ; preds = %279, %270
  %285 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %286 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %287 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %286, i32 0, i32 6
  store %struct.dasd_device* %285, %struct.dasd_device** %287, align 8
  %288 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %289 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %290 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %289, i32 0, i32 5
  store %struct.dasd_device* %288, %struct.dasd_device** %290, align 8
  %291 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %292 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %293 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %292, i32 0, i32 4
  store %struct.dasd_block* %291, %struct.dasd_block** %293, align 8
  %294 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %295 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @HZ, align 4
  %298 = mul nsw i32 %296, %297
  %299 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %300 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %302 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %305 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = call i32 (...) @get_tod_clock()
  %307 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %308 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* @DASD_CQR_FILLED, align 4
  %310 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %311 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  store %struct.dasd_ccw_req* %312, %struct.dasd_ccw_req** %4, align 8
  br label %313

313:                                              ; preds = %284, %71
  %314 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  ret %struct.dasd_ccw_req* %314
}

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @BLOCKS_PER_PAGE(i32) #1

declare dso_local i32 @count_ccws(i32, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32) #1

declare dso_local i32 @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @define_extent(i32, %struct.LO_fba_data*, i32, i32, i32, i32) #1

declare dso_local i32 @locate_record(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccw_write_zero(i32, i32) #1

declare dso_local i32 @ccw_write_no_data(i32) #1

declare dso_local i64 @blk_noretry_request(%struct.request*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
