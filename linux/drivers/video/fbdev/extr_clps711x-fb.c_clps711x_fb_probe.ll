; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clps711x_fb_info = type { %struct.lcd_device*, i32, %struct.lcd_device*, i8*, i64, i32, i32, %struct.lcd_device* }
%struct.lcd_device = type { i32 }
%struct.fb_info = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32*, %struct.lcd_device*, %struct.TYPE_9__*, %struct.clps711x_fb_info* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.resource = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@CLPS711X_FB_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cirrus,ep7209-syscon1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"No display defined\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@OF_USE_NATIVE_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ac-prescale\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cmap-invert\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bits-per-pixel\00", align 1
@CLPS711X_FBADDR = common dso_local global i64 0, align 8
@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON1_LCDEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@clps711x_fb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FB_ACTIVATE_FORCE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@CLPS711X_FB_BPP_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"clps711x-lcd\00", align 1
@clps711x_lcd_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clps711x_fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_fb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.clps711x_fb_info*, align 8
  %8 = alloca %struct.lcd_device*, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @CLPS711X_FB_NAME, align 4
  %21 = call i64 @fb_get_options(i32 %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %374

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.fb_info* @framebuffer_alloc(i32 56, %struct.device* %27)
  store %struct.fb_info* %28, %struct.fb_info** %9, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %30 = icmp ne %struct.fb_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %374

34:                                               ; preds = %26
  %35 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 7
  %37 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %36, align 8
  store %struct.clps711x_fb_info* %37, %struct.clps711x_fb_info** %7, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.fb_info* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %10, align 8
  %44 = load %struct.resource*, %struct.resource** %10, align 8
  %45 = icmp ne %struct.resource* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %370

47:                                               ; preds = %34
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.resource*, %struct.resource** %10, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.resource*, %struct.resource** %10, align 8
  %53 = call i8* @resource_size(%struct.resource* %52)
  %54 = call i64 @devm_ioremap(%struct.device* %48, i32 %51, i8* %53)
  %55 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %56 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %58 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %47
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %370

64:                                               ; preds = %47
  %65 = load %struct.resource*, %struct.resource** %10, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.resource*, %struct.resource** %10, align 8
  %72 = call i8* @resource_size(%struct.resource* %71)
  %73 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 5
  store i8* %72, i8** %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load i32, i32* @IORESOURCE_MEM, align 4
  %78 = call %struct.resource* @platform_get_resource(%struct.platform_device* %76, i32 %77, i32 1)
  store %struct.resource* %78, %struct.resource** %10, align 8
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.resource*, %struct.resource** %10, align 8
  %81 = call %struct.lcd_device* @devm_ioremap_resource(%struct.device* %79, %struct.resource* %80)
  %82 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 5
  store %struct.lcd_device* %81, %struct.lcd_device** %83, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 5
  %86 = load %struct.lcd_device*, %struct.lcd_device** %85, align 8
  %87 = call i64 @IS_ERR(%struct.lcd_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %64
  %90 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 5
  %92 = load %struct.lcd_device*, %struct.lcd_device** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.lcd_device* %92)
  store i32 %93, i32* %11, align 4
  br label %370

94:                                               ; preds = %64
  %95 = load %struct.resource*, %struct.resource** %10, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 268435455
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %370

103:                                              ; preds = %94
  %104 = call %struct.TYPE_9__* @alloc_apertures(i32 1)
  %105 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 6
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %106, align 8
  %107 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 6
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %370

114:                                              ; preds = %103
  %115 = load %struct.resource*, %struct.resource** %10, align 8
  %116 = call i8* @resource_size(%struct.resource* %115)
  %117 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %118 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.resource*, %struct.resource** %10, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 6
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %128, i32* %135, align 8
  %136 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %137 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 6
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i8* %138, i8** %145, align 8
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call %struct.lcd_device* @devm_clk_get(%struct.device* %146, i32* null)
  %148 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %149 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %148, i32 0, i32 7
  store %struct.lcd_device* %147, %struct.lcd_device** %149, align 8
  %150 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %151 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %150, i32 0, i32 7
  %152 = load %struct.lcd_device*, %struct.lcd_device** %151, align 8
  %153 = call i64 @IS_ERR(%struct.lcd_device* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %114
  %156 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %157 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %156, i32 0, i32 7
  %158 = load %struct.lcd_device*, %struct.lcd_device** %157, align 8
  %159 = call i32 @PTR_ERR(%struct.lcd_device* %158)
  store i32 %159, i32* %11, align 4
  br label %370

160:                                              ; preds = %114
  %161 = call %struct.lcd_device* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %162 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %163 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %162, i32 0, i32 0
  store %struct.lcd_device* %161, %struct.lcd_device** %163, align 8
  %164 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %165 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %164, i32 0, i32 0
  %166 = load %struct.lcd_device*, %struct.lcd_device** %165, align 8
  %167 = call i64 @IS_ERR(%struct.lcd_device* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %171 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %170, i32 0, i32 0
  %172 = load %struct.lcd_device*, %struct.lcd_device** %171, align 8
  %173 = call i32 @PTR_ERR(%struct.lcd_device* %172)
  store i32 %173, i32* %11, align 4
  br label %370

174:                                              ; preds = %160
  %175 = load %struct.device_node*, %struct.device_node** %6, align 8
  %176 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %176, %struct.device_node** %5, align 8
  %177 = load %struct.device_node*, %struct.device_node** %5, align 8
  %178 = icmp ne %struct.device_node* %177, null
  br i1 %178, label %185, label %179

179:                                              ; preds = %174
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %183 = load i32, i32* @ENODATA, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %11, align 4
  br label %370

185:                                              ; preds = %174
  %186 = load %struct.device_node*, %struct.device_node** %5, align 8
  %187 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %188 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %187, i32 0, i32 1
  %189 = load i32, i32* @OF_USE_NATIVE_MODE, align 4
  %190 = call i32 @of_get_fb_videomode(%struct.device_node* %186, i32* %188, i32 %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load %struct.device_node*, %struct.device_node** %5, align 8
  %195 = call i32 @of_node_put(%struct.device_node* %194)
  br label %370

196:                                              ; preds = %185
  %197 = load %struct.device_node*, %struct.device_node** %5, align 8
  %198 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %199 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %198, i32 0, i32 6
  %200 = call i32 @of_property_read_u32(%struct.device_node* %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %199)
  %201 = load %struct.device_node*, %struct.device_node** %5, align 8
  %202 = call i32 @of_property_read_bool(%struct.device_node* %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %203 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %204 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 8
  %205 = load %struct.device_node*, %struct.device_node** %5, align 8
  %206 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %207 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 4
  %209 = call i32 @of_property_read_u32(%struct.device_node* %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %208)
  store i32 %209, i32* %11, align 4
  %210 = load %struct.device_node*, %struct.device_node** %5, align 8
  %211 = call i32 @of_node_put(%struct.device_node* %210)
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %196
  br label %370

215:                                              ; preds = %196
  %216 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %217 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %221 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @CLPS711X_FBADDR, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @readb(i64 %224)
  %226 = shl i32 %225, 28
  %227 = icmp ne i32 %219, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %215
  %229 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %230 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %229, i32 0, i32 0
  %231 = load %struct.lcd_device*, %struct.lcd_device** %230, align 8
  %232 = load i32, i32* @SYSCON_OFFSET, align 4
  %233 = load i32, i32* @SYSCON1_LCDEN, align 4
  %234 = call i32 @regmap_update_bits(%struct.lcd_device* %231, i32 %232, i32 %233, i32 0)
  br label %235

235:                                              ; preds = %228, %215
  %236 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %237 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %236, i32 0, i32 0
  %238 = load %struct.lcd_device*, %struct.lcd_device** %237, align 8
  %239 = load i32, i32* @SYSCON_OFFSET, align 4
  %240 = call i32 @regmap_read(%struct.lcd_device* %238, i32 %239, i32* %12)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %370

244:                                              ; preds = %235
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @SYSCON1_LCDEN, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %268, label %249

249:                                              ; preds = %244
  %250 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %251 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = ashr i32 %253, 28
  %255 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %256 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @CLPS711X_FBADDR, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @writeb(i32 %254, i64 %259)
  %261 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %262 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %261, i32 0, i32 5
  %263 = load %struct.lcd_device*, %struct.lcd_device** %262, align 8
  %264 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %265 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @memset_io(%struct.lcd_device* %263, i32 0, i8* %266)
  br label %268

268:                                              ; preds = %249, %244
  %269 = load %struct.device*, %struct.device** %4, align 8
  %270 = call %struct.lcd_device* @devm_regulator_get(%struct.device* %269, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %271 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %272 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %271, i32 0, i32 2
  store %struct.lcd_device* %270, %struct.lcd_device** %272, align 8
  %273 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %274 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %273, i32 0, i32 2
  %275 = load %struct.lcd_device*, %struct.lcd_device** %274, align 8
  %276 = call i32 @PTR_ERR(%struct.lcd_device* %275)
  %277 = load i32, i32* @EPROBE_DEFER, align 4
  %278 = sub nsw i32 0, %277
  %279 = icmp eq i32 %276, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %268
  %281 = load i32, i32* @EPROBE_DEFER, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %11, align 4
  br label %370

283:                                              ; preds = %268
  %284 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %285 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %284, i32 0, i32 4
  store i32* @clps711x_fb_ops, i32** %285, align 8
  %286 = load i32, i32* @FBINFO_DEFAULT, align 4
  %287 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %288 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 8
  %289 = load i32, i32* @FB_ACTIVATE_FORCE, align 4
  %290 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %291 = or i32 %289, %290
  %292 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %293 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 4
  %295 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %296 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 1
  store i32 -1, i32* %297, align 4
  %298 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %299 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 2
  store i32 -1, i32* %300, align 4
  %301 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %302 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %303 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 3
  store i32 %301, i32* %304, align 4
  %305 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %306 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %307 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 4
  store i32 %305, i32* %308, align 8
  %309 = load i32, i32* @FB_ACCEL_NONE, align 4
  %310 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %311 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  store i32 %309, i32* %312, align 4
  %313 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %314 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @CLPS711X_FB_NAME, align 4
  %318 = call i32 @strlcpy(i32 %316, i32 %317, i32 4)
  %319 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %320 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %319, i32 0, i32 1
  %321 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %322 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %321, i32 0, i32 1
  %323 = call i32 @fb_videomode_to_var(%struct.TYPE_8__* %320, i32* %322)
  %324 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %325 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %324, i32 0, i32 0
  %326 = load i32, i32* @CLPS711X_FB_BPP_MAX, align 4
  %327 = call i32 @BIT(i32 %326)
  %328 = call i32 @fb_alloc_cmap(i32* %325, i32 %327, i32 0)
  store i32 %328, i32* %11, align 4
  %329 = load i32, i32* %11, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %283
  br label %370

332:                                              ; preds = %283
  %333 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %334 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %335 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %334, i32 0, i32 1
  %336 = call i32 @fb_set_var(%struct.fb_info* %333, %struct.TYPE_8__* %335)
  store i32 %336, i32* %11, align 4
  %337 = load i32, i32* %11, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %332
  br label %360

340:                                              ; preds = %332
  %341 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %342 = call i32 @register_framebuffer(%struct.fb_info* %341)
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %11, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  br label %360

346:                                              ; preds = %340
  %347 = load %struct.device*, %struct.device** %4, align 8
  %348 = load %struct.device*, %struct.device** %4, align 8
  %349 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %350 = call %struct.lcd_device* @devm_lcd_device_register(%struct.device* %347, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.device* %348, %struct.clps711x_fb_info* %349, i32* @clps711x_lcd_ops)
  store %struct.lcd_device* %350, %struct.lcd_device** %8, align 8
  %351 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %352 = call i64 @IS_ERR(%struct.lcd_device* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %346
  store i32 0, i32* %2, align 4
  br label %374

355:                                              ; preds = %346
  %356 = load %struct.lcd_device*, %struct.lcd_device** %8, align 8
  %357 = call i32 @PTR_ERR(%struct.lcd_device* %356)
  store i32 %357, i32* %11, align 4
  %358 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %359 = call i32 @unregister_framebuffer(%struct.fb_info* %358)
  br label %360

360:                                              ; preds = %355, %345, %339
  %361 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %7, align 8
  %362 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %361, i32 0, i32 0
  %363 = load %struct.lcd_device*, %struct.lcd_device** %362, align 8
  %364 = load i32, i32* @SYSCON_OFFSET, align 4
  %365 = load i32, i32* @SYSCON1_LCDEN, align 4
  %366 = call i32 @regmap_update_bits(%struct.lcd_device* %363, i32 %364, i32 %365, i32 0)
  %367 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %368 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %367, i32 0, i32 0
  %369 = call i32 @fb_dealloc_cmap(i32* %368)
  br label %370

370:                                              ; preds = %360, %331, %280, %243, %214, %193, %179, %169, %155, %111, %100, %89, %61, %46
  %371 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %372 = call i32 @framebuffer_release(%struct.fb_info* %371)
  %373 = load i32, i32* %11, align 4
  store i32 %373, i32* %2, align 4
  br label %374

374:                                              ; preds = %370, %354, %31, %23
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local i64 @fb_get_options(i32, i32*) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.device*, i32, i8*) #1

declare dso_local i8* @resource_size(%struct.resource*) #1

declare dso_local %struct.lcd_device* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local %struct.TYPE_9__* @alloc_apertures(i32) #1

declare dso_local %struct.lcd_device* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local %struct.lcd_device* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_get_fb_videomode(%struct.device_node*, i32*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @regmap_update_bits(%struct.lcd_device*, i32, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.lcd_device*, i32, i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @memset_io(%struct.lcd_device*, i32, i8*) #1

declare dso_local %struct.lcd_device* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @fb_videomode_to_var(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fb_set_var(%struct.fb_info*, %struct.TYPE_8__*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(%struct.device*, i8*, %struct.device*, %struct.clps711x_fb_info*, i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
