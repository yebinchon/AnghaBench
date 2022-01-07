; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.mmp_buffer_driver_mach_info* }
%struct.mmp_buffer_driver_mach_info = type { i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_10__, i32, %struct.TYPE_11__, %struct.mmpfb_info* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.mmpfb_info = type { i32, %struct.TYPE_13__*, i32, i32, i32*, i32, %struct.TYPE_12__*, i32, i32, %struct.fb_info* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can't get the path %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"path %s get\0A\00", align 1
@MMPFB_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't alloc framebuffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"fb %dk allocated\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to register fb: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"loaded to /dev/fb%d <%s>.\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"mmp-fb: frame buffer device init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmpfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmpfb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmp_buffer_driver_mach_info*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.mmpfb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %11, align 8
  store %struct.mmp_buffer_driver_mach_info* %12, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %13 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %14 = icmp eq %struct.mmp_buffer_driver_mach_info* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %251

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.fb_info* @framebuffer_alloc(i32 64, %struct.TYPE_13__* %23)
  store %struct.fb_info* %24, %struct.fb_info** %5, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %26 = icmp eq %struct.fb_info* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %251

30:                                               ; preds = %21
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 3
  %33 = load %struct.mmpfb_info*, %struct.mmpfb_info** %32, align 8
  store %struct.mmpfb_info* %33, %struct.mmpfb_info** %6, align 8
  %34 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %35 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %36 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %35, i32 0, i32 9
  store %struct.fb_info* %34, %struct.fb_info** %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.mmpfb_info* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %43 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %42, i32 0, i32 1
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %43, align 8
  %44 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %45 = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, %struct.mmp_buffer_driver_mach_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %48 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %50 = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, %struct.mmp_buffer_driver_mach_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %53 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 2
  %56 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %57 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pixfmt_to_var(%struct.TYPE_11__* %55, i32 %58)
  %60 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %61 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %60, i32 0, i32 2
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %64 = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, %struct.mmp_buffer_driver_mach_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_12__* @mmp_get_path(i32 %65)
  %67 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %68 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %67, i32 0, i32 6
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  %69 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %70 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %69, i32 0, i32 6
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = icmp ne %struct.TYPE_12__* %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %30
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %77 = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, %struct.mmp_buffer_driver_mach_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %240

82:                                               ; preds = %30
  %83 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %84 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %87 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %86, i32 0, i32 6
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_info(%struct.TYPE_13__* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %93 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %92, i32 0, i32 6
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %96 = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, %struct.mmp_buffer_driver_mach_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mmp_path_get_overlay(%struct.TYPE_12__* %94, i32 %97)
  %99 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %100 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %102 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %82
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %240

108:                                              ; preds = %82
  %109 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %110 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mmp_buffer_driver_mach_info*, %struct.mmp_buffer_driver_mach_info** %4, align 8
  %113 = getelementptr inbounds %struct.mmp_buffer_driver_mach_info, %struct.mmp_buffer_driver_mach_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mmp_overlay_set_fetch(i32 %111, i32 %114)
  %116 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %117 = call i32 @modes_setup(%struct.mmpfb_info* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %7, align 4
  br label %240

122:                                              ; preds = %108
  %123 = load i32, i32* %8, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %122
  %126 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 2
  %131 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %132 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %137, %141
  %143 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %144 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %142, %146
  %148 = sdiv i32 %147, 8
  %149 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %150 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %155

151:                                              ; preds = %122
  %152 = load i32, i32* @MMPFB_DEFAULT_SIZE, align 4
  %153 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %154 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %125
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %159 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @PAGE_ALIGN(i32 %160)
  %162 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %163 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %162, i32 0, i32 3
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i32* @dma_alloc_coherent(%struct.TYPE_13__* %157, i32 %161, i32* %163, i32 %164)
  %166 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %167 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %166, i32 0, i32 4
  store i32* %165, i32** %167, align 8
  %168 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %169 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %155
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %240

178:                                              ; preds = %155
  %179 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %180 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %179, i32 0, i32 1
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %183 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sdiv i32 %184, 1024
  %186 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_info(%struct.TYPE_13__* %181, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %191 = call i32 @mmpfb_power(%struct.mmpfb_info* %190, i32 1)
  br label %192

192:                                              ; preds = %189, %178
  %193 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %194 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %195 = call i32 @fb_info_setup(%struct.fb_info* %193, %struct.mmpfb_info* %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %226

199:                                              ; preds = %192
  %200 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %201 = call i32 @register_framebuffer(%struct.fb_info* %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = load i32, i32* %7, align 4
  %208 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @ENXIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %7, align 4
  br label %223

211:                                              ; preds = %199
  %212 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %213 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %212, i32 0, i32 1
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %216 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %219 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (%struct.TYPE_13__*, i8*, i32, ...) @dev_info(%struct.TYPE_13__* %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %217, i32 %221)
  store i32 0, i32* %2, align 4
  br label %251

223:                                              ; preds = %204
  %224 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %225 = call i32 @fb_info_clear(%struct.fb_info* %224)
  br label %226

226:                                              ; preds = %223, %198
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %230 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @PAGE_ALIGN(i32 %231)
  %233 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %234 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %237 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @dma_free_coherent(%struct.TYPE_13__* %228, i32 %232, i32* %235, i32 %238)
  br label %240

240:                                              ; preds = %226, %172, %120, %105, %73
  %241 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %242 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %241, i32 0, i32 2
  %243 = call i32 @mutex_destroy(i32* %242)
  %244 = load %struct.mmpfb_info*, %struct.mmpfb_info** %6, align 8
  %245 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %244, i32 0, i32 1
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %246, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %248 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %249 = call i32 @framebuffer_release(%struct.fb_info* %248)
  %250 = load i32, i32* %7, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %240, %211, %27, %15
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmpfb_info*) #1

declare dso_local i32 @pixfmt_to_var(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_12__* @mmp_get_path(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32, ...) #1

declare dso_local i32 @mmp_path_get_overlay(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mmp_overlay_set_fetch(i32, i32) #1

declare dso_local i32 @modes_setup(%struct.mmpfb_info*) #1

declare dso_local i32* @dma_alloc_coherent(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @mmpfb_power(%struct.mmpfb_info*, i32) #1

declare dso_local i32 @fb_info_setup(%struct.fb_info*, %struct.mmpfb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_info_clear(%struct.fb_info*) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
