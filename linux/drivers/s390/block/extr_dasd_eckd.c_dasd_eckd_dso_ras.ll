; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_dso_ras.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_dso_ras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, %struct.dasd_block*, %struct.dasd_device*, %struct.dasd_device*, %struct.dasd_dso_ras_data*, %struct.ccw1* }
%struct.dasd_dso_ras_data = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ccw1 = type { i64, i32, i64 }
%struct.dasd_device = type { i32, i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.dasd_rssd_features }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dasd_rssd_features = type { i32* }
%struct.dasd_block = type { i32 }
%struct.request = type { i32 }
%struct.dasd_dso_ras_ext_range = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not allocate RAS request\00", align 1
@DSO_ORDER_RAS = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_DSO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*, i32, i32, i32)* @dasd_eckd_dso_ras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_dso_ras(%struct.dasd_device* %0, %struct.dasd_block* %1, %struct.request* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca %struct.dasd_device*, align 8
  %9 = alloca %struct.dasd_block*, align 8
  %10 = alloca %struct.request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dasd_eckd_private*, align 8
  %15 = alloca %struct.dasd_dso_ras_ext_range*, align 8
  %16 = alloca %struct.dasd_rssd_features*, align 8
  %17 = alloca %struct.dasd_dso_ras_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dasd_ccw_req*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ccw1*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %8, align 8
  store %struct.dasd_block* %1, %struct.dasd_block** %9, align 8
  store %struct.request* %2, %struct.request** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %33 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 2
  %35 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %34, align 8
  store %struct.dasd_eckd_private* %35, %struct.dasd_eckd_private** %14, align 8
  %36 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @dasd_eckd_ras_sanity_checks(%struct.dasd_device* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %43)
  store %struct.dasd_ccw_req* %44, %struct.dasd_ccw_req** %7, align 8
  br label %253

45:                                               ; preds = %6
  %46 = load %struct.request*, %struct.request** %10, align 8
  %47 = icmp ne %struct.request* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.request*, %struct.request** %10, align 8
  %50 = call i32* @blk_mq_rq_to_pdu(%struct.request* %49)
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32* [ %50, %48 ], [ null, %51 ]
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %31, align 8
  %55 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %14, align 8
  %56 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %55, i32 0, i32 2
  store %struct.dasd_rssd_features* %56, %struct.dasd_rssd_features** %16, align 8
  %57 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %58 = call i32 @dasd_eckd_ext_size(%struct.dasd_device* %57)
  %59 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %14, align 8
  %60 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %58, %62
  store i32 %63, i32* %27, align 4
  store i32 0, i32* %30, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %27, align 4
  %70 = call i32 @count_exts(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %30, align 4
  br label %71

71:                                               ; preds = %66, %52
  store i64 40, i64* %28, align 8
  %72 = load i64, i64* %28, align 8
  %73 = load i32, i32* %30, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 8
  %76 = add i64 %72, %75
  store i64 %76, i64* %29, align 8
  %77 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %78 = load i64, i64* %29, align 8
  %79 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %80 = load i8*, i8** %31, align 8
  %81 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %77, i32 1, i64 %78, %struct.dasd_device* %79, i8* %80)
  store %struct.dasd_ccw_req* %81, %struct.dasd_ccw_req** %23, align 8
  %82 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %83 = call i64 @IS_ERR(%struct.dasd_ccw_req* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load i32, i32* @DBF_WARNING, align 4
  %87 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %88 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @DBF_EVENT_DEVID(i32 %86, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  store %struct.dasd_ccw_req* %91, %struct.dasd_ccw_req** %7, align 8
  br label %253

92:                                               ; preds = %71
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %94 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %93, i32 0, i32 7
  %95 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %94, align 8
  store %struct.dasd_dso_ras_data* %95, %struct.dasd_dso_ras_data** %17, align 8
  %96 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %97 = load i64, i64* %29, align 8
  %98 = call i32 @memset(%struct.dasd_dso_ras_data* %96, i32 0, i64 %97)
  %99 = load i32, i32* @DSO_ORDER_RAS, align 4
  %100 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %101 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %103 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %107 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.dasd_rssd_features*, %struct.dasd_rssd_features** %16, align 8
  %110 = getelementptr inbounds %struct.dasd_rssd_features, %struct.dasd_rssd_features* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 56
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %120 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %14, align 8
  %123 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %128 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %14, align 8
  %130 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %135 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %30, align 4
  %137 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %17, align 8
  %138 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %212

141:                                              ; preds = %92
  %142 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %14, align 8
  %143 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %27, align 4
  %149 = add i32 %147, %148
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %27, align 4
  %152 = urem i32 %150, %151
  %153 = sub i32 %149, %152
  %154 = sub i32 %153, 1
  store i32 %154, i32* %21, align 4
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp ugt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %141
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %21, align 4
  br label %160

160:                                              ; preds = %158, %141
  %161 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %162 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %161, i32 0, i32 7
  %163 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %162, align 8
  %164 = load i64, i64* %28, align 8
  %165 = getelementptr inbounds %struct.dasd_dso_ras_data, %struct.dasd_dso_ras_data* %163, i64 %164
  %166 = bitcast %struct.dasd_dso_ras_data* %165 to %struct.dasd_dso_ras_ext_range*
  store %struct.dasd_dso_ras_ext_range* %166, %struct.dasd_dso_ras_ext_range** %15, align 8
  store i32 0, i32* %32, align 4
  br label %167

167:                                              ; preds = %208, %160
  %168 = load i32, i32* %32, align 4
  %169 = load i32, i32* %30, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %211

171:                                              ; preds = %167
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %18, align 4
  %174 = sdiv i32 %172, %173
  store i32 %174, i32* %24, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %18, align 4
  %177 = srem i32 %175, %176
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %21, align 4
  %179 = load i32, i32* %18, align 4
  %180 = sdiv i32 %178, %179
  store i32 %180, i32* %25, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %18, align 4
  %183 = srem i32 %181, %182
  store i32 %183, i32* %20, align 4
  %184 = load %struct.dasd_dso_ras_ext_range*, %struct.dasd_dso_ras_ext_range** %15, align 8
  %185 = getelementptr inbounds %struct.dasd_dso_ras_ext_range, %struct.dasd_dso_ras_ext_range* %184, i32 0, i32 1
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @set_ch_t(i32* %185, i32 %186, i32 %187)
  %189 = load %struct.dasd_dso_ras_ext_range*, %struct.dasd_dso_ras_ext_range** %15, align 8
  %190 = getelementptr inbounds %struct.dasd_dso_ras_ext_range, %struct.dasd_dso_ras_ext_range* %189, i32 0, i32 0
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @set_ch_t(i32* %190, i32 %191, i32 %192)
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %27, align 4
  %198 = add nsw i32 %196, %197
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ugt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %171
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %21, align 4
  br label %205

205:                                              ; preds = %203, %171
  %206 = load %struct.dasd_dso_ras_ext_range*, %struct.dasd_dso_ras_ext_range** %15, align 8
  %207 = getelementptr inbounds %struct.dasd_dso_ras_ext_range, %struct.dasd_dso_ras_ext_range* %206, i32 1
  store %struct.dasd_dso_ras_ext_range* %207, %struct.dasd_dso_ras_ext_range** %15, align 8
  br label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %32, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %32, align 4
  br label %167

211:                                              ; preds = %167
  br label %212

212:                                              ; preds = %211, %92
  %213 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %214 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %213, i32 0, i32 8
  %215 = load %struct.ccw1*, %struct.ccw1** %214, align 8
  store %struct.ccw1* %215, %struct.ccw1** %26, align 8
  %216 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %217 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %216, i32 0, i32 7
  %218 = load %struct.dasd_dso_ras_data*, %struct.dasd_dso_ras_data** %217, align 8
  %219 = ptrtoint %struct.dasd_dso_ras_data* %218 to i64
  %220 = load %struct.ccw1*, %struct.ccw1** %26, align 8
  %221 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* @DASD_ECKD_CCW_DSO, align 4
  %223 = load %struct.ccw1*, %struct.ccw1** %26, align 8
  %224 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  %225 = load i64, i64* %29, align 8
  %226 = load %struct.ccw1*, %struct.ccw1** %26, align 8
  %227 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %229 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %230 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %229, i32 0, i32 6
  store %struct.dasd_device* %228, %struct.dasd_device** %230, align 8
  %231 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %232 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %233 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %232, i32 0, i32 5
  store %struct.dasd_device* %231, %struct.dasd_device** %233, align 8
  %234 = load %struct.dasd_block*, %struct.dasd_block** %9, align 8
  %235 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %236 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %235, i32 0, i32 4
  store %struct.dasd_block* %234, %struct.dasd_block** %236, align 8
  %237 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %238 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %237, i32 0, i32 0
  store i32 256, i32* %238, align 8
  %239 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  %240 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @HZ, align 4
  %243 = mul nsw i32 %241, %242
  %244 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %245 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = call i32 (...) @get_tod_clock()
  %247 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %248 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* @DASD_CQR_FILLED, align 4
  %250 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  %251 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 8
  %252 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %23, align 8
  store %struct.dasd_ccw_req* %252, %struct.dasd_ccw_req** %7, align 8
  br label %253

253:                                              ; preds = %212, %85, %41
  %254 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  ret %struct.dasd_ccw_req* %254
}

declare dso_local i64 @dasd_eckd_ras_sanity_checks(%struct.dasd_device*, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @ERR_PTR(i32) #1

declare dso_local i32* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dasd_eckd_ext_size(%struct.dasd_device*) #1

declare dso_local i32 @count_exts(i32, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i64, %struct.dasd_device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, i8*) #1

declare dso_local i32 @memset(%struct.dasd_dso_ras_data*, i32, i64) #1

declare dso_local i32 @set_ch_t(i32*, i32, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
