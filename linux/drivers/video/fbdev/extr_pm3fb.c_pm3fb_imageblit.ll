; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.pm3_par* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pm3_par = type { i32* }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@PM3ForegroundColor = common dso_local global i32 0, align 4
@PM3BackgroundColor = common dso_local global i32 0, align 4
@PM3Config2D = common dso_local global i32 0, align 4
@PM3Config2D_UserScissorEnable = common dso_local global i32 0, align 4
@PM3Config2D_UseConstantSource = common dso_local global i32 0, align 4
@PM3Config2D_ForegroundROPEnable = common dso_local global i32 0, align 4
@PM3Config2D_OpaqueSpan = common dso_local global i32 0, align 4
@PM3Config2D_FBWriteEnable = common dso_local global i32 0, align 4
@PM3ScissorMinXY = common dso_local global i32 0, align 4
@PM3ScissorMaxXY = common dso_local global i32 0, align 4
@PM3RectanglePosition = common dso_local global i32 0, align 4
@PM3Render2D = common dso_local global i32 0, align 4
@PM3Render2D_XPositive = common dso_local global i32 0, align 4
@PM3Render2D_YPositive = common dso_local global i32 0, align 4
@PM3Render2D_Operation_SyncOnBitMask = common dso_local global i32 0, align 4
@PM3Render2D_SpanOperation = common dso_local global i32 0, align 4
@PM3_FIFO_SIZE = common dso_local global i32 0, align 4
@PM3BitMaskPattern = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @pm3fb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm3fb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.pm3_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 5
  %14 = load %struct.pm3_par*, %struct.pm3_par** %13, align 8
  store %struct.pm3_par* %14, %struct.pm3_par** %5, align 8
  %15 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %16 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %19 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %9, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %264

28:                                               ; preds = %2
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = call i32 @cfb_imageblit(%struct.fb_info* %36, %struct.fb_image* %37)
  br label %264

39:                                               ; preds = %28
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %52 [
    i32 129, label %44
    i32 128, label %51
  ]

44:                                               ; preds = %39
  %45 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %46 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %49 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  br label %71

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %39, %51
  %53 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %54 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %57 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %63 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %66 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %52, %44
  %72 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %73 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %79 = call i32 @cfb_imageblit(%struct.fb_info* %77, %struct.fb_image* %78)
  br label %264

80:                                               ; preds = %71
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %86, %80
  %96 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %99, 16
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = shl i32 %106, 16
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %101, %95
  %111 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %112 = call i32 @PM3_WAIT(%struct.pm3_par* %111, i32 7)
  %113 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %114 = load i32, i32* @PM3ForegroundColor, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %113, i32 %114, i32 %115)
  %117 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %118 = load i32, i32* @PM3BackgroundColor, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %117, i32 %118, i32 %119)
  %121 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %122 = load i32, i32* @PM3Config2D, align 4
  %123 = load i32, i32* @PM3Config2D_UserScissorEnable, align 4
  %124 = load i32, i32* @PM3Config2D_UseConstantSource, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @PM3Config2D_ForegroundROPEnable, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @PM3Config2D_ForegroundROP(i32 3)
  %129 = or i32 %127, %128
  %130 = load i32, i32* @PM3Config2D_OpaqueSpan, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @PM3Config2D_FBWriteEnable, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %121, i32 %122, i32 %133)
  %135 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %136 = load i32, i32* @PM3ScissorMinXY, align 4
  %137 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %138 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 4095
  %141 = shl i32 %140, 16
  %142 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %143 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 4095
  %146 = or i32 %141, %145
  %147 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %135, i32 %136, i32 %146)
  %148 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %149 = load i32, i32* @PM3ScissorMaxXY, align 4
  %150 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %151 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %154 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %152, %155
  %157 = and i32 %156, 4095
  %158 = shl i32 %157, 16
  %159 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %160 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %163 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %161, %164
  %166 = and i32 %165, 4095
  %167 = or i32 %158, %166
  %168 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %148, i32 %149, i32 %167)
  %169 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %170 = load i32, i32* @PM3RectanglePosition, align 4
  %171 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %172 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @PM3RectanglePosition_XOffset(i32 %173)
  %175 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %176 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @PM3RectanglePosition_YOffset(i32 %177)
  %179 = or i32 %174, %178
  %180 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %169, i32 %170, i32 %179)
  %181 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %182 = load i32, i32* @PM3Render2D, align 4
  %183 = load i32, i32* @PM3Render2D_XPositive, align 4
  %184 = load i32, i32* @PM3Render2D_YPositive, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @PM3Render2D_Operation_SyncOnBitMask, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @PM3Render2D_SpanOperation, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %191 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @PM3Render2D_Width(i32 %192)
  %194 = or i32 %189, %193
  %195 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %196 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @PM3Render2D_Height(i32 %197)
  %199 = or i32 %194, %198
  %200 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %181, i32 %182, i32 %199)
  br label %201

201:                                              ; preds = %263, %110
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %6, align 4
  %204 = icmp ne i32 %202, 0
  br i1 %204, label %205, label %264

205:                                              ; preds = %201
  %206 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %207 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 7
  %210 = ashr i32 %209, 3
  %211 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %212 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %210, %214
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = ashr i32 %217, 2
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %241, %205
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @PM3_FIFO_SIZE, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %246

223:                                              ; preds = %219
  %224 = load i32, i32* @PM3_FIFO_SIZE, align 4
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  %226 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %227 = load i32, i32* @PM3_FIFO_SIZE, align 4
  %228 = call i32 @PM3_WAIT(%struct.pm3_par* %226, i32 %227)
  br label %229

229:                                              ; preds = %233, %223
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %11, align 4
  %232 = icmp ne i32 %230, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %235 = load i32, i32* @PM3BitMaskPattern, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %234, i32 %235, i32 %237)
  %239 = load i32*, i32** %9, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %9, align 8
  br label %229

241:                                              ; preds = %229
  %242 = load i32, i32* @PM3_FIFO_SIZE, align 4
  %243 = sub nsw i32 %242, 1
  %244 = load i32, i32* %10, align 4
  %245 = sub nsw i32 %244, %243
  store i32 %245, i32* %10, align 4
  br label %219

246:                                              ; preds = %219
  %247 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  %250 = call i32 @PM3_WAIT(%struct.pm3_par* %247, i32 %249)
  br label %251

251:                                              ; preds = %255, %246
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %10, align 4
  %254 = icmp ne i32 %252, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %251
  %256 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %257 = load i32, i32* @PM3BitMaskPattern, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %256, i32 %257, i32 %259)
  %261 = load i32*, i32** %9, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %9, align 8
  br label %251

263:                                              ; preds = %251
  br label %201

264:                                              ; preds = %27, %35, %76, %201
  ret void
}

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @PM3_WAIT(%struct.pm3_par*, i32) #1

declare dso_local i32 @PM3_WRITE_REG(%struct.pm3_par*, i32, i32) #1

declare dso_local i32 @PM3Config2D_ForegroundROP(i32) #1

declare dso_local i32 @PM3RectanglePosition_XOffset(i32) #1

declare dso_local i32 @PM3RectanglePosition_YOffset(i32) #1

declare dso_local i32 @PM3Render2D_Width(i32) #1

declare dso_local i32 @PM3Render2D_Height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
