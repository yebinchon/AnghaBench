; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, %struct.pm2fb_par* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pm2fb_par = type { i32, i32, i64 }

@PM2F_RD_COLOR_MODE_RGB = common dso_local global i32 0, align 4
@PM2F_RD_GUI_ACTIVE = common dso_local global i32 0, align 4
@PM2_MAX_PIXCLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pixclock too high (%uKHz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PM2F_DATA_64_ENABLE = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@lowhsync = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ignoring +hsync, using -hsync.\0A\00", align 1
@PM2F_HSYNC_ACT_LOW = common dso_local global i32 0, align 4
@PM2F_HSYNC_ACT_HIGH = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@lowvsync = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"ignoring +vsync, using -vsync.\0A\00", align 1
@PM2F_VSYNC_ACT_LOW = common dso_local global i32 0, align 4
@PM2F_VSYNC_ACT_HIGH = common dso_local global i32 0, align 4
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"interlaced not supported\0A\00", align 1
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@PM2F_LINE_DOUBLE = common dso_local global i32 0, align 4
@FB_ACTIVATE_MASK = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@PM2F_VIDEO_ENABLE = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@PM2VR_RD_INDEX_HIGH = common dso_local global i32 0, align 4
@PM2R_FB_READ_PIXEL = common dso_local global i32 0, align 4
@PM2F_RD_TRUECOLOR = common dso_local global i32 0, align 4
@PM2F_RD_PIXELFORMAT_RGB565 = common dso_local global i32 0, align 4
@PM2F_TEXTEL_SIZE_16 = common dso_local global i32 0, align 4
@PM2F_RD_PIXELFORMAT_RGBA8888 = common dso_local global i32 0, align 4
@PM2F_TEXTEL_SIZE_32 = common dso_local global i32 0, align 4
@PM2F_RD_PIXELFORMAT_RGB888 = common dso_local global i32 0, align 4
@PM2F_TEXTEL_SIZE_24 = common dso_local global i32 0, align 4
@PM2R_FB_WRITE_MODE = common dso_local global i32 0, align 4
@PM2F_FB_WRITE_ENABLE = common dso_local global i32 0, align 4
@PM2R_FB_READ_MODE = common dso_local global i32 0, align 4
@PM2R_LB_READ_MODE = common dso_local global i32 0, align 4
@PM2R_TEXTURE_MAP_FORMAT = common dso_local global i32 0, align 4
@PM2R_H_TOTAL = common dso_local global i32 0, align 4
@PM2R_HS_START = common dso_local global i32 0, align 4
@PM2R_HS_END = common dso_local global i32 0, align 4
@PM2R_HG_END = common dso_local global i32 0, align 4
@PM2R_HB_END = common dso_local global i32 0, align 4
@PM2R_V_TOTAL = common dso_local global i32 0, align 4
@PM2R_VS_START = common dso_local global i32 0, align 4
@PM2R_VS_END = common dso_local global i32 0, align 4
@PM2R_VB_END = common dso_local global i32 0, align 4
@PM2R_SCREEN_STRIDE = common dso_local global i32 0, align 4
@PM2R_WINDOW_ORIGIN = common dso_local global i32 0, align 4
@PM2R_SCREEN_SIZE = common dso_local global i32 0, align 4
@PM2R_SCISSOR_MODE = common dso_local global i32 0, align 4
@PM2F_SCREEN_SCISSOR_ENABLE = common dso_local global i32 0, align 4
@PM2R_SCREEN_BASE = common dso_local global i32 0, align 4
@PM2I_RD_COLOR_MODE = common dso_local global i32 0, align 4
@PM2I_RD_COLOR_KEY_CONTROL = common dso_local global i32 0, align 4
@PM2F_COLOR_KEY_TEST_OFF = common dso_local global i32 0, align 4
@PM2VI_RD_DAC_CONTROL = common dso_local global i32 0, align 4
@PM2VI_RD_PIXEL_SIZE = common dso_local global i32 0, align 4
@PM2VI_RD_COLOR_FORMAT = common dso_local global i32 0, align 4
@PM2VI_RD_MISC_CONTROL = common dso_local global i32 0, align 4
@PM2VI_RD_OVERLAY_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Setting graphics mode at %dx%d depth %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pm2fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.pm2fb_par*, align 8
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
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 3
  %29 = load %struct.pm2fb_par*, %struct.pm2fb_par** %28, align 8
  store %struct.pm2fb_par* %29, %struct.pm2fb_par** %4, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 7
  %35 = and i32 %34, -8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 7
  %45 = and i32 %44, -8
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %19, align 4
  %46 = load i32, i32* @PM2F_RD_COLOR_MODE_RGB, align 4
  %47 = load i32, i32* @PM2F_RD_GUI_ACTIVE, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 31
  %54 = and i32 %53, -32
  store i32 %54, i32* %25, align 4
  %55 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %56 = call i32 @reset_card(%struct.pm2fb_par* %55)
  %57 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %58 = call i32 @reset_config(%struct.pm2fb_par* %57)
  %59 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %60 = call i32 @clear_palette(%struct.pm2fb_par* %59)
  %61 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %62 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %1
  %66 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %67 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %68 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @set_memclock(%struct.pm2fb_par* %66, i64 %69)
  br label %71

71:                                               ; preds = %65, %1
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 32
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 32, %74 ], [ %76, %75 ]
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp sgt i32 %79, 8
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %83 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 128
  br label %86

