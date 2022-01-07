; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_setup_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_setup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.omap_video_timings = type { i32 }

@OMAP_DSS_ROT_TILER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"input width %d is not even for YUV format\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"adjusting for ilace: height %d, pos_y %d, out_height %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"predecimation %d x %x, new input size %d x %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"predecimated input width is not even for YUV format\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"adjusting input width %d -> %d\0A\00", align 1
@OMAP_DSS_WB = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_DMA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"offset0 %u, offset1 %u, row_inc %d, pix_inc %d\0A\00", align 1
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"%d,%d %dx%d -> %dx%d\0A\00", align 1
@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.omap_video_timings*, i32)* @dispc_ovl_setup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_setup_common(i32 %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.omap_video_timings* %19, i32 %20) #0 {
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.omap_video_timings*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  store i32 %0, i32* %23, align 4
  store i32 %1, i32* %24, align 4
  store i64 %2, i64* %25, align 8
  store i64 %3, i64* %26, align 8
  store i32 %4, i32* %27, align 4
  store i32 %5, i32* %28, align 4
  store i32 %6, i32* %29, align 4
  store i32 %7, i32* %30, align 4
  store i32 %8, i32* %31, align 4
  store i32 %9, i32* %32, align 4
  store i32 %10, i32* %33, align 4
  store i32 %11, i32* %34, align 4
  store i32 %12, i32* %35, align 4
  store i32 %13, i32* %36, align 4
  store i32 %14, i32* %37, align 4
  store i32 %15, i32* %38, align 4
  store i32 %16, i32* %39, align 4
  store i32 %17, i32* %40, align 4
  store i32 %18, i32* %41, align 4
  store %struct.omap_video_timings* %19, %struct.omap_video_timings** %42, align 8
  store i32 %20, i32* %43, align 4
  store i32 1, i32* %44, align 4
  store i32 0, i32* %45, align 4
  store i32 0, i32* %47, align 4
  store i32 0, i32* %54, align 4
  %62 = load i32, i32* %31, align 4
  store i32 %62, i32* %55, align 4
  %63 = load i32, i32* %30, align 4
  store i32 %63, i32* %56, align 4
  store i32 1, i32* %57, align 4
  store i32 1, i32* %58, align 4
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %42, align 8
  %65 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %59, align 4
  %67 = load i32, i32* %23, align 4
  %68 = call i64 @dispc_plane_pclk_rate(i32 %67)
  store i64 %68, i64* %60, align 8
  %69 = load i32, i32* %23, align 4
  %70 = call i64 @dispc_plane_lclk_rate(i32 %69)
  store i64 %70, i64* %61, align 8
  %71 = load i64, i64* %25, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %21
  %74 = load i32, i32* %40, align 4
  %75 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %22, align 4
  br label %399

80:                                               ; preds = %73, %21
  %81 = load i32, i32* %34, align 4
  switch i32 %81, label %92 [
    i32 128, label %82
    i32 129, label %82
    i32 130, label %82
  ]

82:                                               ; preds = %80, %80, %80
  %83 = load i32, i32* %56, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %56, align 4
  %88 = call i32 @DSSERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %22, align 4
  br label %399

91:                                               ; preds = %82
  br label %93

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* %32, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* %30, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %32, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %32, align 4
  %102 = load i32, i32* %33, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %31, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %33, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %33, align 4
  %110 = load i32, i32* %59, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* %31, align 4
  %114 = load i32, i32* %33, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 1, i32* %45, align 4
  br label %117

