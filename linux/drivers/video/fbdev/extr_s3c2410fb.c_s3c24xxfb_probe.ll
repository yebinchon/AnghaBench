; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c24xxfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c24xxfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.s3c2410fb_info = type { i32, i32*, i32, i32, i32*, i32, i32*, i32*, i32* }
%struct.s3c2410fb_display = type { i64, i64, i64 }
%struct.fb_info = type { %struct.TYPE_3__, i32, %struct.TYPE_4__, i32*, i32, i32*, %struct.s3c2410fb_info* }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i32, i64 }
%struct.s3c2410fb_mach_info = type { i32, i32, %struct.s3c2410fb_display* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"no platform data for lcd, cannot attach\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"default is %d but only %d displays\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"no irq for device\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to get memory registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to get memory region\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ioremap() of registers failed\0A\00", align 1
@DRV_S3C2412 = common dso_local global i32 0, align 4
@S3C2412_LCDINTBASE = common dso_local global i32 0, align 4
@S3C2410_LCDINTBASE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"devinit\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@S3C2410_LCDCON1 = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_ENVID = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@s3c2410fb_ops = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@PALETTE_BUFF_CLEAR = common dso_local global i32 0, align 4
@s3c2410fb_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"cannot get irq %d - err %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to get lcd clock source\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"got and enabled clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to allocate video RAM: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"got video memory\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Failed to register cpufreq\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Failed to register framebuffer device: %d\0A\00", align 1
@dev_attr_debug = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"failed to add debug attribute\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"fb%d: %s frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @s3c24xxfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xxfb_probe(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c2410fb_info*, align 8
  %7 = alloca %struct.s3c2410fb_display*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.s3c2410fb_mach_info*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.s3c2410fb_mach_info* @dev_get_platdata(i32* %18)
  store %struct.s3c2410fb_mach_info* %19, %struct.s3c2410fb_mach_info** %9, align 8
  %20 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %21 = icmp eq %struct.s3c2410fb_mach_info* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %458

28:                                               ; preds = %2
  %29 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %30 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %33 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %40 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %43 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %458

48:                                               ; preds = %28
  %49 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %50 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %49, i32 0, i32 2
  %51 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %50, align 8
  %52 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %53 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %51, i64 %55
  store %struct.s3c2410fb_display* %56, %struct.s3c2410fb_display** %7, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = call i32 @platform_get_irq(%struct.platform_device* %57, i32 0)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %458

67:                                               ; preds = %48
  %68 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call %struct.fb_info* @framebuffer_alloc(i32 64, i32* %69)
  store %struct.fb_info* %70, %struct.fb_info** %8, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %72 = icmp ne %struct.fb_info* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %458

76:                                               ; preds = %67
  %77 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.fb_info* %78)
  %80 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 6
  %82 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %81, align 8
  store %struct.s3c2410fb_info* %82, %struct.s3c2410fb_info** %6, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %86 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %85, i32 0, i32 8
  store i32* %84, i32** %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %89 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %91 = load i32, i32* @IORESOURCE_MEM, align 4
  %92 = call %struct.resource* @platform_get_resource(%struct.platform_device* %90, i32 %91, i32 0)
  store %struct.resource* %92, %struct.resource** %10, align 8
  %93 = load %struct.resource*, %struct.resource** %10, align 8
  %94 = icmp eq %struct.resource* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %76
  %96 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @ENXIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %454

101:                                              ; preds = %76
  %102 = load %struct.resource*, %struct.resource** %10, align 8
  %103 = call i32 @resource_size(%struct.resource* %102)
  store i32 %103, i32* %14, align 4
  %104 = load %struct.resource*, %struct.resource** %10, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32* @request_mem_region(i32 %106, i32 %107, i32 %110)
  %112 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %113 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %112, i32 0, i32 7
  store i32* %111, i32** %113, align 8
  %114 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %115 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %101
  %119 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @ENOENT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %11, align 4
  br label %454

124:                                              ; preds = %101
  %125 = load %struct.resource*, %struct.resource** %10, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32* @ioremap(i32 %127, i32 %128)
  %130 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %131 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %130, i32 0, i32 1
  store i32* %129, i32** %131, align 8
  %132 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %133 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @ENXIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %11, align 4
  br label %448

142:                                              ; preds = %124
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @DRV_S3C2412, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %148 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* @S3C2412_LCDINTBASE, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %154 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %153, i32 0, i32 6
  store i32* %152, i32** %154, align 8
  br label %164

155:                                              ; preds = %142
  %156 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %157 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* @S3C2410_LCDINTBASE, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %163 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %162, i32 0, i32 6
  store i32* %161, i32** %163, align 8
  br label %164

164:                                              ; preds = %155, %146
  %165 = call i32 @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %166 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @driver_name, align 4
  %171 = call i32 @strcpy(i32 %169, i32 %170)
  %172 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %173 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @S3C2410_LCDCON1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = call i32 @readl(i32* %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @S3C2410_LCDCON1_ENVID, align 4
  %181 = xor i32 %180, -1
  %182 = and i32 %179, %181
  %183 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %184 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @S3C2410_LCDCON1, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = call i32 @writel(i32 %182, i32* %188)
  %190 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %191 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %192 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 7
  store i32 %190, i32* %193, align 8
  %194 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %195 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 6
  store i64 0, i64* %196, align 8
  %197 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %198 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 5
  store i64 0, i64* %199, align 8
  %200 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %201 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 4
  store i64 0, i64* %202, align 8
  %203 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %204 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 3
  store i64 0, i64* %205, align 8
  %206 = load i32, i32* @FB_ACCEL_NONE, align 4
  %207 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %208 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 4
  %210 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %211 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 6
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %214 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %215 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 5
  store i32 %213, i32* %216, align 8
  %217 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %218 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 4
  store i64 0, i64* %219, align 8
  %220 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %221 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %222 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  store i32 %220, i32* %223, align 8
  %224 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %225 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %224, i32 0, i32 5
  store i32* @s3c2410fb_ops, i32** %225, align 8
  %226 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %227 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %228 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  %229 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %230 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %229, i32 0, i32 5
  %231 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %232 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %231, i32 0, i32 3
  store i32* %230, i32** %232, align 8
  store i32 0, i32* %13, align 4
  br label %233

233:                                              ; preds = %244, %164
  %234 = load i32, i32* %13, align 4
  %235 = icmp slt i32 %234, 256
  br i1 %235, label %236, label %247

236:                                              ; preds = %233
  %237 = load i32, i32* @PALETTE_BUFF_CLEAR, align 4
  %238 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %239 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %237, i32* %243, align 4
  br label %244

244:                                              ; preds = %236
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %233

247:                                              ; preds = %233
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @s3c2410fb_irq, align 4
  %250 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %254 = call i32 @request_irq(i32 %248, i32 %249, i32 0, i32 %252, %struct.s3c2410fb_info* %253)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %247
  %258 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %259 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %258, i32 0, i32 0
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* %11, align 4
  %262 = call i32 (i32*, i8*, ...) @dev_err(i32* %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %260, i32 %261)
  %263 = load i32, i32* @EBUSY, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %11, align 4
  br label %443

265:                                              ; preds = %247
  %266 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %267 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %268 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %270 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i64 @IS_ERR(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %265
  %275 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %276 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %275, i32 0, i32 0
  %277 = call i32 (i32*, i8*, ...) @dev_err(i32* %276, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %278 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %279 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @PTR_ERR(i32 %280)
  store i32 %281, i32* %11, align 4
  br label %439

282:                                              ; preds = %265
  %283 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %284 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @clk_prepare_enable(i32 %285)
  %287 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %288 = call i32 @usleep_range(i32 1000, i32 1100)
  %289 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %290 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @clk_get_rate(i32 %291)
  %293 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %294 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %293, i32 0, i32 3
  store i32 %292, i32* %294, align 4
  store i32 0, i32* %13, align 4
  br label %295

295:                                              ; preds = %344, %282
  %296 = load i32, i32* %13, align 4
  %297 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %298 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %347

301:                                              ; preds = %295
  %302 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %303 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %302, i32 0, i32 2
  %304 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %303, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %304, i64 %306
  %308 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %16, align 8
  %310 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %311 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %310, i32 0, i32 2
  %312 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %312, i64 %314
  %316 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %16, align 8
  %319 = mul i64 %318, %317
  store i64 %319, i64* %16, align 8
  %320 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %9, align 8
  %321 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %320, i32 0, i32 2
  %322 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %321, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %322, i64 %324
  %326 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* %16, align 8
  %329 = mul i64 %328, %327
  store i64 %329, i64* %16, align 8
  %330 = load i64, i64* %16, align 8
  %331 = lshr i64 %330, 3
  store i64 %331, i64* %16, align 8
  %332 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %333 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* %16, align 8
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %301
  %339 = load i64, i64* %16, align 8
  %340 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %341 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  store i64 %339, i64* %342, align 8
  br label %343

343:                                              ; preds = %338, %301
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %13, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %13, align 4
  br label %295

347:                                              ; preds = %295
  %348 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %349 = call i32 @s3c2410fb_map_video_memory(%struct.fb_info* %348)
  store i32 %349, i32* %11, align 4
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %354 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %353, i32 0, i32 0
  %355 = load i32, i32* %11, align 4
  %356 = call i32 (i32*, i8*, ...) @dev_err(i32* %354, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %355)
  %357 = load i32, i32* @ENOMEM, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %11, align 4
  br label %430

359:                                              ; preds = %347
  %360 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %361 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %7, align 8
  %362 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %365 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  store i64 %363, i64* %366, align 8
  %367 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %7, align 8
  %368 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %371 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 1
  store i64 %369, i64* %372, align 8
  %373 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %7, align 8
  %374 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %377 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 2
  store i64 %375, i64* %378, align 8
  %379 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %380 = call i32 @s3c2410fb_init_registers(%struct.fb_info* %379)
  %381 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %382 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %381, i32 0, i32 2
  %383 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %384 = call i32 @s3c2410fb_check_var(%struct.TYPE_4__* %382, %struct.fb_info* %383)
  %385 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %386 = call i32 @s3c2410fb_cpufreq_register(%struct.s3c2410fb_info* %385)
  store i32 %386, i32* %11, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %359
  %390 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %391 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %390, i32 0, i32 0
  %392 = call i32 (i32*, i8*, ...) @dev_err(i32* %391, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %427

393:                                              ; preds = %359
  %394 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %395 = call i32 @register_framebuffer(%struct.fb_info* %394)
  store i32 %395, i32* %11, align 4
  %396 = load i32, i32* %11, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %393
  %399 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %400 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %399, i32 0, i32 0
  %401 = load i32, i32* %11, align 4
  %402 = call i32 (i32*, i8*, ...) @dev_err(i32* %400, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %401)
  br label %424

403:                                              ; preds = %393
  %404 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %405 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %404, i32 0, i32 0
  %406 = call i32 @device_create_file(i32* %405, i32* @dev_attr_debug)
  store i32 %406, i32* %11, align 4
  %407 = load i32, i32* %11, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %403
  %410 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %411 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %410, i32 0, i32 0
  %412 = call i32 (i32*, i8*, ...) @dev_err(i32* %411, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  br label %413

413:                                              ; preds = %409, %403
  %414 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %415 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %414, i32 0, i32 0
  %416 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %417 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %420 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @dev_info(i32* %415, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %418, i32 %422)
  store i32 0, i32* %3, align 4
  br label %458

424:                                              ; preds = %398
  %425 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %426 = call i32 @s3c2410fb_cpufreq_deregister(%struct.s3c2410fb_info* %425)
  br label %427

427:                                              ; preds = %424, %389
  %428 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %429 = call i32 @s3c2410fb_unmap_video_memory(%struct.fb_info* %428)
  br label %430

430:                                              ; preds = %427, %352
  %431 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %432 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @clk_disable_unprepare(i32 %433)
  %435 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %436 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @clk_put(i32 %437)
  br label %439

439:                                              ; preds = %430, %274
  %440 = load i32, i32* %12, align 4
  %441 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %442 = call i32 @free_irq(i32 %440, %struct.s3c2410fb_info* %441)
  br label %443

443:                                              ; preds = %439, %257
  %444 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %445 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = call i32 @iounmap(i32* %446)
  br label %448

448:                                              ; preds = %443, %136
  %449 = load %struct.resource*, %struct.resource** %10, align 8
  %450 = getelementptr inbounds %struct.resource, %struct.resource* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %14, align 4
  %453 = call i32 @release_mem_region(i32 %451, i32 %452)
  br label %454

454:                                              ; preds = %448, %118, %95
  %455 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %456 = call i32 @framebuffer_release(%struct.fb_info* %455)
  %457 = load i32, i32* %11, align 4
  store i32 %457, i32* %3, align 4
  br label %458

458:                                              ; preds = %454, %413, %73, %61, %36, %22
  %459 = load i32, i32* %3, align 4
  ret i32 %459
}

declare dso_local %struct.s3c2410fb_mach_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @request_mem_region(i32, i32, i32) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.s3c2410fb_info*) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @s3c2410fb_map_video_memory(%struct.fb_info*) #1

declare dso_local i32 @s3c2410fb_init_registers(%struct.fb_info*) #1

declare dso_local i32 @s3c2410fb_check_var(%struct.TYPE_4__*, %struct.fb_info*) #1

declare dso_local i32 @s3c2410fb_cpufreq_register(%struct.s3c2410fb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @s3c2410fb_cpufreq_deregister(%struct.s3c2410fb_info*) #1

declare dso_local i32 @s3c2410fb_unmap_video_memory(%struct.fb_info*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @free_irq(i32, %struct.s3c2410fb_info*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
