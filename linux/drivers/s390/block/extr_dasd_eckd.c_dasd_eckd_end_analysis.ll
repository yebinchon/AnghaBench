; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_end_analysis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_end_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i32, i64, %struct.dasd_device* }
%struct.dasd_device = type { i32, %struct.TYPE_3__*, %struct.dasd_eckd_private* }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_eckd_private = type { i32, i32, %struct.TYPE_4__, i64, %struct.eckd_count* }
%struct.TYPE_4__ = type { i64 }
%struct.eckd_count = type { i32, i32, i64, i64, i32 }
%struct.dasd_ccw_req = type { i32 }

@INIT_CQR_ERROR = common dso_local global i32 0, align 4
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@DASD_RAW_BLOCKSIZE = common dso_local global i32 0, align 4
@DASD_RAW_BLOCK_PER_TRACK = common dso_local global i32 0, align 4
@INIT_CQR_UNFORMATTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"The DASD is not formatted\0A\00", align 1
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Detecting the DASD disk layout failed because of an I/O error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@count_area_head = common dso_local global i64* null, align 8
@count_area_rec = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Track 0 has no records following the VTOC\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"The disk layout of the DASD is not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"DASD with %u KB/block, %lu KB total size, %u KB/track, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"compatible disk layout\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"linux disk layout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_eckd_end_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_end_analysis(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca %struct.eckd_count*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %12 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 3
  %14 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  store %struct.dasd_device* %14, %struct.dasd_device** %4, align 8
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 2
  %17 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %16, align 8
  store %struct.dasd_eckd_private* %17, %struct.dasd_eckd_private** %5, align 8
  %18 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %19 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @INIT_CQR_ERROR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %28 = call %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(%struct.dasd_device* %27)
  store %struct.dasd_ccw_req* %28, %struct.dasd_ccw_req** %11, align 8
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %30 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %29)
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %32 = call i32 @dasd_eckd_analysis_evaluation(%struct.dasd_ccw_req* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %34 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %35 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %33, %struct.dasd_device* %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @DASD_RAW_BLOCKSIZE, align 4
  %45 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %46 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @DASD_RAW_BLOCK_PER_TRACK, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %49 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %48, i32 0, i32 1
  store i32 3, i32* %49, align 4
  br label %321

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @INIT_CQR_UNFORMATTED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EMEDIUMTYPE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %374

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @INIT_CQR_ERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %68 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %374

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %77 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  store %struct.eckd_count* null, %struct.eckd_count** %6, align 8
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %148, %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %151

81:                                               ; preds = %78
  %82 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %83 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %82, i32 0, i32 4
  %84 = load %struct.eckd_count*, %struct.eckd_count** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %84, i64 %86
  %88 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 4
  br i1 %90, label %144, label %91

91:                                               ; preds = %81
  %92 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %93 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %92, i32 0, i32 4
  %94 = load %struct.eckd_count*, %struct.eckd_count** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %94, i64 %96
  %98 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dasd_eckd_cdl_reclen(i32 %100)
  %102 = sub nsw i32 %101, 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %144, label %104

104:                                              ; preds = %91
  %105 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %106 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %105, i32 0, i32 4
  %107 = load %struct.eckd_count*, %struct.eckd_count** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %107, i64 %109
  %111 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %104
  %115 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %116 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %115, i32 0, i32 4
  %117 = load %struct.eckd_count*, %struct.eckd_count** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %117, i64 %119
  %121 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** @count_area_head, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %122, %127
  br i1 %128, label %144, label %129

129:                                              ; preds = %114
  %130 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %131 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %130, i32 0, i32 4
  %132 = load %struct.eckd_count*, %struct.eckd_count** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %132, i64 %134
  %136 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** @count_area_rec, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %137, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %129, %114, %104, %91, %81
  %145 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %146 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  br label %151

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %78

151:                                              ; preds = %144, %78
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 3
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %156 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %155, i32 0, i32 4
  %157 = load %struct.eckd_count*, %struct.eckd_count** %156, align 8
  %158 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %157, i64 3
  store %struct.eckd_count* %158, %struct.eckd_count** %6, align 8
  br label %159

159:                                              ; preds = %154, %151
  %160 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %161 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %248

164:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %236, %164
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %166, 5
  br i1 %167, label %168, label %239

168:                                              ; preds = %165
  %169 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %170 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %169, i32 0, i32 4
  %171 = load %struct.eckd_count*, %struct.eckd_count** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %171, i64 %173
  %175 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %234, label %178

178:                                              ; preds = %168
  %179 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %180 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %179, i32 0, i32 4
  %181 = load %struct.eckd_count*, %struct.eckd_count** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %181, i64 %183
  %185 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %188 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %187, i32 0, i32 4
  %189 = load %struct.eckd_count*, %struct.eckd_count** %188, align 8
  %190 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %189, i64 0
  %191 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %186, %192
  br i1 %193, label %234, label %194

194:                                              ; preds = %178
  %195 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %196 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %195, i32 0, i32 4
  %197 = load %struct.eckd_count*, %struct.eckd_count** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %197, i64 %199
  %201 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %234, label %204

204:                                              ; preds = %194
  %205 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %206 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %205, i32 0, i32 4
  %207 = load %struct.eckd_count*, %struct.eckd_count** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %207, i64 %209
  %211 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** @count_area_head, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %212, %217
  br i1 %218, label %234, label %219

219:                                              ; preds = %204
  %220 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %221 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %220, i32 0, i32 4
  %222 = load %struct.eckd_count*, %struct.eckd_count** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %222, i64 %224
  %226 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** @count_area_rec, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %227, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %219, %204, %194, %178, %168
  br label %239

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %165

239:                                              ; preds = %234, %165
  %240 = load i32, i32* %10, align 4
  %241 = icmp eq i32 %240, 5
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %244 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %243, i32 0, i32 4
  %245 = load %struct.eckd_count*, %struct.eckd_count** %244, align 8
  %246 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %245, i64 0
  store %struct.eckd_count* %246, %struct.eckd_count** %6, align 8
  br label %247

247:                                              ; preds = %242, %239
  br label %263

248:                                              ; preds = %159
  %249 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %250 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %249, i32 0, i32 4
  %251 = load %struct.eckd_count*, %struct.eckd_count** %250, align 8
  %252 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %251, i64 3
  %253 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %262

256:                                              ; preds = %248
  %257 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %258 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %257, i32 0, i32 1
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = call i32 @dev_warn(i32* %260, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %262

262:                                              ; preds = %256, %248
  br label %263

263:                                              ; preds = %262, %247
  %264 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %265 = icmp ne %struct.eckd_count* %264, null
  br i1 %265, label %266, label %284

266:                                              ; preds = %263
  %267 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %268 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %266
  %272 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %273 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i64 @dasd_check_blocksize(i32 %274)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %271
  %278 = load %struct.eckd_count*, %struct.eckd_count** %6, align 8
  %279 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %282 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %277, %271
  br label %284

284:                                              ; preds = %283, %266, %263
  %285 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %286 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %284
  %290 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %291 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %290, i32 0, i32 1
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = call i32 @dev_warn(i32* %293, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %295 = load i32, i32* @EMEDIUMTYPE, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %2, align 4
  br label %374

297:                                              ; preds = %284
  %298 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %299 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %298, i32 0, i32 1
  store i32 0, i32* %299, align 4
  store i32 512, i32* %7, align 4
  br label %300

300:                                              ; preds = %311, %297
  %301 = load i32, i32* %7, align 4
  %302 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %303 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp ult i32 %301, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %300
  %307 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %308 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %306
  %312 = load i32, i32* %7, align 4
  %313 = shl i32 %312, 1
  store i32 %313, i32* %7, align 4
  br label %300

314:                                              ; preds = %300
  %315 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %316 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %315, i32 0, i32 2
  %317 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %318 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @recs_per_track(%struct.TYPE_4__* %316, i32 0, i32 %319)
  store i32 %320, i32* %8, align 4
  br label %321

321:                                              ; preds = %314, %43
  %322 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %323 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %326 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = mul i64 %324, %328
  %330 = load i32, i32* %8, align 4
  %331 = zext i32 %330 to i64
  %332 = mul i64 %329, %331
  %333 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %334 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %333, i32 0, i32 2
  store i64 %332, i64* %334, align 8
  %335 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %336 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %335, i32 0, i32 1
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 0
  %339 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %340 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = lshr i32 %341, 10
  %343 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %344 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %347 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = mul i64 %345, %349
  %351 = load i32, i32* %8, align 4
  %352 = zext i32 %351 to i64
  %353 = mul i64 %350, %352
  %354 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %355 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = lshr i32 %356, 9
  %358 = zext i32 %357 to i64
  %359 = mul i64 %353, %358
  %360 = lshr i64 %359, 1
  %361 = load i32, i32* %8, align 4
  %362 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %363 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = mul i32 %361, %364
  %366 = lshr i32 %365, 10
  %367 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %368 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)
  %373 = call i32 @dev_info(i32* %338, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %342, i64 %360, i32 %366, i8* %372)
  store i32 0, i32* %2, align 4
  br label %374

374:                                              ; preds = %321, %289, %66, %54
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(%struct.dasd_device*) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_eckd_analysis_evaluation(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dasd_eckd_cdl_reclen(i32) #1

declare dso_local i64 @dasd_check_blocksize(i32) #1

declare dso_local i32 @recs_per_track(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
