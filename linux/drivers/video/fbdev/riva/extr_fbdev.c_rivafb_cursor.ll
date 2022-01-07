; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.riva_par* }
%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.riva_par = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)*, i32, i32 }
%struct.fb_cursor = type { i32, i32, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64 }

@MAX_CURS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FB_CUR_SETALL = common dso_local global i32 0, align 4
@FB_CUR_SETSIZE = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @rivafb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.riva_par*, align 8
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
  %26 = load %struct.riva_par*, %struct.riva_par** %25, align 8
  store %struct.riva_par* %26, %struct.riva_par** %6, align 8
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
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_CURS, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX_CURS, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %2
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %340

53:                                               ; preds = %43
  %54 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %55 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %56, align 8
  %58 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %59 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %58, i32 0, i32 0
  %60 = call i32 %57(%struct.TYPE_10__* %59, i32 0)
  %61 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %62 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @FB_CUR_SETALL, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %68 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %53
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @FB_CUR_SETSIZE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %76 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MAX_CURS, align 4
  %80 = load i32, i32* @MAX_CURS, align 4
  %81 = mul nsw i32 %79, %80
  %82 = mul nsw i32 %81, 2
  %83 = call i32 @memset_io(i32 %78, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %74, %69
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @FB_CUR_SETPOS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %91 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %93, %97
  store i32 %98, i32* %15, align 4
  %99 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %100 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %102, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = and i32 %108, 65535
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  %114 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %115 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @NV_WR32(i32 %117, i32 768, i32 %118)
  br label %120

120:                                              ; preds = %89, %84
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %123 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %121, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %326

129:                                              ; preds = %120
  %130 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %131 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %17, align 4
  %134 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %135 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %18, align 4
  %138 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %139 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 7
  %143 = ashr i32 %142, 3
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* @MAX_CURS, align 4
  %145 = sdiv i32 %144, 8
  store i32 %145, i32* %20, align 4
  %146 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %147 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i32*
  store i32* %150, i32** %21, align 8
  %151 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %152 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %22, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %157 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @GFP_ATOMIC, align 4
  %161 = call i32* @kmalloc_array(i32 %155, i32 %159, i32 %160)
  store i32* %161, i32** %23, align 8
  %162 = load i32*, i32** %23, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %325

164:                                              ; preds = %129
  %165 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %166 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  switch i32 %167, label %199 [
    i32 128, label %168
    i32 129, label %198
  ]

168:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %194, %168
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %173 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %171, %175
  %177 = icmp slt i32 %170, %176
  br i1 %177, label %178, label %197

178:                                              ; preds = %169
  %179 = load i32*, i32** %21, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %22, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = xor i32 %183, %188
  %190 = load i32*, i32** %23, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  br label %194

194:                                              ; preds = %178
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %169

197:                                              ; preds = %169
  br label %229

198:                                              ; preds = %164
  br label %199

199:                                              ; preds = %164, %198
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %225, %199
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %19, align 4
  %203 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %204 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %202, %206
  %208 = icmp slt i32 %201, %207
  br i1 %208, label %209, label %228

209:                                              ; preds = %200
  %210 = load i32*, i32** %21, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %22, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %214, %219
  %221 = load i32*, i32** %23, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %209
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %200

228:                                              ; preds = %200
  br label %229

229:                                              ; preds = %228, %197
  %230 = load i32, i32* %20, align 4
  %231 = load i32*, i32** %23, align 8
  %232 = load i32, i32* %19, align 4
  %233 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %234 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @fb_pad_aligned_buffer(i32* %33, i32 %230, i32* %231, i32 %232, i32 %236)
  %238 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %239 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 248
  %247 = shl i32 %246, 7
  %248 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %255, 248
  %257 = shl i32 %256, 2
  %258 = or i32 %247, %257
  %259 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %260 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 248
  %268 = ashr i32 %267, 3
  %269 = or i32 %258, %268
  %270 = or i32 %269, 32768
  store i32 %270, i32* %12, align 4
  %271 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %272 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %18, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 248
  %280 = shl i32 %279, 7
  %281 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %282 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 248
  %290 = shl i32 %289, 2
  %291 = or i32 %280, %290
  %292 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %293 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %18, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, 248
  %301 = ashr i32 %300, 3
  %302 = or i32 %291, %301
  %303 = or i32 %302, 32768
  store i32 %303, i32* %11, align 4
  %304 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %305 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 1
  %307 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %306, align 8
  %308 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %309 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %308, i32 0, i32 0
  %310 = call i32 %307(%struct.TYPE_10__* %309, i32 0)
  %311 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %315 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %319 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @rivafb_load_cursor_image(%struct.riva_par* %311, i32* %33, i32 %312, i32 %313, i32 %317, i32 %321)
  %323 = load i32*, i32** %23, align 8
  %324 = call i32 @kfree(i32* %323)
  br label %325

325:                                              ; preds = %229, %129
  br label %326

326:                                              ; preds = %325, %120
  %327 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %328 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %326
  %332 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %333 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %334, align 8
  %336 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %337 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %336, i32 0, i32 0
  %338 = call i32 %335(%struct.TYPE_10__* %337, i32 1)
  br label %339

339:                                              ; preds = %331, %326
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %340

340:                                              ; preds = %339, %50
  %341 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %341)
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset_io(i32, i32, i32) #2

declare dso_local i32 @NV_WR32(i32, i32, i32) #2

declare dso_local i32* @kmalloc_array(i32, i32, i32) #2

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @rivafb_load_cursor_image(%struct.riva_par*, i32*, i32, i32, i32, i32) #2

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
