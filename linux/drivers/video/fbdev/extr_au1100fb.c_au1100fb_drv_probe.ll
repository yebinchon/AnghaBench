; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.au1100fb_device = type { i32, i32, %struct.TYPE_8__, %struct.clk*, i32, %struct.TYPE_7__*, i32, i32, %struct.au1100fb_regs*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_10__, i32, %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.clk = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.au1100fb_regs = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"fail to retrieve registers resource\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@au1100fb_fix = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"fail to lock memory region at 0x%08lx\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Register memory map at %p\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"phys=0x%08x, size=%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"lcd_intclk\00", align 1
@AU1100FB_NBR_VIDEO_BUFFERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"fail to allocate framebuffer (size: %dK))\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Framebuffer memory map at %p\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"phys=0x%08x, size=%dK\00", align 1
@au1100fb_var = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@au1100fb_ops = common dso_local global i32 0, align 4
@AU1100_LCD_NBR_PALETTE_ENTRIES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Fail to allocate colormap (%d entries)\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"cannot register new framebuffer\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1100fb_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1100fb_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.au1100fb_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.au1100fb_device* @devm_kzalloc(i32* %8, i32 120, i32 %9)
  store %struct.au1100fb_device* %10, %struct.au1100fb_device** %4, align 8
  %11 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %12 = icmp ne %struct.au1100fb_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %253

16:                                               ; preds = %1
  %17 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %18 = call i64 @au1100fb_setup(%struct.au1100fb_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %224

21:                                               ; preds = %16
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %24 = bitcast %struct.au1100fb_device* %23 to i8*
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %22, i8* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %29 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %28, i32 0, i32 9
  store i32* %27, i32** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %5, align 8
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = call i32 (i8*, ...) @print_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %253

39:                                               ; preds = %21
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 2), align 4
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 3), align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 2), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 3), align 4
  %49 = load i32, i32* @DRIVER_NAME, align 4
  %50 = call i32 @devm_request_mem_region(i32* %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 2), align 4
  %54 = call i32 (i8*, ...) @print_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %253

57:                                               ; preds = %39
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 2), align 4
  %59 = call i64 @KSEG1ADDR(i32 %58)
  %60 = inttoptr i64 %59 to %struct.au1100fb_regs*
  %61 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %62 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %61, i32 0, i32 8
  store %struct.au1100fb_regs* %60, %struct.au1100fb_regs** %62, align 8
  %63 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %64 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %63, i32 0, i32 8
  %65 = load %struct.au1100fb_regs*, %struct.au1100fb_regs** %64, align 8
  %66 = ptrtoint %struct.au1100fb_regs* %65 to i32
  %67 = call i32 (i8*, i32, ...) @print_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %69 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %72 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i32, ...) @print_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73)
  %75 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store %struct.clk* %75, %struct.clk** %6, align 8
  %76 = load %struct.clk*, %struct.clk** %6, align 8
  %77 = call i32 @IS_ERR(%struct.clk* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %57
  %80 = load %struct.clk*, %struct.clk** %6, align 8
  %81 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %82 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %81, i32 0, i32 3
  store %struct.clk* %80, %struct.clk** %82, align 8
  %83 = load %struct.clk*, %struct.clk** %6, align 8
  %84 = call i32 @clk_set_rate(%struct.clk* %83, i32 48000000)
  %85 = load %struct.clk*, %struct.clk** %6, align 8
  %86 = call i32 @clk_prepare_enable(%struct.clk* %85)
  br label %87

87:                                               ; preds = %79, %57
  %88 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %89 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %88, i32 0, i32 5
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %94 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %93, i32 0, i32 5
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %92, %97
  %99 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %100 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %99, i32 0, i32 5
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 3
  %105 = mul nsw i32 %98, %104
  %106 = load i32, i32* @AU1100FB_NBR_VIDEO_BUFFERS, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %109 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %113 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @PAGE_ALIGN(i32 %114)
  %116 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %117 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %116, i32 0, i32 6
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i32 @dmam_alloc_coherent(i32* %111, i32 %115, i32* %117, i32 %118)
  %120 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %121 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %123 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %87
  %127 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %128 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 1024
  %131 = call i32 (i8*, ...) @print_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %253

134:                                              ; preds = %87
  %135 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %136 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 1), align 4
  %138 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %139 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @au1100fb_fix, i32 0, i32 0), align 4
  %141 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %142 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i8*, i32, ...) @print_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %146 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %149 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %150, 1024
  %152 = call i32 (i8*, i32, ...) @print_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %151)
  %153 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %154 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %153, i32 0, i32 5
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @au1100fb_var, i32 0, i32 0), align 4
  %158 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %159 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %158, i32 0, i32 5
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @au1100fb_var, i32 0, i32 1), align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @au1100fb_var, i32 0, i32 1), align 4
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @au1100fb_var, i32 0, i32 2), align 4
  %164 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %165 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %164, i32 0, i32 5
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @au1100fb_var, i32 0, i32 3), align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @au1100fb_var, i32 0, i32 3), align 4
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @au1100fb_var, i32 0, i32 4), align 4
  %170 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %171 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %174 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 5
  store i32 %172, i32* %175, align 8
  %176 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %177 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  store i32* @au1100fb_ops, i32** %178, align 8
  %179 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %180 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = bitcast %struct.TYPE_11__* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 4 bitcast (%struct.TYPE_11__* @au1100fb_fix to i8*), i64 16, i1 false)
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i32, i32* @GFP_KERNEL, align 4
  %186 = call i32 @devm_kcalloc(i32* %184, i32 16, i32 4, i32 %185)
  %187 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %188 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 4
  %190 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %191 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %134
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %253

