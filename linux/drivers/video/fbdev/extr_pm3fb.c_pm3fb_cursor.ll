; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_cmap, %struct.TYPE_4__, %struct.pm3_par* }
%struct.fb_cmap = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pm3_par = type { i32 }
%struct.fb_cursor = type { i32, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@hwcursor = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PM3RD_CursorMode_TYPE_X = common dso_local global i32 0, align 4
@PM3RD_CursorMode_CURSOR_ENABLE = common dso_local global i32 0, align 4
@PM3RD_CursorMode = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@PM3RD_CursorXLow = common dso_local global i32 0, align 4
@PM3RD_CursorXHigh = common dso_local global i32 0, align 4
@PM3RD_CursorYLow = common dso_local global i32 0, align 4
@PM3RD_CursorYHigh = common dso_local global i32 0, align 4
@FB_CUR_SETHOT = common dso_local global i32 0, align 4
@PM3RD_CursorHotSpotX = common dso_local global i32 0, align 4
@PM3RD_CursorHotSpotY = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@ROP_COPY = common dso_local global i64 0, align 8
@cursor_bits_lookup = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @pm3fb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3fb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.pm3_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fb_cmap, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = load %struct.pm3_par*, %struct.pm3_par** %21, align 8
  store %struct.pm3_par* %22, %struct.pm3_par** %6, align 8
  %23 = load i32, i32* @hwcursor, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %349

28:                                               ; preds = %2
  %29 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %30 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 64
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %36 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 64
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %42 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34, %28
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %349

49:                                               ; preds = %40
  %50 = load i32, i32* @PM3RD_CursorMode_TYPE_X, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %52 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @PM3RD_CursorMode_CURSOR_ENABLE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %61 = load i32, i32* @PM3RD_CursorMode, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %60, i32 %61, i32 %62)
  %64 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %65 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %349

69:                                               ; preds = %59
  %70 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %71 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FB_CUR_SETPOS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %69
  %77 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %78 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %80, %84
  store i32 %85, i32* %8, align 4
  %86 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %87 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %89, %93
  store i32 %94, i32* %9, align 4
  %95 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %96 = load i32, i32* @PM3RD_CursorXLow, align 4
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 255
  %99 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %95, i32 %96, i32 %98)
  %100 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %101 = load i32, i32* @PM3RD_CursorXHigh, align 4
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 8
  %104 = and i32 %103, 15
  %105 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %100, i32 %101, i32 %104)
  %106 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %107 = load i32, i32* @PM3RD_CursorYLow, align 4
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 255
  %110 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %106, i32 %107, i32 %109)
  %111 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %112 = load i32, i32* @PM3RD_CursorYHigh, align 4
  %113 = load i32, i32* %9, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 15
  %116 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %111, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %76, %69
  %118 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %119 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FB_CUR_SETHOT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %117
  %125 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %126 = load i32, i32* @PM3RD_CursorHotSpotX, align 4
  %127 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %128 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 63
  %132 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %125, i32 %126, i32 %131)
  %133 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %134 = load i32, i32* @PM3RD_CursorHotSpotY, align 4
  %135 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %136 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 63
  %140 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %133, i32 %134, i32 %139)
  br label %141

141:                                              ; preds = %124, %117
  %142 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %143 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %215

148:                                              ; preds = %141
  %149 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %150 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %10, align 8
  %153 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %154 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %11, align 8
  %157 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 0
  %159 = bitcast %struct.fb_cmap* %12 to i8*
  %160 = bitcast %struct.fb_cmap* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 24, i1 false)
  %161 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %162 = call i32 @PM3RD_CursorPalette(i32 39)
  %163 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 8
  %169 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %161, i32 %162, i32 %168)
  %170 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %171 = call i32 @PM3RD_CursorPalette(i32 40)
  %172 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 8
  %178 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %170, i32 %171, i32 %177)
  %179 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %180 = call i32 @PM3RD_CursorPalette(i32 41)
  %181 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 8
  %187 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %179, i32 %180, i32 %186)
  %188 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %189 = call i32 @PM3RD_CursorPalette(i32 42)
  %190 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 8
  %196 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %188, i32 %189, i32 %195)
  %197 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %198 = call i32 @PM3RD_CursorPalette(i32 43)
  %199 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 8
  %205 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %197, i32 %198, i32 %204)
  %206 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %207 = call i32 @PM3RD_CursorPalette(i32 44)
  %208 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* %11, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 8
  %214 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %206, i32 %207, i32 %213)
  br label %215

