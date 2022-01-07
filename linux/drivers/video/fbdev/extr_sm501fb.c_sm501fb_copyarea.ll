; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.sm501fb_par* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.sm501fb_par = type { %struct.TYPE_3__, %struct.sm501fb_info* }
%struct.TYPE_3__ = type { i32 }
%struct.sm501fb_info = type { i64 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@SM501_2D_SOURCE_BASE = common dso_local global i64 0, align 8
@SM501_2D_DESTINATION_BASE = common dso_local global i64 0, align 8
@SM501_2D_WINDOW_WIDTH = common dso_local global i64 0, align 8
@SM501_2D_PITCH = common dso_local global i64 0, align 8
@SM501_2D_STRETCH = common dso_local global i64 0, align 8
@SM501_2D_COLOR_COMPARE_MASK = common dso_local global i64 0, align 8
@SM501_2D_MASK = common dso_local global i64 0, align 8
@SM501_2D_SOURCE = common dso_local global i64 0, align 8
@SM501_2D_DESTINATION = common dso_local global i64 0, align 8
@SM501_2D_DIMENSION = common dso_local global i64 0, align 8
@SM501_2D_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @sm501fb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.sm501fb_par*, align 8
  %6 = alloca %struct.sm501fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load %struct.sm501fb_par*, %struct.sm501fb_par** %15, align 8
  store %struct.sm501fb_par* %16, %struct.sm501fb_par** %5, align 8
  %17 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %18 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %17, i32 0, i32 1
  %19 = load %struct.sm501fb_info*, %struct.sm501fb_info** %18, align 8
  store %struct.sm501fb_info* %19, %struct.sm501fb_info** %6, align 8
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %24 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %27 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %30 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %33 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %36 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %38, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %2
  br label %295

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %55, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %61, %52
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %72, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %78, %69
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %87, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %86
  br label %295

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %104, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %110, %101
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %121, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %118
  %128 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %127, %118
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139, %135
  store i64 134217728, i64* %13, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %7, align 4
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %152, 1
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %8, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %143, %139
  %161 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %162 = call i64 @sm501fb_sync(%struct.fb_info* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %295

165:                                              ; preds = %160
  %166 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %167 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %171 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SM501_2D_SOURCE_BASE, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @smc501_writel(i32 %169, i64 %174)
  %176 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %177 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %181 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SM501_2D_DESTINATION_BASE, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @smc501_writel(i32 %179, i64 %184)
  %186 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 %189, 16
  %191 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %192 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %190, %194
  %196 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %197 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @SM501_2D_WINDOW_WIDTH, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @smc501_writel(i32 %195, i64 %200)
  %202 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %203 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = shl i32 %205, 16
  %207 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %208 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %206, %210
  %212 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %213 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @SM501_2D_PITCH, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @smc501_writel(i32 %211, i64 %216)
  %218 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %219 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  switch i32 %221, label %243 [
    i32 8, label %222
    i32 16, label %229
    i32 32, label %236
  ]

222:                                              ; preds = %165
  %223 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %224 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @SM501_2D_STRETCH, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @smc501_writel(i32 0, i64 %227)
  br label %243

229:                                              ; preds = %165
  %230 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %231 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @SM501_2D_STRETCH, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @smc501_writel(i32 1048576, i64 %234)
  br label %243

236:                                              ; preds = %165
  %237 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %238 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @SM501_2D_STRETCH, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @smc501_writel(i32 2097152, i64 %241)
  br label %243

243:                                              ; preds = %165, %236, %229, %222
  %244 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %245 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @SM501_2D_COLOR_COMPARE_MASK, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @smc501_writel(i32 -1, i64 %248)
  %250 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %251 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SM501_2D_MASK, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @smc501_writel(i32 -1, i64 %254)
  %256 = load i32, i32* %9, align 4
  %257 = shl i32 %256, 16
  %258 = load i32, i32* %10, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %261 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SM501_2D_SOURCE, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @smc501_writel(i32 %259, i64 %264)
  %266 = load i32, i32* %11, align 4
  %267 = shl i32 %266, 16
  %268 = load i32, i32* %12, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %271 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @SM501_2D_DESTINATION, align 8
  %274 = add nsw i64 %272, %273
  %275 = call i32 @smc501_writel(i32 %269, i64 %274)
  %276 = load i32, i32* %7, align 4
  %277 = shl i32 %276, 16
  %278 = load i32, i32* %8, align 4
  %279 = or i32 %277, %278
  %280 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %281 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @SM501_2D_DIMENSION, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @smc501_writel(i32 %279, i64 %284)
  %286 = load i64, i64* %13, align 8
  %287 = or i64 2147483852, %286
  %288 = trunc i64 %287 to i32
  %289 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %290 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @SM501_2D_CONTROL, align 8
  %293 = add nsw i64 %291, %292
  %294 = call i32 @smc501_writel(i32 %288, i64 %293)
  br label %295

295:                                              ; preds = %243, %164, %100, %51
  ret void
}

declare dso_local i64 @sm501fb_sync(%struct.fb_info*) #1

declare dso_local i32 @smc501_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