117:                                              ; preds = %116, %112, %108
  %118 = load i32, i32* %59, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i32, i32* %45, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %55, align 4
  %125 = sdiv i32 %124, 2
  store i32 %125, i32* %55, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %29, align 4
  %128 = sdiv i32 %127, 2
  store i32 %128, i32* %29, align 4
  %129 = load i32, i32* %33, align 4
  %130 = sdiv i32 %129, 2
  store i32 %130, i32* %33, align 4
  %131 = load i32, i32* %55, align 4
  %132 = load i32, i32* %29, align 4
  %133 = load i32, i32* %33, align 4
  %134 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %117
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %34, align 4
  %138 = call i32 @dss_feat_color_mode_supported(i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %22, align 4
  br label %399

143:                                              ; preds = %135
  %144 = load i64, i64* %60, align 8
  %145 = load i64, i64* %61, align 8
  %146 = load i32, i32* %24, align 4
  %147 = load %struct.omap_video_timings*, %struct.omap_video_timings** %42, align 8
  %148 = load i32, i32* %56, align 4
  %149 = load i32, i32* %55, align 4
  %150 = load i32, i32* %32, align 4
  %151 = load i32, i32* %33, align 4
  %152 = load i32, i32* %34, align 4
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %40, align 4
  %155 = load i32, i32* %43, align 4
  %156 = call i32 @dispc_ovl_calc_scaling(i64 %144, i64 %145, i32 %146, %struct.omap_video_timings* %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32* %44, i32* %57, i32* %58, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %46, align 4
  %157 = load i32, i32* %46, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %143
  %160 = load i32, i32* %46, align 4
  store i32 %160, i32* %22, align 4
  br label %399

161:                                              ; preds = %143
  %162 = load i32, i32* %56, align 4
  %163 = load i32, i32* %57, align 4
  %164 = sdiv i32 %162, %163
  store i32 %164, i32* %56, align 4
  %165 = load i32, i32* %55, align 4
  %166 = load i32, i32* %58, align 4
  %167 = sdiv i32 %165, %166
  store i32 %167, i32* %55, align 4
  %168 = load i32, i32* %57, align 4
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %173, label %170

170:                                              ; preds = %161
  %171 = load i32, i32* %58, align 4
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %179

173:                                              ; preds = %170, %161
  %174 = load i32, i32* %57, align 4
  %175 = load i32, i32* %58, align 4
  %176 = load i32, i32* %56, align 4
  %177 = load i32, i32* %55, align 4
  %178 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %173, %170
  %180 = load i32, i32* %34, align 4
  switch i32 %180, label %194 [
    i32 128, label %181
    i32 129, label %181
    i32 130, label %181
  ]

181:                                              ; preds = %179, %179, %179
  %182 = load i32, i32* %56, align 4
  %183 = and i32 %182, 1
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %187 = load i32, i32* %56, align 4
  %188 = load i32, i32* %56, align 4
  %189 = and i32 %188, -2
  %190 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %189)
  %191 = load i32, i32* %56, align 4
  %192 = and i32 %191, -2
  store i32 %192, i32* %56, align 4
  br label %193

193:                                              ; preds = %185, %181
  br label %195

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %193
  %196 = load i32, i32* %34, align 4
  %197 = icmp eq i32 %196, 128
  br i1 %197, label %204, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %34, align 4
  %200 = icmp eq i32 %199, 129
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %34, align 4
  %203 = icmp eq i32 %202, 130
  br i1 %203, label %204, label %205

204:                                              ; preds = %201, %198, %195
  store i32 1, i32* %47, align 4
  br label %205

205:                                              ; preds = %204, %201
  %206 = load i32, i32* %59, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %205
  %209 = load i32, i32* %45, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %55, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i32, i32* %55, align 4
  %216 = load i32, i32* %33, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214, %211
  store i32 0, i32* %54, align 4
  br label %224

219:                                              ; preds = %214
  %220 = load i32, i32* %55, align 4
  %221 = load i32, i32* %33, align 4
  %222 = sdiv i32 %220, %221
  %223 = sdiv i32 %222, 2
  store i32 %223, i32* %54, align 4
  br label %224

224:                                              ; preds = %219, %218
  br label %225

225:                                              ; preds = %224, %208, %205
  %226 = load i32, i32* %45, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 1, i32* %54, align 4
  br label %229

229:                                              ; preds = %228, %225
  store i32 0, i32* %48, align 4
  store i32 0, i32* %49, align 4
  store i32 0, i32* %50, align 4
  store i32 0, i32* %51, align 4
  %230 = load i32, i32* %23, align 4
  %231 = load i32, i32* @OMAP_DSS_WB, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, i32* %32, align 4
  store i32 %234, i32* %52, align 4
  %235 = load i32, i32* %33, align 4
  store i32 %235, i32* %53, align 4
  br label %239

236:                                              ; preds = %229
  %237 = load i32, i32* %56, align 4
  store i32 %237, i32* %52, align 4
  %238 = load i32, i32* %31, align 4
  store i32 %238, i32* %53, align 4
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %40, align 4
  %241 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = load i32, i32* %27, align 4
  %245 = load i32, i32* %52, align 4
  %246 = load i32, i32* %34, align 4
  %247 = load i32, i32* %45, align 4
  %248 = load i32, i32* %54, align 4
  %249 = load i32, i32* %57, align 4
  %250 = load i32, i32* %58, align 4
  %251 = call i32 @calc_tiler_rotation_offset(i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32* %48, i32* %49, i32* %50, i32* %51, i32 %249, i32 %250)
  br label %281

252:                                              ; preds = %239
  %253 = load i32, i32* %40, align 4
  %254 = load i32, i32* @OMAP_DSS_ROT_DMA, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = load i32, i32* %35, align 4
  %258 = load i32, i32* %36, align 4
  %259 = load i32, i32* %27, align 4
  %260 = load i32, i32* %52, align 4
  %261 = load i32, i32* %53, align 4
  %262 = load i32, i32* %34, align 4
  %263 = load i32, i32* %45, align 4
  %264 = load i32, i32* %54, align 4
  %265 = load i32, i32* %57, align 4
  %266 = load i32, i32* %58, align 4
  %267 = call i32 @calc_dma_rotation_offset(i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32* %48, i32* %49, i32* %50, i32* %51, i32 %265, i32 %266)
  br label %280

268:                                              ; preds = %252
  %269 = load i32, i32* %35, align 4
  %270 = load i32, i32* %36, align 4
  %271 = load i32, i32* %27, align 4
  %272 = load i32, i32* %52, align 4
  %273 = load i32, i32* %53, align 4
  %274 = load i32, i32* %34, align 4
  %275 = load i32, i32* %45, align 4
  %276 = load i32, i32* %54, align 4
  %277 = load i32, i32* %57, align 4
  %278 = load i32, i32* %58, align 4
  %279 = call i32 @calc_vrfb_rotation_offset(i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32* %48, i32* %49, i32* %50, i32* %51, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %268, %256
  br label %281

281:                                              ; preds = %280, %243
  %282 = load i32, i32* %48, align 4
  %283 = load i32, i32* %49, align 4
  %284 = load i32, i32* %50, align 4
  %285 = load i32, i32* %51, align 4
  %286 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %23, align 4
  %288 = load i32, i32* %34, align 4
  %289 = call i32 @dispc_ovl_set_color_mode(i32 %287, i32 %288)
  %290 = load i32, i32* %23, align 4
  %291 = load i32, i32* %40, align 4
  %292 = call i32 @dispc_ovl_configure_burst_type(i32 %290, i32 %291)
  %293 = load i32, i32* %23, align 4
  %294 = load i64, i64* %25, align 8
  %295 = load i32, i32* %48, align 4
  %296 = zext i32 %295 to i64
  %297 = add nsw i64 %294, %296
  %298 = call i32 @dispc_ovl_set_ba0(i32 %293, i64 %297)
  %299 = load i32, i32* %23, align 4
  %300 = load i64, i64* %25, align 8
  %301 = load i32, i32* %49, align 4
  %302 = zext i32 %301 to i64
  %303 = add nsw i64 %300, %302
  %304 = call i32 @dispc_ovl_set_ba1(i32 %299, i64 %303)
  %305 = load i32, i32* %34, align 4
  %306 = icmp eq i32 130, %305
  br i1 %306, label %307, label %320

307:                                              ; preds = %281
  %308 = load i32, i32* %23, align 4
  %309 = load i64, i64* %26, align 8
  %310 = load i32, i32* %48, align 4
  %311 = zext i32 %310 to i64
  %312 = add nsw i64 %309, %311
  %313 = call i32 @dispc_ovl_set_ba0_uv(i32 %308, i64 %312)
  %314 = load i32, i32* %23, align 4
  %315 = load i64, i64* %26, align 8
  %316 = load i32, i32* %49, align 4
  %317 = zext i32 %316 to i64
  %318 = add nsw i64 %315, %317
  %319 = call i32 @dispc_ovl_set_ba1_uv(i32 %314, i64 %318)
  br label %320

320:                                              ; preds = %307, %281
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %320
  %326 = load i32, i32* %51, align 4
  %327 = sub nsw i32 %326, 1
  %328 = load i32, i32* %50, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %50, align 4
  br label %330

330:                                              ; preds = %325, %320
  %331 = load i32, i32* %23, align 4
  %332 = load i32, i32* %50, align 4
  %333 = call i32 @dispc_ovl_set_row_inc(i32 %331, i32 %332)
  %334 = load i32, i32* %23, align 4
  %335 = load i32, i32* %51, align 4
  %336 = call i32 @dispc_ovl_set_pix_inc(i32 %334, i32 %335)
  %337 = load i32, i32* %28, align 4
  %338 = load i32, i32* %29, align 4
  %339 = load i32, i32* %56, align 4
  %340 = load i32, i32* %55, align 4
  %341 = load i32, i32* %32, align 4
  %342 = load i32, i32* %33, align 4
  %343 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342)
  %344 = load i32, i32* %23, align 4
  %345 = load i32, i32* %24, align 4
  %346 = load i32, i32* %28, align 4
  %347 = load i32, i32* %29, align 4
  %348 = call i32 @dispc_ovl_set_pos(i32 %344, i32 %345, i32 %346, i32 %347)
  %349 = load i32, i32* %23, align 4
  %350 = load i32, i32* %56, align 4
  %351 = load i32, i32* %55, align 4
  %352 = call i32 @dispc_ovl_set_input_size(i32 %349, i32 %350, i32 %351)
  %353 = load i32, i32* %24, align 4
  %354 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %376

357:                                              ; preds = %330
  %358 = load i32, i32* %23, align 4
  %359 = load i32, i32* %56, align 4
  %360 = load i32, i32* %55, align 4
  %361 = load i32, i32* %32, align 4
  %362 = load i32, i32* %33, align 4
  %363 = load i32, i32* %59, align 4
  %364 = load i32, i32* %44, align 4
  %365 = load i32, i32* %45, align 4
  %366 = load i32, i32* %34, align 4
  %367 = load i32, i32* %35, align 4
  %368 = call i32 @dispc_ovl_set_scaling(i32 %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366, i32 %367)
  %369 = load i32, i32* %23, align 4
  %370 = load i32, i32* %32, align 4
  %371 = load i32, i32* %33, align 4
  %372 = call i32 @dispc_ovl_set_output_size(i32 %369, i32 %370, i32 %371)
  %373 = load i32, i32* %23, align 4
  %374 = load i32, i32* %47, align 4
  %375 = call i32 @dispc_ovl_set_vid_color_conv(i32 %373, i32 %374)
  br label %376

376:                                              ; preds = %357, %330
  %377 = load i32, i32* %23, align 4
  %378 = load i32, i32* %35, align 4
  %379 = load i32, i32* %40, align 4
  %380 = load i32, i32* %36, align 4
  %381 = load i32, i32* %34, align 4
  %382 = call i32 @dispc_ovl_set_rotation_attrs(i32 %377, i32 %378, i32 %379, i32 %380, i32 %381)
  %383 = load i32, i32* %23, align 4
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %37, align 4
  %386 = call i32 @dispc_ovl_set_zorder(i32 %383, i32 %384, i32 %385)
  %387 = load i32, i32* %23, align 4
  %388 = load i32, i32* %24, align 4
  %389 = load i32, i32* %38, align 4
  %390 = call i32 @dispc_ovl_set_pre_mult_alpha(i32 %387, i32 %388, i32 %389)
  %391 = load i32, i32* %23, align 4
  %392 = load i32, i32* %24, align 4
  %393 = load i32, i32* %39, align 4
  %394 = call i32 @dispc_ovl_setup_global_alpha(i32 %391, i32 %392, i32 %393)
  %395 = load i32, i32* %23, align 4
  %396 = load i32, i32* %24, align 4
  %397 = load i32, i32* %41, align 4
  %398 = call i32 @dispc_ovl_enable_replication(i32 %395, i32 %396, i32 %397)
  store i32 0, i32* %22, align 4
  br label %399

399:                                              ; preds = %376, %159, %140, %86, %77
  %400 = load i32, i32* %22, align 4
  ret i32 %400
}

declare dso_local i64 @dispc_plane_pclk_rate(i32) #1

declare dso_local i64 @dispc_plane_lclk_rate(i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @DSSDBG(i8*, ...) #1

declare dso_local i32 @dss_feat_color_mode_supported(i32, i32) #1

declare dso_local i32 @dispc_ovl_calc_scaling(i64, i64, i32, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @calc_tiler_rotation_offset(i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @calc_dma_rotation_offset(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @calc_vrfb_rotation_offset(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_color_mode(i32, i32) #1

declare dso_local i32 @dispc_ovl_configure_burst_type(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_ba0(i32, i64) #1

declare dso_local i32 @dispc_ovl_set_ba1(i32, i64) #1

declare dso_local i32 @dispc_ovl_set_ba0_uv(i32, i64) #1

declare dso_local i32 @dispc_ovl_set_ba1_uv(i32, i64) #1

declare dso_local i32 @dispc_ovl_set_row_inc(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_pix_inc(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_pos(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_input_size(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_scaling(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_output_size(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_color_conv(i32, i32) #1

declare dso_local i32 @dispc_ovl_set_rotation_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_zorder(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_pre_mult_alpha(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_setup_global_alpha(i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_enable_replication(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
