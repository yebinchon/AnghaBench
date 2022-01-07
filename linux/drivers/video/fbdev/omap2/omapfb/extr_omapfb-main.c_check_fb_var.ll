; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_check_fb_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_check_fb_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_var_screeninfo = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.omapfb_info = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__**, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, i32*, i32*)* }
%struct.omap_video_timings = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"check_fb_var %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot convert var to omap dss mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"xres = %d, yres = %d, vxres = %d, vyres = %d\0A\00", align 1
@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i64 0, align 8
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i8* null, align 8
@FB_VMODE_NONINTERLACED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_fb_var(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.omapfb_info*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.omap_video_timings, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %14)
  store %struct.omapfb_info* %15, %struct.omapfb_info** %6, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %16)
  store %struct.omap_dss_device* %17, %struct.omap_dss_device** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %19 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %23 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %32 = call i32 @fb_mode_to_dss_mode(%struct.fb_var_screeninfo* %31, i32* %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %301

38:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %42 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %47 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %301

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %39

66:                                               ; preds = %39
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 3
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %301

74:                                               ; preds = %66
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %76 = call i64 @check_fb_res_bounds(%struct.fb_var_screeninfo* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %301

81:                                               ; preds = %74
  %82 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %83 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %91 = call i64 @check_fb_size(%struct.omapfb_info* %89, %struct.fb_var_screeninfo* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %301

96:                                               ; preds = %88, %81
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %96
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %111, %114
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %108, %96
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %125, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 5
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %130, %118
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %143, i64 %146, i64 %149, i64 %152)
  %154 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %155 = icmp ne %struct.omap_dss_device* %154, null
  br i1 %155, label %156, label %181

156:                                              ; preds = %140
  %157 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %158 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32 (%struct.omap_dss_device*, i32*, i32*)*, i32 (%struct.omap_dss_device*, i32*, i32*)** %160, align 8
  %162 = icmp ne i32 (%struct.omap_dss_device*, i32*, i32*)* %161, null
  br i1 %162, label %163, label %181

163:                                              ; preds = %156
  %164 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %165 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32 (%struct.omap_dss_device*, i32*, i32*)*, i32 (%struct.omap_dss_device*, i32*, i32*)** %167, align 8
  %169 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %170 = call i32 %168(%struct.omap_dss_device* %169, i32* %11, i32* %12)
  %171 = load i32, i32* %11, align 4
  %172 = call i8* @DIV_ROUND_CLOSEST(i32 %171, i32 1000)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i8* @DIV_ROUND_CLOSEST(i32 %176, i32 1000)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 4
  br label %186

181:                                              ; preds = %156, %140
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 8
  store i32 -1, i32* %183, align 4
  %184 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %185 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %184, i32 0, i32 7
  store i32 -1, i32* %185, align 8
  br label %186

186:                                              ; preds = %181, %163
  %187 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 18
  store i64 0, i64* %188, align 8
  %189 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %190 = icmp ne %struct.omap_dss_device* %189, null
  br i1 %190, label %191, label %280

191:                                              ; preds = %186
  %192 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %193 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %195, align 8
  %197 = icmp ne i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* %196, null
  br i1 %197, label %198, label %280

198:                                              ; preds = %191
  %199 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %200 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %202, align 8
  %204 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %205 = call i32 %203(%struct.omap_dss_device* %204, %struct.omap_video_timings* %13)
  %206 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %198
  %210 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sdiv i32 %211, 1000
  %213 = call i64 @KHZ2PICOS(i32 %212)
  br label %215

214:                                              ; preds = %198
  br label %215

215:                                              ; preds = %214, %209
  %216 = phi i64 [ %213, %209 ], [ 0, %214 ]
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 17
  store i64 %216, i64* %218, align 8
  %219 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 9
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 16
  store i64 %220, i64* %222, align 8
  %223 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 8
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %226 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %225, i32 0, i32 15
  store i64 %224, i64* %226, align 8
  %227 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %229, i32 0, i32 14
  store i64 %228, i64* %230, align 8
  %231 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 13
  store i64 %232, i64* %234, align 8
  %235 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 12
  store i64 %236, i64* %238, align 8
  %239 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %241, i32 0, i32 11
  store i64 %240, i64* %242, align 8
  %243 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %215
  %248 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  br label %250

249:                                              ; preds = %215
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %248, %247 ], [ 0, %249 ]
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %250
  %261 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  br label %263

262:                                              ; preds = %250
  br label %263

263:                                              ; preds = %262, %260
  %264 = phi i32 [ %261, %260 ], [ 0, %262 ]
  %265 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %266 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %265, i32 0, i32 10
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %13, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %263
  %273 = load i8*, i8** @FB_VMODE_INTERLACED, align 8
  br label %276

274:                                              ; preds = %263
  %275 = load i8*, i8** @FB_VMODE_NONINTERLACED, align 8
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i8* [ %273, %272 ], [ %275, %274 ]
  %278 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %279 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %278, i32 0, i32 9
  store i8* %277, i8** %279, align 8
  br label %300

280:                                              ; preds = %191, %186
  %281 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %282 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %281, i32 0, i32 17
  store i64 0, i64* %282, align 8
  %283 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %283, i32 0, i32 16
  store i64 0, i64* %284, align 8
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 15
  store i64 0, i64* %286, align 8
  %287 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %288 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %287, i32 0, i32 14
  store i64 0, i64* %288, align 8
  %289 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %290 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %289, i32 0, i32 13
  store i64 0, i64* %290, align 8
  %291 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %292 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %291, i32 0, i32 12
  store i64 0, i64* %292, align 8
  %293 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %294 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %293, i32 0, i32 11
  store i64 0, i64* %294, align 8
  %295 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %296 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %295, i32 0, i32 10
  store i32 0, i32* %296, align 8
  %297 = load i8*, i8** @FB_VMODE_NONINTERLACED, align 8
  %298 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %299 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %298, i32 0, i32 9
  store i8* %297, i8** %299, align 8
  br label %300

300:                                              ; preds = %280, %276
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %300, %93, %78, %71, %58, %35
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fb_mode_to_dss_mode(%struct.fb_var_screeninfo*, i32*) #1

declare dso_local i64 @check_fb_res_bounds(%struct.fb_var_screeninfo*) #1

declare dso_local i64 @check_fb_size(%struct.omapfb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i64 @KHZ2PICOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
