; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_update_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_update_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.amifb_par* }
%struct.TYPE_2__ = type { i64 }
%struct.amifb_par = type { i16, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i64, i64, i32 }

@FB_VMODE_SMOOTH_XPAN = common dso_local global i32 0, align 4
@maxfmode = common dso_local global i32 0, align 4
@min_fstrt = common dso_local global i16 0, align 2
@BPC0_LACE = common dso_local global i32 0, align 4
@IS_AGA = common dso_local global i64 0, align 8
@FMODE_BSCAN2 = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @ami_update_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ami_update_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.amifb_par*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = load %struct.amifb_par*, %struct.amifb_par** %14, align 8
  store %struct.amifb_par* %15, %struct.amifb_par** %3, align 8
  %16 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %17 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  store i16 %18, i16* %4, align 2
  %19 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %20 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FB_VMODE_SMOOTH_XPAN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @maxfmode, align 4
  %27 = shl i32 16, %26
  %28 = trunc i32 %27 to i16
  %29 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %30 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %29, i32 0, i32 2
  %31 = load i16, i16* %30, align 8
  %32 = call signext i16 @upx(i16 signext %28, i16 signext %31)
  %33 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %34 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %33, i32 0, i32 2
  store i16 %32, i16* %34, align 8
  br label %35

35:                                               ; preds = %25, %1
  %36 = load i32, i32* @maxfmode, align 4
  %37 = shl i32 16, %36
  %38 = load i16, i16* %4, align 2
  %39 = sext i16 %38 to i32
  %40 = shl i32 %37, %39
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %9, align 2
  %42 = load i32, i32* @maxfmode, align 4
  %43 = shl i32 16, %42
  %44 = trunc i32 %43 to i16
  %45 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %46 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %45, i32 0, i32 2
  %47 = load i16, i16* %46, align 8
  %48 = call signext i16 @modx(i16 signext %44, i16 signext %47)
  store i16 %48, i16* %5, align 2
  %49 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %50 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %49, i32 0, i32 3
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = load i16, i16* %5, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %4, align 2
  %56 = sext i16 %55 to i32
  %57 = shl i32 %54, %56
  %58 = sub nsw i32 %52, %57
  %59 = sub nsw i32 %58, 4
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %6, align 2
  %61 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %62 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %61, i32 0, i32 4
  %63 = load i16, i16* %62, align 4
  %64 = sext i16 %63 to i32
  %65 = load i16, i16* %5, align 2
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %64, %66
  %68 = load i16, i16* %4, align 2
  %69 = sext i16 %68 to i32
  %70 = shl i32 %67, %69
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %7, align 2
  %72 = load i16, i16* %9, align 2
  %73 = load i16, i16* %6, align 2
  %74 = call signext i16 @modx(i16 signext %72, i16 signext %73)
  store i16 %74, i16* %10, align 2
  %75 = load i32, i32* @maxfmode, align 4
  %76 = shl i32 2, %75
  %77 = trunc i32 %76 to i16
  %78 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %79 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %78, i32 0, i32 2
  %80 = load i16, i16* %79, align 8
  %81 = call signext i16 @div8(i16 signext %80)
  %82 = call signext i16 @downx(i16 signext %77, i16 signext %81)
  store i16 %82, i16* %11, align 2
  %83 = load i32, i32* @maxfmode, align 4
  %84 = load i16, i16* %4, align 2
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %83, %85
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %107

88:                                               ; preds = %35
  %89 = load i16, i16* %9, align 2
  %90 = load i16, i16* %6, align 2
  %91 = call signext i16 @downx(i16 signext %89, i16 signext %90)
  %92 = sext i16 %91 to i32
  %93 = sub nsw i32 %92, 64
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %6, align 2
  %95 = load i16, i16* %9, align 2
  %96 = load i16, i16* %7, align 2
  %97 = call signext i16 @upx(i16 signext %95, i16 signext %96)
  store i16 %97, i16* %7, align 2
  %98 = load i16, i16* %6, align 2
  %99 = sext i16 %98 to i32
  %100 = load i16, i16* %7, align 2
  %101 = sext i16 %100 to i32
  %102 = add nsw i32 %99, %101
  %103 = load i16, i16* %9, align 2
  %104 = sext i16 %103 to i32
  %105 = sub nsw i32 %102, %104
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %8, align 2
  br label %166

