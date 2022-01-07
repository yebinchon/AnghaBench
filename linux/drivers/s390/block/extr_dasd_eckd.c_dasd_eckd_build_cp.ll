; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_cp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }
%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.dasd_block = type { i32, i32, %struct.dasd_device* }
%struct.request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@dasd_page_cache = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* @dasd_eckd_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_build_cp(%struct.dasd_device* %0, %struct.dasd_block* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_block*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dasd_eckd_private*, align 8
  %13 = alloca %struct.dasd_device*, align 8
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
  %24 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_block* %1, %struct.dasd_block** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %25 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %26 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %25, i32 0, i32 2
  %27 = load %struct.dasd_device*, %struct.dasd_device** %26, align 8
  store %struct.dasd_device* %27, %struct.dasd_device** %13, align 8
  %28 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 0
  %30 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %29, align 8
  store %struct.dasd_eckd_private* %30, %struct.dasd_eckd_private** %12, align 8
  %31 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %32 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %21, align 4
  %34 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %35 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %34, i32 0, i32 3
  %36 = load i32, i32* %21, align 4
  %37 = call i32 @recs_per_track(i32* %35, i32 0, i32 %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %42)
  store %struct.dasd_ccw_req* %43, %struct.dasd_ccw_req** %4, align 8
  br label %248

44:                                               ; preds = %3
  %45 = load %struct.request*, %struct.request** %7, align 8
  %46 = call i32 @blk_rq_pos(%struct.request* %45)
  %47 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %48 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  store i32 %50, i32* %16, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %20, align 4
  %53 = call i32 @sector_div(i32 %51, i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load %struct.request*, %struct.request** %7, align 8
  %55 = call i32 @blk_rq_pos(%struct.request* %54)
  %56 = load %struct.request*, %struct.request** %7, align 8
  %57 = call i32 @blk_rq_sectors(%struct.request* %56)
  %58 = add nsw i32 %55, %57
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %61 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %59, %62
  store i32 %63, i32* %17, align 4
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @sector_div(i32 %64, i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %68 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %44
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %20, align 4
  %74 = mul i32 2, %73
  %75 = icmp ult i32 %72, %74
  br label %76

76:                                               ; preds = %71, %44
  %77 = phi i1 [ false, %44 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %22, align 4
  %79 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %80 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 40
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 32
  store i32 %85, i32* %11, align 4
  %86 = load %struct.request*, %struct.request** %7, align 8
  %87 = call i32 @blk_rq_bytes(%struct.request* %86)
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %21, align 4
  %90 = urem i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %76
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %94)
  store %struct.dasd_ccw_req* %95, %struct.dasd_ccw_req** %4, align 8
  br label %248

96:                                               ; preds = %76
  %97 = load %struct.request*, %struct.request** %7, align 8
  %98 = call i64 @rq_data_dir(%struct.request* %97)
  %99 = load i64, i64* @WRITE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = mul nsw i32 %104, 4
  %106 = load i32, i32* %23, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %23, align 4
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %110 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 9
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 32
  store i32 %115, i32* %8, align 4
  %116 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %117 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 64
  store i32 %122, i32* %9, align 4
  %123 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %124 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 8
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 1
  store i32 %129, i32* %10, align 4
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %24, align 8
  %130 = load i32, i32* %22, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %108
  %133 = load i64, i64* @dasd_page_cache, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %108
  br label %230

136:                                              ; preds = %132
  %137 = load i32, i32* %23, align 4
  %138 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %139 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ule i32 %137, %140
  br i1 %141, label %142, label %179

142:                                              ; preds = %136
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %179

149:                                              ; preds = %145, %142
  %150 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %151 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %152 = load %struct.request*, %struct.request** %7, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %21, align 4
  %161 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp_tpm_track(%struct.dasd_device* %150, %struct.dasd_block* %151, %struct.request* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  store %struct.dasd_ccw_req* %161, %struct.dasd_ccw_req** %24, align 8
  %162 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %163 = call i64 @IS_ERR(%struct.dasd_ccw_req* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %149
  %166 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %167 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %166)
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %173 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %172)
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp ne i32 %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %24, align 8
  br label %178

178:                                              ; preds = %177, %171, %165, %149
  br label %229

179:                                              ; preds = %145, %136
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %228

182:                                              ; preds = %179
  %183 = load %struct.request*, %struct.request** %7, align 8
  %184 = call i64 @rq_data_dir(%struct.request* %183)
  %185 = load i64, i64* @READ, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %187, %182
  %191 = load %struct.request*, %struct.request** %7, align 8
  %192 = call i64 @rq_data_dir(%struct.request* %191)
  %193 = load i64, i64* @WRITE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %228

195:                                              ; preds = %190
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %228

198:                                              ; preds = %195, %187
  %199 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %200 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %201 = load %struct.request*, %struct.request** %7, align 8
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* %21, align 4
  %210 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_track(%struct.dasd_device* %199, %struct.dasd_block* %200, %struct.request* %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209)
  store %struct.dasd_ccw_req* %210, %struct.dasd_ccw_req** %24, align 8
  %211 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %212 = call i64 @IS_ERR(%struct.dasd_ccw_req* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %198
  %215 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %216 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %215)
  %217 = load i32, i32* @EAGAIN, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp ne i32 %216, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %214
  %221 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %222 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %221)
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = sub nsw i32 0, %223
  %225 = icmp ne i32 %222, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %24, align 8
  br label %227

227:                                              ; preds = %226, %220, %214, %198
  br label %228

228:                                              ; preds = %227, %195, %190, %179
  br label %229

229:                                              ; preds = %228, %178
  br label %230

230:                                              ; preds = %229, %135
  %231 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  %232 = icmp ne %struct.dasd_ccw_req* %231, null
  br i1 %232, label %246, label %233

233:                                              ; preds = %230
  %234 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %235 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %236 = load %struct.request*, %struct.request** %7, align 8
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %21, align 4
  %245 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_single(%struct.dasd_device* %234, %struct.dasd_block* %235, %struct.request* %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  store %struct.dasd_ccw_req* %245, %struct.dasd_ccw_req** %24, align 8
  br label %246

246:                                              ; preds = %233, %230
  %247 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %24, align 8
  store %struct.dasd_ccw_req* %247, %struct.dasd_ccw_req** %4, align 8
  br label %248

248:                                              ; preds = %246, %92, %40
  %249 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  ret %struct.dasd_ccw_req* %249
}

declare dso_local i32 @recs_per_track(i32*, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @ERR_PTR(i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp_tpm_track(%struct.dasd_device*, %struct.dasd_block*, %struct.request*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_track(%struct.dasd_device*, %struct.dasd_block*, %struct.request*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp_cmd_single(%struct.dasd_device*, %struct.dasd_block*, %struct.request*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
