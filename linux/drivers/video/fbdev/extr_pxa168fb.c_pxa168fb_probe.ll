; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa168fb_mach_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { i32, i32, i32*, %struct.TYPE_2__, i32, i32, i32, i32, i32*, i32*, %struct.pxa168fb_info* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.pxa168fb_info = type { i64, i32*, %struct.clk*, i32*, i32, i32, i64, i32, %struct.fb_info* }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"LCDCLK\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unable to get LCDCLK\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"no IO memory defined\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"no IRQ defined\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_PARTIAL_PAN_OK = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@pxa168fb_ops = common dso_local global i32 0, align 4
@DEFAULT_FB_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LCD_SPU_BLANKCOLOR = common dso_local global i32 0, align 4
@SPU_IOPAD_CONTROL = common dso_local global i32 0, align 4
@LCD_CFG_GRA_START_ADDR1 = common dso_local global i32 0, align 4
@LCD_SPU_GRA_OVSA_HPXL_VLN = common dso_local global i32 0, align 4
@LCD_SPU_SRAM_PARA0 = common dso_local global i32 0, align 4
@LCD_SPU_SRAM_PARA1 = common dso_local global i32 0, align 4
@pxa168fb_handle_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SPU_IRQ_ENA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to register pxa168-fb: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"frame buffer device init failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa168fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168fb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa168fb_mach_info*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.pxa168fb_info*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.fb_info* null, %struct.fb_info** %5, align 8
  store %struct.pxa168fb_info* null, %struct.pxa168fb_info** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.pxa168fb_mach_info* @dev_get_platdata(i32* %12)
  store %struct.pxa168fb_mach_info* %13, %struct.pxa168fb_mach_info** %4, align 8
  %14 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %15 = icmp eq %struct.pxa168fb_mach_info* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %373

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.clk* @devm_clk_get(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %25, %struct.clk** %8, align 8
  %26 = load %struct.clk*, %struct.clk** %8, align 8
  %27 = call i64 @IS_ERR(%struct.clk* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.clk*, %struct.clk** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.clk* %33)
  store i32 %34, i32* %2, align 4
  br label %373

35:                                               ; preds = %22
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %7, align 8
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = icmp eq %struct.resource* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %373

47:                                               ; preds = %35
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i32 @platform_get_irq(%struct.platform_device* %48, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %373

58:                                               ; preds = %47
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call %struct.fb_info* @framebuffer_alloc(i32 64, i32* %60)
  store %struct.fb_info* %61, %struct.fb_info** %5, align 8
  %62 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %63 = icmp eq %struct.fb_info* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %373

67:                                               ; preds = %58
  %68 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 10
  %70 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %69, align 8
  store %struct.pxa168fb_info* %70, %struct.pxa168fb_info** %6, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %72 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %73 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %72, i32 0, i32 8
  store %struct.fb_info* %71, %struct.fb_info** %73, align 8
  %74 = load %struct.clk*, %struct.clk** %8, align 8
  %75 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %76 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %75, i32 0, i32 2
  store %struct.clk* %74, %struct.clk** %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 9
  store i32* %78, i32** %80, align 8
  %81 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %82 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %81, i32 0, i32 1
  store i32* %78, i32** %82, align 8
  %83 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %84 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %87 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %89 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %91 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %94 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @FBINFO_DEFAULT, align 4
  %96 = load i32, i32* @FBINFO_PARTIAL_PAN_OK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %111 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strlcpy(i32 %109, i32 %112, i32 16)
  %114 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %115 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 10
  store i32 %114, i32* %117, align 8
  %118 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 9
  store i64 0, i64* %120, align 8
  %121 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 8
  store i64 0, i64* %123, align 8
  %124 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 7
  store i64 0, i64* %126, align 8
  %127 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 6
  store i64 0, i64* %129, align 8
  %130 = load %struct.resource*, %struct.resource** %7, align 8
  %131 = getelementptr inbounds %struct.resource, %struct.resource* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 5
  store i32 %132, i32* %135, align 8
  %136 = load %struct.resource*, %struct.resource** %7, align 8
  %137 = call i32 @resource_size(%struct.resource* %136)
  %138 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @FB_ACCEL_NONE, align 4
  %142 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  store i32 %141, i32* %144, align 8
  %145 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 8
  store i32* @pxa168fb_ops, i32** %146, align 8
  %147 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %148 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 4
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load %struct.resource*, %struct.resource** %7, align 8
  %155 = getelementptr inbounds %struct.resource, %struct.resource* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.resource*, %struct.resource** %7, align 8
  %158 = call i32 @resource_size(%struct.resource* %157)
  %159 = call i32* @devm_ioremap_nocache(i32* %153, i32 %156, i32 %158)
  %160 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %161 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %160, i32 0, i32 3
  store i32* %159, i32** %161, align 8
  %162 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %163 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %67
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %365

169:                                              ; preds = %67
  %170 = load i32, i32* @DEFAULT_FB_SIZE, align 4
  %171 = call i32 @PAGE_ALIGN(i32 %170)
  %172 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 8
  %175 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %176 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %179 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %183 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %182, i32 0, i32 0
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call i32* @dma_alloc_wc(i32* %177, i32 %181, i64* %183, i32 %184)
  %186 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 2
  store i32* %185, i32** %187, align 8
  %188 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %189 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = icmp eq i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %169
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %10, align 4
  br label %365

195:                                              ; preds = %169
  %196 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %197 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %200 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i64 %198, i64* %201, align 8
  %202 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %203 = call i32 @set_graphics_start(%struct.fb_info* %202, i32 0, i32 0)
  %204 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %205 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 5
  %207 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %208 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %211 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @set_mode(%struct.pxa168fb_info* %204, i32* %206, i32 %209, i32 %212, i32 1)
  %214 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %215 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %218 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %221 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %220, i32 0, i32 6
  %222 = call i32 @fb_videomode_to_modelist(i32 %216, i32 %219, i32* %221)
  %223 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %224 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %225 = call i32 @pxa168fb_init_mode(%struct.fb_info* %223, %struct.pxa168fb_mach_info* %224)
  %226 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %227 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %226, i32 0, i32 5
  %228 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %229 = call i32 @pxa168fb_check_var(i32* %227, %struct.fb_info* %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %195
  br label %350

233:                                              ; preds = %195
  %234 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %235 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %234, i32 0, i32 2
  %236 = load %struct.clk*, %struct.clk** %235, align 8
  %237 = call i32 @clk_prepare_enable(%struct.clk* %236)
  %238 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %239 = call i32 @pxa168fb_set_par(%struct.fb_info* %238)
  %240 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %241 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* @LCD_SPU_BLANKCOLOR, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = call i32 @writel(i32 0, i32* %245)
  %247 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %248 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %251 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* @SPU_IOPAD_CONTROL, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = call i32 @writel(i32 %249, i32* %255)
  %257 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %258 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* @LCD_CFG_GRA_START_ADDR1, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = call i32 @writel(i32 0, i32* %262)
  %264 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %265 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* @LCD_SPU_GRA_OVSA_HPXL_VLN, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = call i32 @writel(i32 0, i32* %269)
  %271 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %272 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* @LCD_SPU_SRAM_PARA0, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = call i32 @writel(i32 0, i32* %276)
  %278 = call i32 @CFG_CSB_256x32(i32 1)
  %279 = call i32 @CFG_CSB_256x24(i32 1)
  %280 = or i32 %278, %279
  %281 = call i32 @CFG_CSB_256x8(i32 1)
  %282 = or i32 %280, %281
  %283 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %284 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* @LCD_SPU_SRAM_PARA1, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = call i32 @writel(i32 %282, i32* %288)
  %290 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %291 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %290, i32 0, i32 4
  %292 = call i64 @fb_alloc_cmap(i32* %291, i32 256, i32 0)
  %293 = icmp slt i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %233
  %295 = load i32, i32* @ENOMEM, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %10, align 4
  br label %345

297:                                              ; preds = %233
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %298, i32 0, i32 0
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* @pxa168fb_handle_irq, align 4
  %302 = load i32, i32* @IRQF_SHARED, align 4
  %303 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %304 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %308 = call i32 @devm_request_irq(i32* %299, i32 %300, i32 %301, i32 %302, i32 %306, %struct.pxa168fb_info* %307)
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %10, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %297
  %312 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %313 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %312, i32 0, i32 0
  %314 = call i32 (i32*, i8*, ...) @dev_err(i32* %313, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %315 = load i32, i32* @ENXIO, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %10, align 4
  br label %341

317:                                              ; preds = %297
  %318 = call i32 @GRA_FRAME_IRQ0_ENA(i32 1)
  %319 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %320 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* @SPU_IRQ_ENA, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = call i32 @writel(i32 %318, i32* %324)
  %326 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %327 = call i32 @register_framebuffer(%struct.fb_info* %326)
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* %10, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %317
  %331 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %332 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %331, i32 0, i32 0
  %333 = load i32, i32* %10, align 4
  %334 = call i32 (i32*, i8*, ...) @dev_err(i32* %332, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %333)
  %335 = load i32, i32* @ENXIO, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %10, align 4
  br label %341

337:                                              ; preds = %317
  %338 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %339 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %340 = call i32 @platform_set_drvdata(%struct.platform_device* %338, %struct.pxa168fb_info* %339)
  store i32 0, i32* %2, align 4
  br label %373

341:                                              ; preds = %330, %311
  %342 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %343 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %342, i32 0, i32 4
  %344 = call i32 @fb_dealloc_cmap(i32* %343)
  br label %345

345:                                              ; preds = %341, %294
  %346 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %347 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %346, i32 0, i32 2
  %348 = load %struct.clk*, %struct.clk** %347, align 8
  %349 = call i32 @clk_disable_unprepare(%struct.clk* %348)
  br label %350

350:                                              ; preds = %345, %232
  %351 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %352 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %355 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %359 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %358, i32 0, i32 2
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %362 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @dma_free_coherent(i32* %353, i32 %357, i32* %360, i64 %363)
  br label %365

365:                                              ; preds = %350, %192, %166
  %366 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %367 = call i32 @kfree(%struct.fb_info* %366)
  %368 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %369 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %368, i32 0, i32 0
  %370 = load i32, i32* %10, align 4
  %371 = call i32 (i32*, i8*, ...) @dev_err(i32* %369, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* %10, align 4
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %365, %337, %64, %52, %41, %29, %16
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local %struct.pxa168fb_mach_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32* @dma_alloc_wc(i32*, i32, i64*, i32) #1

declare dso_local i32 @set_graphics_start(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @set_mode(%struct.pxa168fb_info*, i32*, i32, i32, i32) #1

declare dso_local i32 @fb_videomode_to_modelist(i32, i32, i32*) #1

declare dso_local i32 @pxa168fb_init_mode(%struct.fb_info*, %struct.pxa168fb_mach_info*) #1

declare dso_local i32 @pxa168fb_check_var(i32*, %struct.fb_info*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @pxa168fb_set_par(%struct.fb_info*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @CFG_CSB_256x32(i32) #1

declare dso_local i32 @CFG_CSB_256x24(i32) #1

declare dso_local i32 @CFG_CSB_256x8(i32) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.pxa168fb_info*) #1

declare dso_local i32 @GRA_FRAME_IRQ0_ENA(i32) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa168fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @kfree(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