107:                                              ; preds = %35
  %108 = load i16, i16* %9, align 2
  %109 = load i16, i16* %6, align 2
  %110 = call signext i16 @downx(i16 signext %108, i16 signext %109)
  %111 = sext i16 %110 to i32
  %112 = load i16, i16* %9, align 2
  %113 = sext i16 %112 to i32
  %114 = sub nsw i32 %111, %113
  %115 = trunc i32 %114 to i16
  store i16 %115, i16* %6, align 2
  store i16 %115, i16* %12, align 2
  %116 = load i16, i16* %6, align 2
  %117 = sext i16 %116 to i32
  %118 = load i16, i16* %9, align 2
  %119 = load i16, i16* %7, align 2
  %120 = call signext i16 @upx(i16 signext %118, i16 signext %119)
  %121 = sext i16 %120 to i32
  %122 = add nsw i32 %117, %121
  %123 = sub nsw i32 %122, 64
  %124 = trunc i32 %123 to i16
  store i16 %124, i16* %8, align 2
  %125 = load i16, i16* %7, align 2
  %126 = call signext i16 @up64(i16 signext %125)
  store i16 %126, i16* %7, align 2
  %127 = load i16, i16* %8, align 2
  %128 = sext i16 %127 to i32
  %129 = load i16, i16* %7, align 2
  %130 = sext i16 %129 to i32
  %131 = sub nsw i32 %128, %130
  %132 = add nsw i32 %131, 64
  %133 = trunc i32 %132 to i16
  store i16 %133, i16* %6, align 2
  %134 = load i16, i16* %6, align 2
  %135 = sext i16 %134 to i32
  %136 = load i16, i16* @min_fstrt, align 2
  %137 = sext i16 %136 to i32
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %107
  %140 = load i16, i16* @min_fstrt, align 2
  %141 = sext i16 %140 to i32
  %142 = load i16, i16* %6, align 2
  %143 = sext i16 %142 to i32
  %144 = sub nsw i32 %141, %143
  %145 = load i16, i16* %8, align 2
  %146 = sext i16 %145 to i32
  %147 = add nsw i32 %146, %144
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* %8, align 2
  %149 = load i16, i16* @min_fstrt, align 2
  store i16 %149, i16* %6, align 2
  br label %150

150:                                              ; preds = %139, %107
  %151 = load i16, i16* %11, align 2
  %152 = sext i16 %151 to i32
  %153 = load i16, i16* %12, align 2
  %154 = sext i16 %153 to i32
  %155 = load i16, i16* %6, align 2
  %156 = sext i16 %155 to i32
  %157 = sub nsw i32 %154, %156
  %158 = load i16, i16* %4, align 2
  %159 = sext i16 %158 to i32
  %160 = ashr i32 %157, %159
  %161 = trunc i32 %160 to i16
  %162 = call signext i16 @div8(i16 signext %161)
  %163 = sext i16 %162 to i32
  %164 = sub nsw i32 %152, %163
  %165 = trunc i32 %164 to i16
  store i16 %165, i16* %11, align 2
  br label %166

166:                                              ; preds = %150, %88
  %167 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %168 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %167, i32 0, i32 5
  %169 = load i16, i16* %168, align 2
  %170 = sext i16 %169 to i32
  %171 = load i16, i16* %7, align 2
  %172 = sext i16 %171 to i32
  %173 = load i16, i16* %4, align 2
  %174 = sext i16 %173 to i32
  %175 = ashr i32 %172, %174
  %176 = trunc i32 %175 to i16
  %177 = call signext i16 @div8(i16 signext %176)
  %178 = sext i16 %177 to i32
  %179 = sub nsw i32 %170, %178
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %12, align 2
  %181 = load i16, i16* %6, align 2
  %182 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %183 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %182, i32 0, i32 6
  store i16 %181, i16* %183, align 8
  %184 = load i16, i16* %8, align 2
  %185 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %186 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %185, i32 0, i32 7
  store i16 %184, i16* %186, align 2
  %187 = load i16, i16* %10, align 2
  %188 = call i32 @hscroll2hw(i16 signext %187)
  %189 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %190 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %189, i32 0, i32 18
  store i32 %188, i32* %190, align 8
  %191 = load i16, i16* %12, align 2
  %192 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %193 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %192, i32 0, i32 8
  store i16 %191, i16* %193, align 4
  %194 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %195 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @BPC0_LACE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %166
  %201 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %202 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %201, i32 0, i32 5
  %203 = load i16, i16* %202, align 2
  %204 = sext i16 %203 to i32
  %205 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %206 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %205, i32 0, i32 8
  %207 = load i16, i16* %206, align 4
  %208 = sext i16 %207 to i32
  %209 = add nsw i32 %208, %204
  %210 = trunc i32 %209 to i16
  store i16 %210, i16* %206, align 4
  br label %211

