; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matroxfb_dh_fb_info = type { i32, %struct.TYPE_10__, %struct.matrox_fb_info* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.matrox_fb_info = type { %struct.TYPE_12__, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@MATROXFB_SRC_CRTC2 = common dso_local global i64 0, align 8
@MATROXFB_OUTPUT_MODE_MONITOR = common dso_local global i64 0, align 8
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matroxfb_dh_fb_info*, %struct.my_timming*, i32, i32)* @matroxfb_dh_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_dh_restore(%struct.matroxfb_dh_fb_info* %0, %struct.my_timming* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.matroxfb_dh_fb_info*, align 8
  %6 = alloca %struct.my_timming*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.matrox_fb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.matroxfb_dh_fb_info* %0, %struct.matroxfb_dh_fb_info** %5, align 8
  store %struct.my_timming* %1, %struct.my_timming** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %17 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %16, i32 0, i32 2
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %17, align 8
  store %struct.matrox_fb_info* %18, %struct.matrox_fb_info** %11, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %22 [
    i32 15, label %20
    i32 16, label %21
  ]

20:                                               ; preds = %4
  store i32 2097152, i32* %9, align 4
  br label %23

21:                                               ; preds = %4
  store i32 4194304, i32* %9, align 4
  br label %23

22:                                               ; preds = %4
  store i32 8388608, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %21, %20
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %11, align 8
  %27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MATROXFB_SRC_CRTC2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %23
  %35 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %11, align 8
  %36 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 6
  store i32 %42, i32* %9, align 4
  %43 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %11, align 8
  %44 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MATROXFB_OUTPUT_MODE_MONITOR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, -1073737728
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %40
  br label %60

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, 2
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, -1073741824
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %54
  br label %74

61:                                               ; preds = %23
  %62 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %11, align 8
  %63 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MATROXFB_SRC_CRTC2, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %61
  br label %74

74:                                               ; preds = %73, %60
  %75 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %11, align 8
  %76 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MATROXFB_SRC_CRTC2, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, 1048576
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %88 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, 33554432
  store i32 %93, i32* %9, align 4
  %94 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %95 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %99 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %103 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %107 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %91, %86
  %111 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %112 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 7
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, 16
  store i32 %118, i32* %10, align 4
  %119 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %120 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, -8
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %116, %110
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, 268435456
  store i32 %125, i32* %9, align 4
  %126 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %127 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 8
  %130 = shl i32 %129, 16
  %131 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %132 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 8
  %135 = or i32 %130, %134
  %136 = call i32 @mga_outl(i32 15380, i32 %135)
  %137 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %138 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 8
  %141 = shl i32 %140, 16
  %142 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %143 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 8
  %146 = or i32 %141, %145
  %147 = call i32 @mga_outl(i32 15384, i32 %146)
  %148 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %149 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = shl i32 %151, 16
  %153 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %154 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = or i32 %152, %156
  %158 = call i32 @mga_outl(i32 15388, i32 %157)
  %159 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %160 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = shl i32 %162, 16
  %164 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %165 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  %168 = or i32 %163, %167
  %169 = call i32 @mga_outl(i32 15392, i32 %168)
  %170 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %171 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 16
  %174 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %175 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %173, %176
  %178 = call i32 @mga_outl(i32 15396, i32 %177)
  %179 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %180 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %185 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, 3
  %190 = mul nsw i32 %183, %189
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, 33554432
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %123
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @mga_outl(i32 15404, i32 %195)
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %12, align 4
  %199 = add i32 %197, %198
  %200 = call i32 @mga_outl(i32 15400, i32 %199)
  %201 = load i32, i32* %12, align 4
  %202 = shl i32 %201, 1
  store i32 %202, i32* %12, align 4
  %203 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %204 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  br label %210

205:                                              ; preds = %123
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @mga_outl(i32 15400, i32 %206)
  %208 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %209 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  br label %210

210:                                              ; preds = %205, %194
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @mga_outl(i32 15424, i32 %211)
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @mga_outl(i32 15436, i32 %213)
  %215 = load i32, i32* %9, align 4
  %216 = and i32 %215, 33554432
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %210
  %219 = load i32, i32* %9, align 4
  %220 = and i32 %219, -33554433
  %221 = call i32 @mga_outl(i32 15376, i32 %220)
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %234, %218
  %223 = load i32, i32* %13, align 4
  %224 = icmp slt i32 %223, 2
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  store i32 0, i32* %15, align 4
  br label %226

226:                                              ; preds = %231, %225
  %227 = call i32 @mga_inl(i32 15432)
  %228 = and i32 %227, 4095
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %15, align 4
  %230 = icmp uge i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load i32, i32* %14, align 4
  store i32 %232, i32* %15, align 4
  br label %226

233:                                              ; preds = %226
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %222

237:                                              ; preds = %222
  br label %238

238:                                              ; preds = %237, %210
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @mga_outl(i32 15376, i32 %239)
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %11, align 8
  %243 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  store i32 %241, i32* %245, align 8
  %246 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %247 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = shl i32 %248, 16
  store i32 %249, i32* %9, align 4
  %250 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %251 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %238
  %257 = load i32, i32* %9, align 4
  %258 = or i32 %257, 256
  store i32 %258, i32* %9, align 4
  br label %259

259:                                              ; preds = %256, %238
  %260 = load %struct.my_timming*, %struct.my_timming** %6, align 8
  %261 = getelementptr inbounds %struct.my_timming, %struct.my_timming* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load i32, i32* %9, align 4
  %268 = or i32 %267, 512
  store i32 %268, i32* %9, align 4
  br label %269

269:                                              ; preds = %266, %259
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @mga_outl(i32 15428, i32 %270)
  ret void
}

declare dso_local i32 @mga_outl(i32, i32) #1

declare dso_local i32 @mga_inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
