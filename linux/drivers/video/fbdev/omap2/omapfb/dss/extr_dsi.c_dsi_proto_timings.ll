; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_proto_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_proto_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i64, %struct.TYPE_2__, i32, %struct.omap_video_timings }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.omap_video_timings = type { i32, i32 }

@DSI_DSIPHY_CFG0 = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG1 = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG2 = common dso_local global i32 0, align 4
@DSI_CLK_TIMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ddr_clk_pre %u, ddr_clk_post %u\0A\00", align 1
@DSI_VM_TIMING7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"enter_hs_mode_lat %u, exit_hs_mode_lat %u\0A\00", align 1
@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@OMAP_DSS_DSI_PULSE_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"HBP: %d, HFP: %d, HSA: %d, TL: %d TXBYTECLKHS\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"VBP: %d, VFP: %d, VSA: %d, VACT: %d lines\0A\00", align 1
@DSI_VM_TIMING1 = common dso_local global i32 0, align 4
@DSI_VM_TIMING2 = common dso_local global i32 0, align 4
@DSI_VM_TIMING3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dsi_proto_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_proto_timings(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.omap_video_timings*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %36 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %35)
  store %struct.dsi_data* %36, %struct.dsi_data** %3, align 8
  %37 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %38 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %20, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %42 = load i32, i32* @DSI_DSIPHY_CFG0, align 4
  %43 = call i32 @dsi_read_reg(%struct.platform_device* %41, i32 %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @FLD_GET(i32 %44, i32 31, i32 24)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %21, align 4
  %47 = call i32 @FLD_GET(i32 %46, i32 23, i32 16)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %21, align 4
  %52 = call i32 @FLD_GET(i32 %51, i32 15, i32 8)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %21, align 4
  %54 = call i32 @FLD_GET(i32 %53, i32 7, i32 0)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %56 = load i32, i32* @DSI_DSIPHY_CFG1, align 4
  %57 = call i32 @dsi_read_reg(%struct.platform_device* %55, i32 %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = call i32 @FLD_GET(i32 %58, i32 20, i32 16)
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @FLD_GET(i32 %61, i32 15, i32 8)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %21, align 4
  %64 = call i32 @FLD_GET(i32 %63, i32 7, i32 0)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %66 = load i32, i32* @DSI_DSIPHY_CFG2, align 4
  %67 = call i32 @dsi_read_reg(%struct.platform_device* %65, i32 %66)
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @FLD_GET(i32 %68, i32 7, i32 0)
  store i32 %69, i32* %6, align 4
  store i32 20, i32* %8, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %71 = call i32 @ns2ddr(%struct.platform_device* %70, i32 60)
  %72 = add nsw i32 %71, 26
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %20, align 4
  %74 = call i32 @DIV_ROUND_UP(i32 4, i32 %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %79, %80
  %82 = call i32 @DIV_ROUND_UP(i32 %81, i32 4)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %83, %84
  %86 = call i32 @DIV_ROUND_UP(i32 %85, i32 4)
  %87 = load i32, i32* %19, align 4
  %88 = add i32 %86, %87
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %1
  %92 = load i32, i32* %15, align 4
  %93 = icmp ugt i32 %92, 255
  br label %94

94:                                               ; preds = %91, %1
  %95 = phi i1 [ true, %1 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @BUG_ON(i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %16, align 4
  %102 = icmp ugt i32 %101, 255
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi i1 [ true, %94 ], [ %102, %100 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUG_ON(i32 %105)
  %107 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %108 = load i32, i32* @DSI_CLK_TIMING, align 4
  %109 = call i32 @dsi_read_reg(%struct.platform_device* %107, i32 %108)
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @FLD_MOD(i32 %110, i32 %111, i32 15, i32 8)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @FLD_MOD(i32 %113, i32 %114, i32 7, i32 0)
  store i32 %115, i32* %21, align 4
  %116 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %117 = load i32, i32* @DSI_CLK_TIMING, align 4
  %118 = load i32, i32* %21, align 4
  %119 = call i32 @dsi_write_reg(%struct.platform_device* %116, i32 %117, i32 %118)
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @DIV_ROUND_UP(i32 %123, i32 4)
  %125 = add nsw i32 1, %124
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @DIV_ROUND_UP(i32 %126, i32 4)
  %128 = add nsw i32 %125, %127
  %129 = load i32, i32* %12, align 4
  %130 = add i32 %129, 3
  %131 = call i32 @DIV_ROUND_UP(i32 %130, i32 4)
  %132 = add nsw i32 %128, %131
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add i32 %133, %134
  %136 = call i32 @DIV_ROUND_UP(i32 %135, i32 4)
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %19, align 4
  %139 = add i32 %137, %138
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @FLD_VAL(i32 %140, i32 31, i32 16)
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @FLD_VAL(i32 %142, i32 15, i32 0)
  %144 = or i32 %141, %143
  store i32 %144, i32* %21, align 4
  %145 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %146 = load i32, i32* @DSI_VM_TIMING7, align 4
  %147 = load i32, i32* %21, align 4
  %148 = call i32 @dsi_write_reg(%struct.platform_device* %145, i32 %146, i32 %147)
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %18, align 4
  %151 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %153 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %317

157:                                              ; preds = %103
  %158 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %159 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %22, align 4
  %162 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %163 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %23, align 4
  %166 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %167 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %24, align 4
  %170 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %171 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %25, align 4
  %174 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %175 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %26, align 4
  %178 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %179 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %27, align 4
  %182 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %183 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %28, align 4
  %186 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %187 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %186, i32 0, i32 4
  store %struct.omap_video_timings* %187, %struct.omap_video_timings** %30, align 8
  %188 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %189 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dsi_get_pixel_size(i32 %190)
  store i32 %191, i32* %31, align 4
  %192 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %193 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %29, align 4
  %199 = load i32, i32* %29, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %157
  %202 = load i32, i32* %22, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i32, i32* %20, align 4
  %206 = icmp eq i32 %205, 3
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %211

208:                                              ; preds = %204, %201
  %209 = load i32, i32* %20, align 4
  %210 = call i32 @DIV_ROUND_UP(i32 4, i32 %209)
  br label %211

211:                                              ; preds = %208, %207
  %212 = phi i32 [ 1, %207 ], [ %210, %208 ]
  br label %214

213:                                              ; preds = %157
  br label %214

214:                                              ; preds = %213, %211
  %215 = phi i32 [ %212, %211 ], [ 0, %213 ]
  store i32 %215, i32* %33, align 4
  %216 = load %struct.omap_video_timings*, %struct.omap_video_timings** %30, align 8
  %217 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %31, align 4
  %220 = mul nsw i32 %218, %219
  %221 = call i32 @DIV_ROUND_UP(i32 %220, i32 8)
  store i32 %221, i32* %34, align 4
  %222 = load i32, i32* %20, align 4
  %223 = call i32 @DIV_ROUND_UP(i32 4, i32 %222)
  %224 = load i32, i32* %29, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %214
  %227 = load i32, i32* %22, align 4
  br label %229

228:                                              ; preds = %214
  br label %229

229:                                              ; preds = %228, %226
  %230 = phi i32 [ %227, %226 ], [ 0, %228 ]
  %231 = add nsw i32 %223, %230
  %232 = load i32, i32* %33, align 4
  %233 = add nsw i32 %231, %232
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* %34, align 4
  %237 = add nsw i32 %236, 6
  %238 = load i32, i32* %20, align 4
  %239 = call i32 @DIV_ROUND_UP(i32 %237, i32 %238)
  %240 = add nsw i32 %235, %239
  %241 = load i32, i32* %24, align 4
  %242 = add nsw i32 %240, %241
  store i32 %242, i32* %32, align 4
  %243 = load i32, i32* %24, align 4
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* %29, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %229
  %248 = load i32, i32* %22, align 4
  br label %250

249:                                              ; preds = %229
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %248, %247 ], [ 0, %249 ]
  %252 = load i32, i32* %32, align 4
  %253 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %243, i32 %244, i32 %251, i32 %252)
  %254 = load i32, i32* %27, align 4
  %255 = load i32, i32* %26, align 4
  %256 = load i32, i32* %25, align 4
  %257 = load %struct.omap_video_timings*, %struct.omap_video_timings** %30, align 8
  %258 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %254, i32 %255, i32 %256, i32 %259)
  %261 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %262 = load i32, i32* @DSI_VM_TIMING1, align 4
  %263 = call i32 @dsi_read_reg(%struct.platform_device* %261, i32 %262)
  store i32 %263, i32* %21, align 4
  %264 = load i32, i32* %21, align 4
  %265 = load i32, i32* %24, align 4
  %266 = call i32 @FLD_MOD(i32 %264, i32 %265, i32 11, i32 0)
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = load i32, i32* %23, align 4
  %269 = call i32 @FLD_MOD(i32 %267, i32 %268, i32 23, i32 12)
  store i32 %269, i32* %21, align 4
  %270 = load i32, i32* %21, align 4
  %271 = load i32, i32* %29, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %250
  %274 = load i32, i32* %22, align 4
  br label %276

275:                                              ; preds = %250
  br label %276

276:                                              ; preds = %275, %273
  %277 = phi i32 [ %274, %273 ], [ 0, %275 ]
  %278 = call i32 @FLD_MOD(i32 %270, i32 %277, i32 31, i32 24)
  store i32 %278, i32* %21, align 4
  %279 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %280 = load i32, i32* @DSI_VM_TIMING1, align 4
  %281 = load i32, i32* %21, align 4
  %282 = call i32 @dsi_write_reg(%struct.platform_device* %279, i32 %280, i32 %281)
  %283 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %284 = load i32, i32* @DSI_VM_TIMING2, align 4
  %285 = call i32 @dsi_read_reg(%struct.platform_device* %283, i32 %284)
  store i32 %285, i32* %21, align 4
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* %27, align 4
  %288 = call i32 @FLD_MOD(i32 %286, i32 %287, i32 7, i32 0)
  store i32 %288, i32* %21, align 4
  %289 = load i32, i32* %21, align 4
  %290 = load i32, i32* %26, align 4
  %291 = call i32 @FLD_MOD(i32 %289, i32 %290, i32 15, i32 8)
  store i32 %291, i32* %21, align 4
  %292 = load i32, i32* %21, align 4
  %293 = load i32, i32* %25, align 4
  %294 = call i32 @FLD_MOD(i32 %292, i32 %293, i32 23, i32 16)
  store i32 %294, i32* %21, align 4
  %295 = load i32, i32* %21, align 4
  %296 = load i32, i32* %28, align 4
  %297 = call i32 @FLD_MOD(i32 %295, i32 %296, i32 27, i32 24)
  store i32 %297, i32* %21, align 4
  %298 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %299 = load i32, i32* @DSI_VM_TIMING2, align 4
  %300 = load i32, i32* %21, align 4
  %301 = call i32 @dsi_write_reg(%struct.platform_device* %298, i32 %299, i32 %300)
  %302 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %303 = load i32, i32* @DSI_VM_TIMING3, align 4
  %304 = call i32 @dsi_read_reg(%struct.platform_device* %302, i32 %303)
  store i32 %304, i32* %21, align 4
  %305 = load i32, i32* %21, align 4
  %306 = load %struct.omap_video_timings*, %struct.omap_video_timings** %30, align 8
  %307 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @FLD_MOD(i32 %305, i32 %308, i32 14, i32 0)
  store i32 %309, i32* %21, align 4
  %310 = load i32, i32* %21, align 4
  %311 = load i32, i32* %32, align 4
  %312 = call i32 @FLD_MOD(i32 %310, i32 %311, i32 31, i32 16)
  store i32 %312, i32* %21, align 4
  %313 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %314 = load i32, i32* @DSI_VM_TIMING3, align 4
  %315 = load i32, i32* %21, align 4
  %316 = call i32 @dsi_write_reg(%struct.platform_device* %313, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %276, %103
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @ns2ddr(%struct.platform_device*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, ...) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