86:                                               ; preds = %81, %77
  %87 = phi i1 [ true, %77 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %26, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 16
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PICOS2KHZ(i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @PM2_MAX_PIXCLOCK, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %519

102:                                              ; preds = %86
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %26, align 4
  %109 = call i32 @to3264(i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %26, align 4
  %117 = call i32 @to3264(i32 %114, i32 %115, i32 %116)
  %118 = add nsw i32 %110, %117
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %26, align 4
  %126 = call i32 @to3264(i32 %123, i32 %124, i32 %125)
  %127 = add nsw i32 %119, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %25, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %26, align 4
  %131 = call i32 @to3264(i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %131, %132
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %136 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %102
  %141 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  br label %147

146:                                              ; preds = %102
  br label %147

147:                                              ; preds = %146, %140
  %148 = phi i32 [ %145, %140 ], [ 0, %146 ]
  store i32 %148, i32* %13, align 4
  %149 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %154 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %152, %156
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  %159 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %162, %166
  %168 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %169 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %167, %171
  store i32 %172, i32* %15, align 4
  %173 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @to3264(i32 %180, i32 %181, i32 1)
  store i32 %182, i32* %17, align 4
  %183 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 11
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %25, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %190 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %188, %192
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @to3264(i32 %193, i32 %194, i32 1)
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %26, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %147
  %199 = load i32, i32* @PM2F_DATA_64_ENABLE, align 4
  %200 = load i32, i32* %19, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %198, %147
  %203 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %204 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 13
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %202
  %211 = load i64, i64* @lowhsync, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i32, i32* @PM2F_HSYNC_ACT_LOW, align 4
  %216 = load i32, i32* %19, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %19, align 4
  br label %222

218:                                              ; preds = %210
  %219 = load i32, i32* @PM2F_HSYNC_ACT_HIGH, align 4
  %220 = load i32, i32* %19, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %19, align 4
  br label %222

222:                                              ; preds = %218, %213
  br label %227

223:                                              ; preds = %202
  %224 = load i32, i32* @PM2F_HSYNC_ACT_LOW, align 4
  %225 = load i32, i32* %19, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %19, align 4
  br label %227

227:                                              ; preds = %223, %222
  %228 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %229 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 13
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %227
  %236 = load i64, i64* @lowvsync, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %240 = load i32, i32* @PM2F_VSYNC_ACT_LOW, align 4
  %241 = load i32, i32* %19, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %19, align 4
  br label %247

243:                                              ; preds = %235
  %244 = load i32, i32* @PM2F_VSYNC_ACT_HIGH, align 4
  %245 = load i32, i32* %19, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %19, align 4
  br label %247

247:                                              ; preds = %243, %238
  br label %252

248:                                              ; preds = %227
  %249 = load i32, i32* @PM2F_VSYNC_ACT_LOW, align 4
  %250 = load i32, i32* %19, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %19, align 4
  br label %252

252:                                              ; preds = %248, %247
  %253 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %254 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 14
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @FB_VMODE_MASK, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %252
  %262 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %263 = load i32, i32* @EINVAL, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %2, align 4
  br label %519

265:                                              ; preds = %252
  %266 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %267 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 14
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @FB_VMODE_MASK, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %265
  %275 = load i32, i32* @PM2F_LINE_DOUBLE, align 4
  %276 = load i32, i32* %19, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %19, align 4
  br label %278

278:                                              ; preds = %274, %265
  %279 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %280 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 15
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @FB_ACTIVATE_MASK, align 4
  %284 = and i32 %282, %283
  %285 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %278
  %288 = load i32, i32* @PM2F_VIDEO_ENABLE, align 4
  %289 = load i32, i32* %19, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %19, align 4
  br label %291

291:                                              ; preds = %287, %278
  %292 = load i32, i32* %19, align 4
  %293 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %294 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* %8, align 4
  %296 = icmp eq i32 %295, 8
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  %298 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %301

299:                                              ; preds = %291
  %300 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %301

301:                                              ; preds = %299, %297
  %302 = phi i32 [ %298, %297 ], [ %300, %299 ]
  %303 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %304 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 1
  store i32 %302, i32* %305, align 4
  %306 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %307 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %8, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sdiv i32 %311, 8
  %313 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %314 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  store i32 %312, i32* %315, align 8
  %316 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %317 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  store i32 256, i32* %318, align 4
  %319 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %320 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 128
  br i1 %322, label %323, label %329

323:                                              ; preds = %301
  %324 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %325 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %324, i32 1)
  %326 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %327 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %328 = call i32 @pm2_WR(%struct.pm2fb_par* %326, i32 %327, i32 0)
  br label %329

329:                                              ; preds = %323, %301
  %330 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %331 = load i32, i32* %8, align 4
  %332 = call i32 @set_aperture(%struct.pm2fb_par* %330, i32 %331)
  %333 = call i32 (...) @mb()
  %334 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %335 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %334, i32 19)
  %336 = load i32, i32* %8, align 4
  switch i32 %336, label %377 [
    i32 8, label %337
    i32 16, label %341
    i32 32, label %353
    i32 24, label %365
  ]

337:                                              ; preds = %329
  %338 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %339 = load i32, i32* @PM2R_FB_READ_PIXEL, align 4
  %340 = call i32 @pm2_WR(%struct.pm2fb_par* %338, i32 %339, i32 0)
  store i32 46, i32* %23, align 4
  br label %377

341:                                              ; preds = %329
  %342 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %343 = load i32, i32* @PM2R_FB_READ_PIXEL, align 4
  %344 = call i32 @pm2_WR(%struct.pm2fb_par* %342, i32 %343, i32 1)
  %345 = load i32, i32* @PM2F_RD_TRUECOLOR, align 4
  %346 = load i32, i32* @PM2F_RD_PIXELFORMAT_RGB565, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* %20, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %20, align 4
  %350 = load i32, i32* @PM2F_TEXTEL_SIZE_16, align 4
  store i32 %350, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 112, i32* %23, align 4
  %351 = load i32, i32* %24, align 4
  %352 = or i32 %351, 8
  store i32 %352, i32* %24, align 4
  br label %377

353:                                              ; preds = %329
  %354 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %355 = load i32, i32* @PM2R_FB_READ_PIXEL, align 4
  %356 = call i32 @pm2_WR(%struct.pm2fb_par* %354, i32 %355, i32 2)
  %357 = load i32, i32* @PM2F_RD_TRUECOLOR, align 4
  %358 = load i32, i32* @PM2F_RD_PIXELFORMAT_RGBA8888, align 4
  %359 = or i32 %357, %358
  %360 = load i32, i32* %20, align 4
  %361 = or i32 %360, %359
  store i32 %361, i32* %20, align 4
  %362 = load i32, i32* @PM2F_TEXTEL_SIZE_32, align 4
  store i32 %362, i32* %21, align 4
  store i32 2, i32* %22, align 4
  store i32 32, i32* %23, align 4
  %363 = load i32, i32* %24, align 4
  %364 = or i32 %363, 8
  store i32 %364, i32* %24, align 4
  br label %377

365:                                              ; preds = %329
  %366 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %367 = load i32, i32* @PM2R_FB_READ_PIXEL, align 4
  %368 = call i32 @pm2_WR(%struct.pm2fb_par* %366, i32 %367, i32 4)
  %369 = load i32, i32* @PM2F_RD_TRUECOLOR, align 4
  %370 = load i32, i32* @PM2F_RD_PIXELFORMAT_RGB888, align 4
  %371 = or i32 %369, %370
  %372 = load i32, i32* %20, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %20, align 4
  %374 = load i32, i32* @PM2F_TEXTEL_SIZE_24, align 4
  store i32 %374, i32* %21, align 4
  store i32 4, i32* %22, align 4
  store i32 32, i32* %23, align 4
  %375 = load i32, i32* %24, align 4
  %376 = or i32 %375, 8
  store i32 %376, i32* %24, align 4
  br label %377

377:                                              ; preds = %329, %365, %353, %341, %337
  %378 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %379 = load i32, i32* @PM2R_FB_WRITE_MODE, align 4
  %380 = load i32, i32* @PM2F_FB_WRITE_ENABLE, align 4
  %381 = call i32 @pm2_WR(%struct.pm2fb_par* %378, i32 %379, i32 %380)
  %382 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %383 = load i32, i32* @PM2R_FB_READ_MODE, align 4
  %384 = load i32, i32* %25, align 4
  %385 = call i32 @partprod(i32 %384)
  %386 = call i32 @pm2_WR(%struct.pm2fb_par* %382, i32 %383, i32 %385)
  %387 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %388 = load i32, i32* @PM2R_LB_READ_MODE, align 4
  %389 = load i32, i32* %25, align 4
  %390 = call i32 @partprod(i32 %389)
  %391 = call i32 @pm2_WR(%struct.pm2fb_par* %387, i32 %388, i32 %390)
  %392 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %393 = load i32, i32* @PM2R_TEXTURE_MAP_FORMAT, align 4
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* %25, align 4
  %396 = call i32 @partprod(i32 %395)
  %397 = or i32 %394, %396
  %398 = call i32 @pm2_WR(%struct.pm2fb_par* %392, i32 %393, i32 %397)
  %399 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %400 = load i32, i32* @PM2R_H_TOTAL, align 4
  %401 = load i32, i32* %12, align 4
  %402 = call i32 @pm2_WR(%struct.pm2fb_par* %399, i32 %400, i32 %401)
  %403 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %404 = load i32, i32* @PM2R_HS_START, align 4
  %405 = load i32, i32* %9, align 4
  %406 = call i32 @pm2_WR(%struct.pm2fb_par* %403, i32 %404, i32 %405)
  %407 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %408 = load i32, i32* @PM2R_HS_END, align 4
  %409 = load i32, i32* %10, align 4
  %410 = call i32 @pm2_WR(%struct.pm2fb_par* %407, i32 %408, i32 %409)
  %411 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %412 = load i32, i32* @PM2R_HG_END, align 4
  %413 = load i32, i32* %11, align 4
  %414 = call i32 @pm2_WR(%struct.pm2fb_par* %411, i32 %412, i32 %413)
  %415 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %416 = load i32, i32* @PM2R_HB_END, align 4
  %417 = load i32, i32* %11, align 4
  %418 = call i32 @pm2_WR(%struct.pm2fb_par* %415, i32 %416, i32 %417)
  %419 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %420 = load i32, i32* @PM2R_V_TOTAL, align 4
  %421 = load i32, i32* %16, align 4
  %422 = call i32 @pm2_WR(%struct.pm2fb_par* %419, i32 %420, i32 %421)
  %423 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %424 = load i32, i32* @PM2R_VS_START, align 4
  %425 = load i32, i32* %13, align 4
  %426 = call i32 @pm2_WR(%struct.pm2fb_par* %423, i32 %424, i32 %425)
  %427 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %428 = load i32, i32* @PM2R_VS_END, align 4
  %429 = load i32, i32* %14, align 4
  %430 = call i32 @pm2_WR(%struct.pm2fb_par* %427, i32 %428, i32 %429)
  %431 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %432 = load i32, i32* @PM2R_VB_END, align 4
  %433 = load i32, i32* %15, align 4
  %434 = call i32 @pm2_WR(%struct.pm2fb_par* %431, i32 %432, i32 %433)
  %435 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %436 = load i32, i32* @PM2R_SCREEN_STRIDE, align 4
  %437 = load i32, i32* %17, align 4
  %438 = call i32 @pm2_WR(%struct.pm2fb_par* %435, i32 %436, i32 %437)
  %439 = call i32 (...) @wmb()
  %440 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %441 = load i32, i32* @PM2R_WINDOW_ORIGIN, align 4
  %442 = call i32 @pm2_WR(%struct.pm2fb_par* %440, i32 %441, i32 0)
  %443 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %444 = load i32, i32* @PM2R_SCREEN_SIZE, align 4
  %445 = load i32, i32* %7, align 4
  %446 = shl i32 %445, 16
  %447 = load i32, i32* %6, align 4
  %448 = or i32 %446, %447
  %449 = call i32 @pm2_WR(%struct.pm2fb_par* %443, i32 %444, i32 %448)
  %450 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %451 = load i32, i32* @PM2R_SCISSOR_MODE, align 4
  %452 = load i32, i32* @PM2F_SCREEN_SCISSOR_ENABLE, align 4
  %453 = call i32 @pm2_WR(%struct.pm2fb_par* %450, i32 %451, i32 %452)
  %454 = call i32 (...) @wmb()
  %455 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %456 = load i32, i32* @PM2R_SCREEN_BASE, align 4
  %457 = load i32, i32* %18, align 4
  %458 = call i32 @pm2_WR(%struct.pm2fb_par* %455, i32 %456, i32 %457)
  %459 = call i32 (...) @wmb()
  %460 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %461 = load i32, i32* %19, align 4
  %462 = call i32 @set_video(%struct.pm2fb_par* %460, i32 %461)
  %463 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %464 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %463, i32 10)
  %465 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %466 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  switch i32 %467, label %502 [
    i32 129, label %468
    i32 128, label %483
  ]

468:                                              ; preds = %377
  %469 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %470 = load i32, i32* @PM2I_RD_COLOR_MODE, align 4
  %471 = load i32, i32* %20, align 4
  %472 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %469, i32 %470, i32 %471)
  %473 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %474 = load i32, i32* @PM2I_RD_COLOR_KEY_CONTROL, align 4
  %475 = load i32, i32* %8, align 4
  %476 = icmp eq i32 %475, 8
  br i1 %476, label %477, label %478

