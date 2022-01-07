; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidiafb_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidiafb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.nvidia_par* }
%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nvidia_par = type { i32, i32, i64 }
%struct.fb_cursor = type { i32, i32, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64 }

@MAX_CURS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FB_CUR_SETALL = common dso_local global i32 0, align 4
@FB_CUR_SETSIZE = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @nvidiafb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidiafb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.nvidia_par*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 2
  %26 = load %struct.nvidia_par*, %struct.nvidia_par** %25, align 8
  store %struct.nvidia_par* %26, %struct.nvidia_par** %6, align 8
  %27 = load i32, i32* @MAX_CURS, align 4
  %28 = load i32, i32* @MAX_CURS, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 8
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %34 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %35 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_CURS, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX_CURS, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %2
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %323

53:                                               ; preds = %43
  %54 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %55 = call i32 @NVShowHideCursor(%struct.nvidia_par* %54, i32 0)
  %56 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %57 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @FB_CUR_SETALL, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %63 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @FB_CUR_SETSIZE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %71 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MAX_CURS, align 4
  %74 = load i32, i32* @MAX_CURS, align 4
  %75 = mul nsw i32 %73, %74
  %76 = mul nsw i32 %75, 2
  %77 = call i32 @memset_io(i32 %72, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @FB_CUR_SETPOS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %78
  %84 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %85 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %87, %91
  store i32 %92, i32* %15, align 4
  %93 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %94 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %96, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, 65535
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %15, align 4
  %105 = shl i32 %104, 16
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %16, align 4
  %108 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %109 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @NV_WR32(i32 %110, i32 768, i32 %111)
  br label %113

113:                                              ; preds = %83, %78
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %116 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %114, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %314

122:                                              ; preds = %113
  %123 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %124 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %17, align 4
  %127 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %128 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %18, align 4
  %131 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %132 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 7
  %136 = ashr i32 %135, 3
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* @MAX_CURS, align 4
  %138 = sdiv i32 %137, 8
  store i32 %138, i32* %20, align 4
  %139 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %140 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  store i32* %143, i32** %21, align 8
  %144 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %145 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i32*
  store i32* %147, i32** %22, align 8
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %150 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = call i32* @kmalloc_array(i32 %148, i32 %152, i32 %153)
  store i32* %154, i32** %23, align 8
  %155 = load i32*, i32** %23, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %313

157:                                              ; preds = %122
  %158 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %159 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %192 [
    i32 128, label %161
    i32 129, label %191
  ]

161:                                              ; preds = %157
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %187, %161
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %166 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %164, %168
  %170 = icmp slt i32 %163, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %162
  %172 = load i32*, i32** %21, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %22, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %176, %181
  %183 = load i32*, i32** %23, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %171
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %162

190:                                              ; preds = %162
  br label %222

191:                                              ; preds = %157
  br label %192

192:                                              ; preds = %157, %191
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %218, %192
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %197 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %195, %199
  %201 = icmp slt i32 %194, %200
  br i1 %201, label %202, label %221

202:                                              ; preds = %193
  %203 = load i32*, i32** %21, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %22, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %207, %212
  %214 = load i32*, i32** %23, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %213, i32* %217, align 4
  br label %218

218:                                              ; preds = %202
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %193

221:                                              ; preds = %193
  br label %222

222:                                              ; preds = %221, %190
  %223 = load i32, i32* %20, align 4
  %224 = load i32*, i32** %23, align 8
  %225 = load i32, i32* %19, align 4
  %226 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %227 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @fb_pad_aligned_buffer(i32* %33, i32 %223, i32* %224, i32 %225, i32 %229)
  %231 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %232 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 248
  %240 = shl i32 %239, 7
  %241 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %242 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 248
  %250 = shl i32 %249, 2
  %251 = or i32 %240, %250
  %252 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %253 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %17, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 248
  %261 = ashr i32 %260, 3
  %262 = or i32 %251, %261
  %263 = or i32 %262, 32768
  store i32 %263, i32* %12, align 4
  %264 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %265 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %18, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 248
  %273 = shl i32 %272, 7
  %274 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %275 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %18, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 248
  %283 = shl i32 %282, 2
  %284 = or i32 %273, %283
  %285 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %286 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %18, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 248
  %294 = ashr i32 %293, 3
  %295 = or i32 %284, %294
  %296 = or i32 %295, 32768
  store i32 %296, i32* %11, align 4
  %297 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %298 = call i32 @NVLockUnlock(%struct.nvidia_par* %297, i32 0)
  %299 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %303 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %307 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @nvidiafb_load_cursor_image(%struct.nvidia_par* %299, i32* %33, i32 %300, i32 %301, i32 %305, i32 %309)
  %311 = load i32*, i32** %23, align 8
  %312 = call i32 @kfree(i32* %311)
  br label %313

313:                                              ; preds = %222, %122
  br label %314

314:                                              ; preds = %313, %113
  %315 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %316 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %321 = call i32 @NVShowHideCursor(%struct.nvidia_par* %320, i32 1)
  br label %322

322:                                              ; preds = %319, %314
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %323

323:                                              ; preds = %322, %50
  %324 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %324)
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NVShowHideCursor(%struct.nvidia_par*, i32) #2

declare dso_local i32 @memset_io(i32, i32, i32) #2

declare dso_local i32 @NV_WR32(i32, i32, i32) #2

declare dso_local i32* @kmalloc_array(i32, i32, i32) #2

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @NVLockUnlock(%struct.nvidia_par*, i32) #2

declare dso_local i32 @nvidiafb_load_cursor_image(%struct.nvidia_par*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