211:                                              ; preds = %200, %166
  %212 = load i64, i64* @IS_AGA, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %234

214:                                              ; preds = %211
  %215 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %216 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @FMODE_BSCAN2, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %214
  %222 = load i16, i16* %7, align 2
  %223 = sext i16 %222 to i32
  %224 = load i16, i16* %4, align 2
  %225 = sext i16 %224 to i32
  %226 = ashr i32 %223, %225
  %227 = trunc i32 %226 to i16
  %228 = call signext i16 @div8(i16 signext %227)
  %229 = sext i16 %228 to i32
  %230 = sub nsw i32 0, %229
  %231 = trunc i32 %230 to i16
  %232 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %233 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %232, i32 0, i32 11
  store i16 %231, i16* %233, align 8
  br label %240

234:                                              ; preds = %214, %211
  %235 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %236 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %235, i32 0, i32 8
  %237 = load i16, i16* %236, align 4
  %238 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %239 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %238, i32 0, i32 11
  store i16 %237, i16* %239, align 8
  br label %240

240:                                              ; preds = %234, %221
  %241 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %242 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %241, i32 0, i32 12
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %325

245:                                              ; preds = %240
  %246 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %247 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %251 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %250, i32 0, i32 5
  %252 = load i16, i16* %251, align 2
  %253 = sext i16 %252 to i32
  %254 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %255 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %254, i32 0, i32 12
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %253, %256
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %249, %258
  %260 = load i16, i16* %11, align 2
  %261 = sext i16 %260 to i64
  %262 = add nsw i64 %259, %261
  %263 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %264 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %263, i32 0, i32 16
  store i64 %262, i64* %264, align 8
  %265 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %266 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %324

271:                                              ; preds = %245
  %272 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %273 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %272, i32 0, i32 12
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %276 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %275, i32 0, i32 13
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %279 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %278, i32 0, i32 14
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %277, %280
  %282 = icmp sgt i32 %274, %281
  br i1 %282, label %283, label %323

283:                                              ; preds = %271
  %284 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %285 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i16, i16* %11, align 2
  %289 = sext i16 %288 to i64
  %290 = add nsw i64 %287, %289
  %291 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %292 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %291, i32 0, i32 17
  store i64 %290, i64* %292, align 8
  %293 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %294 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %293, i32 0, i32 9
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @BPC0_LACE, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %322

299:                                              ; preds = %283
  %300 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %301 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %300, i32 0, i32 15
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %304 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %303, i32 0, i32 13
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %302, %305
  %307 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %308 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %307, i32 0, i32 12
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %306, %309
  %311 = call i64 @mod2(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %299
  %314 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %315 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %314, i32 0, i32 5
  %316 = load i16, i16* %315, align 2
  %317 = sext i16 %316 to i64
  %318 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %319 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %318, i32 0, i32 17
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, %317
  store i64 %321, i64* %319, align 8
  br label %322

322:                                              ; preds = %313, %299, %283
  br label %323

323:                                              ; preds = %322, %271
  br label %324

324:                                              ; preds = %323, %245
  br label %335

325:                                              ; preds = %240
  %326 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %327 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i16, i16* %11, align 2
  %331 = sext i16 %330 to i64
  %332 = add nsw i64 %329, %331
  %333 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %334 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %333, i32 0, i32 16
  store i64 %332, i64* %334, align 8
  br label %335

335:                                              ; preds = %325, %324
  %336 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %337 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %336, i32 0, i32 9
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @BPC0_LACE, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %357

342:                                              ; preds = %335
  %343 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %344 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %343, i32 0, i32 15
  %345 = load i32, i32* %344, align 8
  %346 = call i64 @mod2(i32 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %357

348:                                              ; preds = %342
  %349 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %350 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %349, i32 0, i32 5
  %351 = load i16, i16* %350, align 2
  %352 = sext i16 %351 to i64
  %353 = load %struct.amifb_par*, %struct.amifb_par** %3, align 8
  %354 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %353, i32 0, i32 16
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %355, %352
  store i64 %356, i64* %354, align 8
  br label %357

357:                                              ; preds = %348, %342, %335
  ret void
}

declare dso_local signext i16 @upx(i16 signext, i16 signext) #1

declare dso_local signext i16 @modx(i16 signext, i16 signext) #1

declare dso_local signext i16 @downx(i16 signext, i16 signext) #1

declare dso_local signext i16 @div8(i16 signext) #1

declare dso_local signext i16 @up64(i16 signext) #1

declare dso_local i32 @hscroll2hw(i16 signext) #1

declare dso_local i64 @mod2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