477:                                              ; preds = %468
  br label %480

478:                                              ; preds = %468
  %479 = load i32, i32* @PM2F_COLOR_KEY_TEST_OFF, align 4
  br label %480

480:                                              ; preds = %478, %477
  %481 = phi i32 [ 0, %477 ], [ %479, %478 ]
  %482 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %473, i32 %474, i32 %481)
  br label %502

483:                                              ; preds = %377
  %484 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %485 = load i32, i32* @PM2VI_RD_DAC_CONTROL, align 4
  %486 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %484, i32 %485, i32 0)
  %487 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %488 = load i32, i32* @PM2VI_RD_PIXEL_SIZE, align 4
  %489 = load i32, i32* %22, align 4
  %490 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %487, i32 %488, i32 %489)
  %491 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %492 = load i32, i32* @PM2VI_RD_COLOR_FORMAT, align 4
  %493 = load i32, i32* %23, align 4
  %494 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %491, i32 %492, i32 %493)
  %495 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %496 = load i32, i32* @PM2VI_RD_MISC_CONTROL, align 4
  %497 = load i32, i32* %24, align 4
  %498 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %495, i32 %496, i32 %497)
  %499 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %500 = load i32, i32* @PM2VI_RD_OVERLAY_KEY, align 4
  %501 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %499, i32 %500, i32 0)
  br label %502

502:                                              ; preds = %377, %483, %480
  %503 = load %struct.pm2fb_par*, %struct.pm2fb_par** %4, align 8
  %504 = load i32, i32* %5, align 4
  %505 = call i32 @set_pixclock(%struct.pm2fb_par* %503, i32 %504)
  %506 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %507 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 4
  %510 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %511 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i32 0, i32 10
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %515 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %509, i32 %513, i32 %517)
  store i32 0, i32* %2, align 4
  br label %519

519:                                              ; preds = %502, %261, %97
  %520 = load i32, i32* %2, align 4
  ret i32 %520
}

declare dso_local i32 @reset_card(%struct.pm2fb_par*) #1

declare dso_local i32 @reset_config(%struct.pm2fb_par*) #1

declare dso_local i32 @clear_palette(%struct.pm2fb_par*) #1

declare dso_local i32 @set_memclock(%struct.pm2fb_par*, i64) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @to3264(i32, i32, i32) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @set_aperture(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @partprod(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_video(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2v_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @set_pixclock(%struct.pm2fb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
