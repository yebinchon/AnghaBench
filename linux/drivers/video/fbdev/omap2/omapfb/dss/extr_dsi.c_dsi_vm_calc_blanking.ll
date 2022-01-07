; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc_blanking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc_blanking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_clk_calc_ctx = type { i64, i64, i64, %struct.omap_video_timings, %struct.omap_dss_dsi_videomode_timings, %struct.TYPE_4__, %struct.TYPE_3__, %struct.omap_dss_dsi_config*, i32 }
%struct.omap_video_timings = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.omap_dss_dsi_videomode_timings = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.omap_dss_dsi_config = type { i64, i32, %struct.omap_video_timings*, i32 }
%struct.dsi_data = type { i32, i32 }

@OMAP_DSS_DSI_BURST_MODE = common dso_local global i64 0, align 8
@OMAP_DSS_DSI_PULSE_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_clk_calc_ctx*)* @dsi_vm_calc_blanking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vm_calc_blanking(%struct.dsi_clk_calc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.omap_video_timings*, align 8
  %28 = alloca %struct.omap_video_timings*, align 8
  %29 = alloca %struct.omap_dss_dsi_videomode_timings*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.dsi_clk_calc_ctx* %0, %struct.dsi_clk_calc_ctx** %3, align 8
  %34 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.dsi_data* @dsi_get_dsidrv_data(i32 %36)
  store %struct.dsi_data* %37, %struct.dsi_data** %4, align 8
  %38 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %38, i32 0, i32 7
  %40 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %39, align 8
  store %struct.omap_dss_dsi_config* %40, %struct.omap_dss_dsi_config** %5, align 8
  %41 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %42 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dsi_get_pixel_size(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %46 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = udiv i64 %55, 4
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %58, %59
  %61 = mul nsw i32 %60, 8
  store i32 %61, i32* %30, align 4
  %62 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %63 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %62, i32 0, i32 2
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %63, align 8
  store %struct.omap_video_timings* %64, %struct.omap_video_timings** %27, align 8
  %65 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  %68 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %13, align 8
  %71 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  %74 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %31, align 4
  %82 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %83 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %14, align 4
  %85 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %86 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %89 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %87, %90
  %92 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %93 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %99, %100
  %102 = call i32 @DIV_ROUND_UP(i32 %101, i32 8)
  %103 = add nsw i32 %102, 6
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @DIV_ROUND_UP(i32 %103, i32 %104)
  store i32 %105, i32* %20, align 4
  %106 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %107 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sdiv i32 %111, 8
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %1
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* %30, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %468

119:                                              ; preds = %114
  br label %126

120:                                              ; preds = %1
  %121 = load i32, i32* %31, align 4
  %122 = load i32, i32* %30, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %468

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %119
  %127 = load i32, i32* %30, align 4
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %11, align 8
  %132 = mul i64 %130, %131
  %133 = icmp ult i64 %128, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %468

135:                                              ; preds = %126
  %136 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %137 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @OMAP_DSS_DSI_BURST_MODE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %135
  %142 = load i32, i32* %30, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %13, align 8
  %147 = mul i64 %145, %146
  %148 = icmp ugt i64 %143, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %468

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @DIV_ROUND_UP(i32 4, i32 %152)
  store i32 %153, i32* %22, align 4
  %154 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %155 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %151
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %164 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 1, i32* %23, align 4
  br label %171

168:                                              ; preds = %162, %159
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @DIV_ROUND_UP(i32 4, i32 %169)
  store i32 %170, i32* %23, align 4
  br label %171

171:                                              ; preds = %168, %167
  br label %173

172:                                              ; preds = %151
  store i32 0, i32* %23, align 4
  br label %173

173:                                              ; preds = %172, %171
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %9, align 8
  %177 = mul i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = load i64, i64* %12, align 8
  %180 = call i32 @div64_u64(i32 %178, i64 %179)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %22, align 4
  %183 = load i32, i32* %23, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %184, %185
  %187 = icmp slt i32 %181, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %468

189:                                              ; preds = %173
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %20, align 4
  %192 = sub nsw i32 %190, %191
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %10, align 8
  %196 = mul i64 %194, %195
  %197 = trunc i64 %196 to i32
  %198 = load i64, i64* %9, align 8
  %199 = call i32 @div64_u64(i32 %197, i64 %198)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %19, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %10, align 8
  %203 = mul i64 %201, %202
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %9, align 8
  %207 = mul i64 %205, %206
  %208 = icmp ne i64 %203, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %189
  store i32 0, i32* %2, align 4
  br label %468

210:                                              ; preds = %189
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %18, align 4
  %214 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %215 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %214, i32 0, i32 4
  store %struct.omap_dss_dsi_videomode_timings* %215, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %216 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %217 = call i32 @memset(%struct.omap_dss_dsi_videomode_timings* %216, i32 0, i32 96)
  %218 = load i64, i64* %8, align 8
  %219 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %220 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %223 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %226 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %228 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %210
  store i32 0, i32* %25, align 4
  br label %257

233:                                              ; preds = %210
  %234 = load i32, i32* %7, align 4
  %235 = icmp eq i32 %234, 3
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %238 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  store i32 0, i32* %25, align 4
  br label %256

242:                                              ; preds = %236, %233
  %243 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %244 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %9, align 8
  %248 = mul i64 %246, %247
  %249 = trunc i64 %248 to i32
  %250 = load i64, i64* %12, align 8
  %251 = call i32 @div64_u64(i32 %249, i64 %250)
  store i32 %251, i32* %25, align 4
  %252 = load i32, i32* %25, align 4
  %253 = load i32, i32* %23, align 4
  %254 = sub nsw i32 %252, %253
  %255 = call i32 @max(i32 %254, i32 1)
  store i32 %255, i32* %25, align 4
  br label %256

256:                                              ; preds = %242, %241
  br label %257

257:                                              ; preds = %256, %232
  %258 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %259 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %9, align 8
  %263 = mul i64 %261, %262
  %264 = trunc i64 %263 to i32
  %265 = load i64, i64* %12, align 8
  %266 = call i32 @div64_u64(i32 %264, i64 %265)
  store i32 %266, i32* %26, align 4
  %267 = load i32, i32* %26, align 4
  %268 = call i32 @max(i32 %267, i32 1)
  store i32 %268, i32* %26, align 4
  %269 = load i32, i32* %21, align 4
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* %25, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32, i32* %23, align 4
  %274 = add nsw i32 %272, %273
  %275 = load i32, i32* %26, align 4
  %276 = add nsw i32 %274, %275
  %277 = sub nsw i32 %269, %276
  store i32 %277, i32* %24, align 4
  %278 = load i32, i32* %24, align 4
  %279 = icmp slt i32 %278, 1
  br i1 %279, label %280, label %318

280:                                              ; preds = %257
  %281 = load i32, i32* %24, align 4
  %282 = sub nsw i32 1, %281
  store i32 %282, i32* %32, align 4
  %283 = load i32, i32* %26, align 4
  %284 = load i32, i32* %32, align 4
  %285 = sub nsw i32 %283, %284
  %286 = call i32 @max(i32 %285, i32 1)
  store i32 %286, i32* %26, align 4
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %22, align 4
  %289 = load i32, i32* %25, align 4
  %290 = add nsw i32 %288, %289
  %291 = load i32, i32* %23, align 4
  %292 = add nsw i32 %290, %291
  %293 = load i32, i32* %26, align 4
  %294 = add nsw i32 %292, %293
  %295 = sub nsw i32 %287, %294
  store i32 %295, i32* %24, align 4
  %296 = load i32, i32* %24, align 4
  %297 = icmp slt i32 %296, 1
  br i1 %297, label %298, label %317

298:                                              ; preds = %280
  %299 = load i32, i32* %25, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %298
  %302 = load i32, i32* %24, align 4
  %303 = sub nsw i32 1, %302
  store i32 %303, i32* %32, align 4
  %304 = load i32, i32* %25, align 4
  %305 = load i32, i32* %32, align 4
  %306 = sub nsw i32 %304, %305
  %307 = call i32 @max(i32 %306, i32 1)
  store i32 %307, i32* %25, align 4
  %308 = load i32, i32* %21, align 4
  %309 = load i32, i32* %22, align 4
  %310 = load i32, i32* %25, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %23, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* %26, align 4
  %315 = add nsw i32 %313, %314
  %316 = sub nsw i32 %308, %315
  store i32 %316, i32* %24, align 4
  br label %317

317:                                              ; preds = %301, %298, %280
  br label %318

318:                                              ; preds = %317, %257
  %319 = load i32, i32* %24, align 4
  %320 = icmp slt i32 %319, 1
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  store i32 0, i32* %2, align 4
  br label %468

322:                                              ; preds = %318
  %323 = load i32, i32* %22, align 4
  %324 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %325 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %324, i32 0, i32 3
  store i32 %323, i32* %325, align 8
  %326 = load i32, i32* %25, align 4
  %327 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %328 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %327, i32 0, i32 4
  store i32 %326, i32* %328, align 4
  %329 = load i32, i32* %23, align 4
  %330 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %331 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %330, i32 0, i32 5
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* %26, align 4
  %333 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %334 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %333, i32 0, i32 6
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* %14, align 4
  %336 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %337 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %336, i32 0, i32 7
  store i32 %335, i32* %337, align 8
  %338 = load i32, i32* %24, align 4
  %339 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %340 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %339, i32 0, i32 8
  store i32 %338, i32* %340, align 4
  %341 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %342 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %341, i32 0, i32 8
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %345 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %344, i32 0, i32 19
  store i32 %343, i32* %345, align 4
  %346 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %347 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %350 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %349, i32 0, i32 18
  store i32 %348, i32* %350, align 8
  %351 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %352 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %351, i32 0, i32 6
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %355 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %354, i32 0, i32 17
  store i32 %353, i32* %355, align 4
  %356 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %357 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %360 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %359, i32 0, i32 16
  store i32 %358, i32* %360, align 8
  %361 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %362 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %365 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %364, i32 0, i32 9
  store i64 %363, i64* %365, align 8
  %366 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %367 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %366, i32 0, i32 15
  store i64 0, i64* %367, align 8
  %368 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %369 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %368, i32 0, i32 10
  store i32 1, i32* %369, align 8
  %370 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %371 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %370, i32 0, i32 11
  store i32 1, i32* %371, align 4
  %372 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %373 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %372, i32 0, i32 12
  store i32 1, i32* %373, align 8
  %374 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %375 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %378 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %377, i32 0, i32 14
  store i32 %376, i32* %378, align 8
  %379 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %380 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %379, i32 0, i32 13
  store i32 4, i32* %380, align 4
  %381 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %382 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %381, i32 0, i32 3
  store %struct.omap_video_timings* %382, %struct.omap_video_timings** %28, align 8
  %383 = load %struct.omap_video_timings*, %struct.omap_video_timings** %28, align 8
  %384 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %385 = bitcast %struct.omap_video_timings* %383 to i8*
  %386 = bitcast %struct.omap_video_timings* %384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %385, i8* align 8 %386, i64 40, i1 false)
  %387 = load i64, i64* %10, align 8
  %388 = load %struct.omap_video_timings*, %struct.omap_video_timings** %28, align 8
  %389 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %388, i32 0, i32 4
  store i64 %387, i64* %389, align 8
  %390 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %391 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %407

395:                                              ; preds = %322
  %396 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %397 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = load i64, i64* %10, align 8
  %401 = mul i64 %399, %400
  %402 = trunc i64 %401 to i32
  %403 = load i64, i64* %12, align 8
  %404 = call i32 @div64_u64(i32 %402, i64 %403)
  store i32 %404, i32* %25, align 4
  %405 = load i32, i32* %25, align 4
  %406 = call i32 @max(i32 %405, i32 1)
  store i32 %406, i32* %25, align 4
  br label %408

407:                                              ; preds = %322
  store i32 1, i32* %25, align 4
  br label %408

408:                                              ; preds = %407, %395
  %409 = load %struct.omap_video_timings*, %struct.omap_video_timings** %27, align 8
  %410 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = sext i32 %411 to i64
  %413 = load i64, i64* %10, align 8
  %414 = mul i64 %412, %413
  %415 = trunc i64 %414 to i32
  %416 = load i64, i64* %12, align 8
  %417 = call i32 @div64_u64(i32 %415, i64 %416)
  store i32 %417, i32* %26, align 4
  %418 = load i32, i32* %26, align 4
  %419 = call i32 @max(i32 %418, i32 1)
  store i32 %419, i32* %26, align 4
  %420 = load i32, i32* %18, align 4
  %421 = load i32, i32* %25, align 4
  %422 = sub nsw i32 %420, %421
  %423 = load i32, i32* %26, align 4
  %424 = sub nsw i32 %422, %423
  store i32 %424, i32* %24, align 4
  %425 = load i32, i32* %24, align 4
  %426 = icmp slt i32 %425, 1
  br i1 %426, label %427, label %454

427:                                              ; preds = %408
  %428 = load i32, i32* %24, align 4
  %429 = sub nsw i32 1, %428
  store i32 %429, i32* %33, align 4
  %430 = load i32, i32* %26, align 4
  %431 = load i32, i32* %33, align 4
  %432 = sub nsw i32 %430, %431
  %433 = call i32 @max(i32 %432, i32 1)
  store i32 %433, i32* %26, align 4
  %434 = load i32, i32* %18, align 4
  %435 = load i32, i32* %25, align 4
  %436 = sub nsw i32 %434, %435
  %437 = load i32, i32* %26, align 4
  %438 = sub nsw i32 %436, %437
  store i32 %438, i32* %24, align 4
  %439 = load i32, i32* %24, align 4
  %440 = icmp slt i32 %439, 1
  br i1 %440, label %441, label %453

441:                                              ; preds = %427
  %442 = load i32, i32* %24, align 4
  %443 = sub nsw i32 1, %442
  store i32 %443, i32* %33, align 4
  %444 = load i32, i32* %25, align 4
  %445 = load i32, i32* %33, align 4
  %446 = sub nsw i32 %444, %445
  %447 = call i32 @max(i32 %446, i32 1)
  store i32 %447, i32* %25, align 4
  %448 = load i32, i32* %18, align 4
  %449 = load i32, i32* %25, align 4
  %450 = sub nsw i32 %448, %449
  %451 = load i32, i32* %26, align 4
  %452 = sub nsw i32 %450, %451
  store i32 %452, i32* %24, align 4
  br label %453

453:                                              ; preds = %441, %427
  br label %454

454:                                              ; preds = %453, %408
  %455 = load i32, i32* %24, align 4
  %456 = icmp slt i32 %455, 1
  br i1 %456, label %457, label %458

457:                                              ; preds = %454
  store i32 0, i32* %2, align 4
  br label %468

458:                                              ; preds = %454
  %459 = load i32, i32* %24, align 4
  %460 = load %struct.omap_video_timings*, %struct.omap_video_timings** %28, align 8
  %461 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %460, i32 0, i32 1
  store i32 %459, i32* %461, align 4
  %462 = load i32, i32* %25, align 4
  %463 = load %struct.omap_video_timings*, %struct.omap_video_timings** %28, align 8
  %464 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %463, i32 0, i32 3
  store i32 %462, i32* %464, align 4
  %465 = load i32, i32* %26, align 4
  %466 = load %struct.omap_video_timings*, %struct.omap_video_timings** %28, align 8
  %467 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %466, i32 0, i32 2
  store i32 %465, i32* %467, align 8
  store i32 1, i32* %2, align 4
  br label %468

468:                                              ; preds = %458, %457, %321, %209, %188, %149, %134, %124, %118
  %469 = load i32, i32* %2, align 4
  ret i32 %469
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @div64_u64(i32, i64) #1

declare dso_local i32 @memset(%struct.omap_dss_dsi_videomode_timings*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