198:                                              ; preds = %134
  %199 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %200 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* @AU1100_LCD_NBR_PALETTE_ENTRIES, align 4
  %203 = call i64 @fb_alloc_cmap(%struct.TYPE_9__* %201, i32 %202, i32 0)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load i32, i32* @AU1100_LCD_NBR_PALETTE_ENTRIES, align 4
  %207 = call i32 (i8*, ...) @print_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @EFAULT, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %2, align 4
  br label %253

210:                                              ; preds = %198
  %211 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %212 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = bitcast %struct.TYPE_10__* %213 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %214, i8* align 4 bitcast (%struct.TYPE_10__* @au1100fb_var to i8*), i64 20, i1 false)
  %215 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %216 = call i32 @au1100fb_setmode(%struct.au1100fb_device* %215)
  %217 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %218 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %217, i32 0, i32 2
  %219 = call i64 @register_framebuffer(%struct.TYPE_8__* %218)
  %220 = icmp slt i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = call i32 (i8*, ...) @print_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %224

223:                                              ; preds = %210
  store i32 0, i32* %2, align 4
  br label %253

224:                                              ; preds = %221, %20
  %225 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %226 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %225, i32 0, i32 3
  %227 = load %struct.clk*, %struct.clk** %226, align 8
  %228 = icmp ne %struct.clk* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %224
  %230 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %231 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %230, i32 0, i32 3
  %232 = load %struct.clk*, %struct.clk** %231, align 8
  %233 = call i32 @clk_disable_unprepare(%struct.clk* %232)
  %234 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %235 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %234, i32 0, i32 3
  %236 = load %struct.clk*, %struct.clk** %235, align 8
  %237 = call i32 @clk_put(%struct.clk* %236)
  br label %238

238:                                              ; preds = %229, %224
  %239 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %240 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %238
  %246 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %247 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = call i32 @fb_dealloc_cmap(%struct.TYPE_9__* %248)
  br label %250

250:                                              ; preds = %245, %238
  %251 = load i32, i32* @ENODEV, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %250, %223, %205, %195, %126, %52, %35, %13
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.au1100fb_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @au1100fb_setup(%struct.au1100fb_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @print_err(i8*, ...) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i64 @KSEG1ADDR(i32) #1

declare dso_local i32 @print_dbg(i8*, i32, ...) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @dmam_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i64 @fb_alloc_cmap(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @au1100fb_setmode(%struct.au1100fb_device*) #1

declare dso_local i64 @register_framebuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