215:                                              ; preds = %148, %141
  %216 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %217 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %220 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %348

224:                                              ; preds = %215
  %225 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %226 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to i32*
  store i32* %229, i32** %13, align 8
  %230 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %231 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i32*
  store i32* %233, i32** %14, align 8
  %234 = call i32 @PM3RD_CursorPattern(i32 0)
  store i32 %234, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %235

235:                                              ; preds = %334, %224
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %238 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %236, %240
  br i1 %241, label %242, label %337

242:                                              ; preds = %235
  %243 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %244 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 7
  %248 = ashr i32 %247, 3
  store i32 %248, i32* %17, align 4
  %249 = load i32, i32* %17, align 4
  %250 = sub nsw i32 8, %249
  store i32 %250, i32* %18, align 4
  br label %251

251:                                              ; preds = %314, %242
  %252 = load i32, i32* %17, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %317

254:                                              ; preds = %251
  %255 = load i32*, i32** %13, align 8
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %14, align 8
  %258 = load i32, i32* %257, align 4
  %259 = xor i32 %256, %258
  store i32 %259, i32* %19, align 4
  %260 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %261 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @ROP_COPY, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %254
  %266 = load i32*, i32** %14, align 8
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %267, %269
  store i32 %270, i32* %19, align 4
  br label %271

271:                                              ; preds = %265, %254
  %272 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %273 = load i32, i32* %16, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %16, align 4
  %275 = load i32*, i32** @cursor_bits_lookup, align 8
  %276 = load i32, i32* %19, align 4
  %277 = ashr i32 %276, 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** @cursor_bits_lookup, align 8
  %282 = load i32*, i32** %14, align 8
  %283 = load i32, i32* %282, align 4
  %284 = ashr i32 %283, 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %287, 1
  %289 = or i32 %280, %288
  %290 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %272, i32 %273, i32 %289)
  %291 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %292 = load i32, i32* %16, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %16, align 4
  %294 = load i32*, i32** @cursor_bits_lookup, align 8
  %295 = load i32, i32* %19, align 4
  %296 = and i32 %295, 15
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** @cursor_bits_lookup, align 8
  %301 = load i32*, i32** %14, align 8
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 15
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %300, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = shl i32 %306, 1
  %308 = or i32 %299, %307
  %309 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %291, i32 %292, i32 %308)
  %310 = load i32*, i32** %13, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %13, align 8
  %312 = load i32*, i32** %14, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %14, align 8
  br label %314

314:                                              ; preds = %271
  %315 = load i32, i32* %17, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %17, align 4
  br label %251

317:                                              ; preds = %251
  br label %318

318:                                              ; preds = %330, %317
  %319 = load i32, i32* %18, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %318
  %322 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %16, align 4
  %325 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %322, i32 %323, i32 0)
  %326 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %327 = load i32, i32* %16, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %16, align 4
  %329 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %326, i32 %327, i32 0)
  br label %330

330:                                              ; preds = %321
  %331 = load i32, i32* %18, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %18, align 4
  br label %318

333:                                              ; preds = %318
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %15, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %235

337:                                              ; preds = %235
  br label %338

338:                                              ; preds = %342, %337
  %339 = load i32, i32* %16, align 4
  %340 = call i32 @PM3RD_CursorPattern(i32 1024)
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %338
  %343 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %344 = load i32, i32* %16, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %16, align 4
  %346 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %343, i32 %344, i32 0)
  br label %338

347:                                              ; preds = %338
  br label %348

348:                                              ; preds = %347, %215
  store i32 0, i32* %3, align 4
  br label %349

349:                                              ; preds = %348, %68, %46, %25
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local i32 @PM3_WRITE_DAC_REG(%struct.pm3_par*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PM3RD_CursorPalette(i32) #1

declare dso_local i32 @PM3RD_CursorPattern(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
