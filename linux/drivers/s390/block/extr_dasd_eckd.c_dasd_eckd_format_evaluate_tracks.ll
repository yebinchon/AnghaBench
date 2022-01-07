; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_evaluate_tracks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_evaluate_tracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eckd_count = type { i32, i32, i32, i64, i32 }
%struct.format_check_t = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ch_t = type { i64, i32 }

@DASD_FMT_ERR_TOO_FEW_RECORDS = common dso_local global i32 0, align 4
@DASD_FMT_ERR_TOO_MANY_RECORDS = common dso_local global i32 0, align 4
@sizes_trk0 = common dso_local global i32* null, align 8
@LABEL_SIZE = common dso_local global i32 0, align 4
@DASD_FMT_ERR_BLKSIZE = common dso_local global i32 0, align 4
@DASD_FMT_ERR_KEY_LENGTH = common dso_local global i32 0, align 4
@DASD_FMT_ERR_RECORD_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eckd_count*, %struct.format_check_t*, i32, i32, i32, i32)* @dasd_eckd_format_evaluate_tracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_format_evaluate_tracks(%struct.eckd_count* %0, %struct.format_check_t* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.eckd_count*, align 8
  %8 = alloca %struct.format_check_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ch_t, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.eckd_count* %0, %struct.eckd_count** %7, align 8
  store %struct.format_check_t* %1, %struct.format_check_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %23 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %27 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %25, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %36 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %19, align 4
  br label %39

39:                                               ; preds = %239, %6
  %40 = load i32, i32* %19, align 4
  %41 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %42 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %40, %44
  br i1 %45, label %46, label %242

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %74, %49
  %51 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %51, i64 %53
  %55 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %59, i64 %61
  %63 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br label %66

66:                                               ; preds = %58, %50
  %67 = phi i1 [ false, %50 ], [ %65, %58 ]
  br i1 %67, label %68, label %75

68:                                               ; preds = %66
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %75

74:                                               ; preds = %68
  br label %50

75:                                               ; preds = %73, %66
  br label %90

76:                                               ; preds = %46
  %77 = load i32, i32* %19, align 4
  %78 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %79 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %77, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %83, %76
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sdiv i32 %91, %92
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %11, align 4
  %96 = srem i32 %94, %95
  %97 = call i32 @set_ch_t(%struct.ch_t* %13, i32 %93, i32 %96)
  %98 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @dasd_eckd_count_records(%struct.eckd_count* %98, i32 %99, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %90
  %108 = load i32, i32* @DASD_FMT_ERR_TOO_FEW_RECORDS, align 4
  %109 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %110 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  br label %242

111:                                              ; preds = %90
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* @DASD_FMT_ERR_TOO_MANY_RECORDS, align 4
  %117 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %118 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  br label %242

119:                                              ; preds = %111
  store i32 0, i32* %20, align 4
  br label %120

120:                                              ; preds = %233, %119
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %238

124:                                              ; preds = %120
  %125 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %126 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %129 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %130 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %13, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %13, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i32, i32* %20, align 4
  %145 = icmp slt i32 %144, 3
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i32*, i32** @sizes_trk0, align 8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 4
  store i32 %152, i32* %17, align 4
  store i32 4, i32* %21, align 4
  br label %153

153:                                              ; preds = %146, %143
  br label %154

154:                                              ; preds = %153, %139, %135, %124
  %155 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %156 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %13, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %13, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* @LABEL_SIZE, align 4
  %171 = sub nsw i32 %170, 44
  store i32 %171, i32* %17, align 4
  store i32 44, i32* %21, align 4
  br label %172

172:                                              ; preds = %169, %165, %161, %154
  %173 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %173, i64 %175
  %177 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  %182 = load i32, i32* @DASD_FMT_ERR_BLKSIZE, align 4
  %183 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %184 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  br label %243

185:                                              ; preds = %172
  %186 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %186, i64 %188
  %190 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %21, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load i32, i32* @DASD_FMT_ERR_KEY_LENGTH, align 4
  %196 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %197 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  br label %243

198:                                              ; preds = %185
  %199 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %199, i64 %201
  %203 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %204, %206
  br i1 %207, label %228, label %208

208:                                              ; preds = %198
  %209 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %209, i64 %211
  %213 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %13, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %214, %216
  br i1 %217, label %228, label %218

218:                                              ; preds = %208
  %219 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %219, i64 %221
  %223 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %20, align 4
  %226 = add nsw i32 %225, 1
  %227 = icmp ne i32 %224, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %218, %208, %198
  %229 = load i32, i32* @DASD_FMT_ERR_RECORD_ID, align 4
  %230 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %231 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %230, i32 0, i32 5
  store i32 %229, i32* %231, align 4
  br label %243

232:                                              ; preds = %218
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %20, align 4
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %18, align 4
  br label %120

238:                                              ; preds = %120
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %19, align 4
  br label %39

242:                                              ; preds = %115, %107, %39
  br label %243

243:                                              ; preds = %242, %228, %194, %181
  %244 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %245 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %18, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %18, align 4
  br label %253

253:                                              ; preds = %248, %243
  %254 = load i32, i32* %19, align 4
  %255 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %256 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %15, align 4
  %258 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %259 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %261 = load i32, i32* %18, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %260, i64 %262
  %264 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %267 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 4
  %268 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %268, i64 %270
  %272 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %275 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  %276 = load %struct.eckd_count*, %struct.eckd_count** %7, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %276, i64 %278
  %280 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.format_check_t*, %struct.format_check_t** %8, align 8
  %283 = getelementptr inbounds %struct.format_check_t, %struct.format_check_t* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 4
  ret void
}

declare dso_local i32 @set_ch_t(%struct.ch_t*, i32, i32) #1

declare dso_local i32 @dasd_eckd_count_records(%struct.eckd_count*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
