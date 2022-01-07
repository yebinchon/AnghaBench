; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_simplefb.c_simplefb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_simplefb.c_simplefb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.simplefb_params = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32*, %struct.TYPE_15__*, %struct.simplefb_par* }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.simplefb_par = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"simplefb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No memory resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simplefb_fix = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@simplefb_var = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@simplefb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_MISC_FIRMWARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"framebuffer at 0x%lx, 0x%x bytes, mapped to 0x%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"format=%s, mode=%dx%dx%d, linelength=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unable to register simplefb: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"fb%d: simplefb registered!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @simplefb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplefb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.simplefb_params, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.simplefb_par*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = call i64 @fb_get_options(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %296

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i64 @dev_get_platdata(%struct.TYPE_14__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @simplefb_parse_pd(%struct.platform_device* %22, %struct.simplefb_params* %5)
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @simplefb_parse_dt(%struct.platform_device* %31, %struct.simplefb_params* %5)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %296

39:                                               ; preds = %34
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %8, align 8
  %43 = load %struct.resource*, %struct.resource** %8, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %296

51:                                               ; preds = %39
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call %struct.fb_info* @framebuffer_alloc(i32 4, %struct.TYPE_14__* %53)
  store %struct.fb_info* %54, %struct.fb_info** %6, align 8
  %55 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %56 = icmp ne %struct.fb_info* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %296

60:                                               ; preds = %51
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.fb_info* %62)
  %64 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 8
  %66 = load %struct.simplefb_par*, %struct.simplefb_par** %65, align 8
  store %struct.simplefb_par* %66, %struct.simplefb_par** %7, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 3
  %69 = bitcast %struct.TYPE_13__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 bitcast (%struct.TYPE_13__* @simplefb_fix to i8*), i64 12, i1 false)
  %70 = load %struct.resource*, %struct.resource** %8, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load %struct.resource*, %struct.resource** %8, align 8
  %77 = call i32 @resource_size(%struct.resource* %76)
  %78 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 4
  %88 = bitcast %struct.TYPE_12__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 4 bitcast (%struct.TYPE_12__* @simplefb_var to i8*), i64 36, i1 false)
  %89 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 8
  store i32 %100, i32* %103, align 8
  %104 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 7
  store i32 %105, i32* %108, align 4
  %109 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 6
  store i32 %119, i32* %122, align 8
  %123 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 5
  store i32 %126, i32* %129, align 4
  %130 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 8
  %137 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  store i32 %140, i32* %143, align 4
  %144 = call %struct.TYPE_15__* @alloc_apertures(i32 1)
  %145 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 7
  store %struct.TYPE_15__* %144, %struct.TYPE_15__** %146, align 8
  %147 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %148 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %147, i32 0, i32 7
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = icmp ne %struct.TYPE_15__* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %60
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %292

154:                                              ; preds = %60
  %155 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 7
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  store i32 %158, i32* %165, align 4
  %166 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 7
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i32 %169, i32* %176, align 4
  %177 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %178 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %177, i32 0, i32 6
  store i32* @simplefb_ops, i32** %178, align 8
  %179 = load i32, i32* @FBINFO_DEFAULT, align 4
  %180 = load i32, i32* @FBINFO_MISC_FIRMWARE, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %183 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %185 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %189 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ioremap_wc(i32 %187, i32 %191)
  %193 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %196 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %154
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %292

202:                                              ; preds = %154
  %203 = load %struct.simplefb_par*, %struct.simplefb_par** %7, align 8
  %204 = getelementptr inbounds %struct.simplefb_par, %struct.simplefb_par* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %207 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  %208 = load %struct.simplefb_par*, %struct.simplefb_par** %7, align 8
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = call i32 @simplefb_clocks_get(%struct.simplefb_par* %208, %struct.platform_device* %209)
  store i32 %210, i32* %4, align 4
  %211 = load i32, i32* %4, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  br label %287

214:                                              ; preds = %202
  %215 = load %struct.simplefb_par*, %struct.simplefb_par** %7, align 8
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = call i32 @simplefb_regulators_get(%struct.simplefb_par* %215, %struct.platform_device* %216)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %284

221:                                              ; preds = %214
  %222 = load %struct.simplefb_par*, %struct.simplefb_par** %7, align 8
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = call i32 @simplefb_clocks_enable(%struct.simplefb_par* %222, %struct.platform_device* %223)
  %225 = load %struct.simplefb_par*, %struct.simplefb_par** %7, align 8
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = call i32 @simplefb_regulators_enable(%struct.simplefb_par* %225, %struct.platform_device* %226)
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %231 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %235 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %239 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_info(%struct.TYPE_14__* %229, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %233, i32 %237, i32 %240)
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.simplefb_params, %struct.simplefb_params* %5, i32 0, i32 0
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %253 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %257 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %261 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_info(%struct.TYPE_14__* %243, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %247, i32 %251, i32 %255, i32 %259, i32 %263)
  %265 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %266 = call i32 @register_framebuffer(%struct.fb_info* %265)
  store i32 %266, i32* %4, align 4
  %267 = load i32, i32* %4, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %221
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = load i32, i32* %4, align 4
  %273 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %271, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %272)
  br label %281

274:                                              ; preds = %221
  %275 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %276 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %275, i32 0, i32 0
  %277 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %278 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_info(%struct.TYPE_14__* %276, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %279)
  store i32 0, i32* %2, align 4
  br label %296

281:                                              ; preds = %269
  %282 = load %struct.simplefb_par*, %struct.simplefb_par** %7, align 8
  %283 = call i32 @simplefb_regulators_destroy(%struct.simplefb_par* %282)
  br label %284

284:                                              ; preds = %281, %220
  %285 = load %struct.simplefb_par*, %struct.simplefb_par** %7, align 8
  %286 = call i32 @simplefb_clocks_destroy(%struct.simplefb_par* %285)
  br label %287

287:                                              ; preds = %284, %213
  %288 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %289 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @iounmap(i32 %290)
  br label %292

292:                                              ; preds = %287, %199, %151
  %293 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %294 = call i32 @framebuffer_release(%struct.fb_info* %293)
  %295 = load i32, i32* %4, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %292, %274, %57, %45, %37, %11
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local i64 @fb_get_options(i8*, i32*) #1

declare dso_local i64 @dev_get_platdata(%struct.TYPE_14__*) #1

declare dso_local i32 @simplefb_parse_pd(%struct.platform_device*, %struct.simplefb_params*) #1

declare dso_local i32 @simplefb_parse_dt(%struct.platform_device*, %struct.simplefb_params*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.TYPE_15__* @alloc_apertures(i32) #1

declare dso_local i32 @ioremap_wc(i32, i32) #1

declare dso_local i32 @simplefb_clocks_get(%struct.simplefb_par*, %struct.platform_device*) #1

declare dso_local i32 @simplefb_regulators_get(%struct.simplefb_par*, %struct.platform_device*) #1

declare dso_local i32 @simplefb_clocks_enable(%struct.simplefb_par*, %struct.platform_device*) #1

declare dso_local i32 @simplefb_regulators_enable(%struct.simplefb_par*, %struct.platform_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i32, ...) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @simplefb_regulators_destroy(%struct.simplefb_par*) #1

declare dso_local i32 @simplefb_clocks_destroy(%struct.simplefb_par*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
