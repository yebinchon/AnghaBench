; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pruss.c_pruss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pruss.c_pruss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uio_info = type { i64, %struct.uio_info*, i32, i64, i64, i32, i32, %struct.uio_info*, %struct.uio_info*, i32, i64, i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i64 }
%struct.uio_pruss_dev = type { i64, %struct.uio_pruss_dev*, i32, i64, i64, i32, i32, %struct.uio_pruss_dev*, %struct.uio_pruss_dev*, i32, i64, i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.resource = type { i64 }
%struct.uio_pruss_pdata = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_PRUSS_EVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pruss\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"No PRUSS I/O resource specified\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid memory resource\0A\00", align 1
@sram_pool_sz = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Could not allocate SRAM pool\0A\00", align 1
@extram_pool_sz = common dso_local global i8* null, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not allocate external memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Can't remap PRUSS I/O  address range\0A\00", align 1
@UIO_MEM_PHYS = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"pruss_evt%d\00", align 1
@DRV_VERSION = common dso_local global i32 0, align 4
@pruss_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pruss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pruss_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uio_info*, align 8
  %5 = alloca %struct.uio_pruss_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uio_pruss_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.uio_pruss_pdata* @dev_get_platdata(%struct.device* %15)
  store %struct.uio_pruss_pdata* %16, %struct.uio_pruss_pdata** %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.uio_pruss_dev* @kzalloc(i32 120, i32 %17)
  store %struct.uio_pruss_dev* %18, %struct.uio_pruss_dev** %5, align 8
  %19 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %20 = icmp ne %struct.uio_pruss_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %353

24:                                               ; preds = %1
  %25 = load i32, i32* @MAX_PRUSS_EVT, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.uio_pruss_dev* @kcalloc(i32 %25, i32 120, i32 %26)
  %28 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %29 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %28, i32 0, i32 1
  store %struct.uio_pruss_dev* %27, %struct.uio_pruss_dev** %29, align 8
  %30 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %31 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %30, i32 0, i32 1
  %32 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %31, align 8
  %33 = icmp ne %struct.uio_pruss_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %349

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call i32 @clk_get(%struct.device* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %41 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %43 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %51 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %8, align 4
  br label %344

54:                                               ; preds = %37
  %55 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %56 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @clk_enable(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %339

64:                                               ; preds = %54
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %6, align 8
  %68 = load %struct.resource*, %struct.resource** %6, align 8
  %69 = icmp ne %struct.resource* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %334

75:                                               ; preds = %64
  %76 = load %struct.resource*, %struct.resource** %6, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %334

85:                                               ; preds = %75
  %86 = load %struct.uio_pruss_pdata*, %struct.uio_pruss_pdata** %12, align 8
  %87 = getelementptr inbounds %struct.uio_pruss_pdata, %struct.uio_pruss_pdata* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %85
  %91 = load %struct.uio_pruss_pdata*, %struct.uio_pruss_pdata** %12, align 8
  %92 = getelementptr inbounds %struct.uio_pruss_pdata, %struct.uio_pruss_pdata* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %95 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %97 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i8*, i8** @sram_pool_sz, align 8
  %100 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %101 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %100, i32 0, i32 14
  %102 = call i64 @gen_pool_dma_alloc(i64 %98, i8* %99, i64* %101)
  %103 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %104 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %106 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %90
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %334

114:                                              ; preds = %90
  br label %115

115:                                              ; preds = %114, %85
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load i8*, i8** @extram_pool_sz, align 8
  %118 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %119 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %118, i32 0, i32 4
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = load i32, i32* @GFP_DMA, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @dma_alloc_coherent(%struct.device* %116, i8* %117, i64* %119, i32 %122)
  %124 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %125 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %127 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %115
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %8, align 4
  br label %319

135:                                              ; preds = %115
  %136 = load %struct.resource*, %struct.resource** %6, align 8
  %137 = call i8* @resource_size(%struct.resource* %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %11, align 4
  %139 = load %struct.resource*, %struct.resource** %6, align 8
  %140 = getelementptr inbounds %struct.resource, %struct.resource* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @ioremap(i64 %141, i32 %142)
  %144 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %145 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 4
  %146 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %147 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %135
  %151 = load %struct.device*, %struct.device** %7, align 8
  %152 = call i32 @dev_err(%struct.device* %151, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %309

155:                                              ; preds = %135
  %156 = load %struct.uio_pruss_pdata*, %struct.uio_pruss_pdata** %12, align 8
  %157 = getelementptr inbounds %struct.uio_pruss_pdata, %struct.uio_pruss_pdata* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %160 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %159, i32 0, i32 15
  store i32 %158, i32* %160, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = call i64 @platform_get_irq(%struct.platform_device* %161, i32 0)
  %163 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %164 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %163, i32 0, i32 10
  store i64 %162, i64* %164, align 8
  store i32 0, i32* %9, align 4
  %165 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %166 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %165, i32 0, i32 1
  %167 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %166, align 8
  %168 = bitcast %struct.uio_pruss_dev* %167 to %struct.uio_info*
  store %struct.uio_info* %168, %struct.uio_info** %4, align 8
  br label %169

169:                                              ; preds = %272, %155
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @MAX_PRUSS_EVT, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %277

173:                                              ; preds = %169
  %174 = load %struct.resource*, %struct.resource** %6, align 8
  %175 = getelementptr inbounds %struct.resource, %struct.resource* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %178 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %177, i32 0, i32 13
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 2
  store i64 %176, i64* %181, align 8
  %182 = load %struct.resource*, %struct.resource** %6, align 8
  %183 = call i8* @resource_size(%struct.resource* %182)
  %184 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %185 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %184, i32 0, i32 13
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  store i8* %183, i8** %188, align 8
  %189 = load i8*, i8** @UIO_MEM_PHYS, align 8
  %190 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %191 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %190, i32 0, i32 13
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  store i8* %189, i8** %194, align 8
  %195 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %196 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %195, i32 0, i32 14
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %199 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %198, i32 0, i32 13
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 1
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  store i64 %197, i64* %202, align 8
  %203 = load i8*, i8** @sram_pool_sz, align 8
  %204 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %205 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %204, i32 0, i32 13
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  store i8* %203, i8** %208, align 8
  %209 = load i8*, i8** @UIO_MEM_PHYS, align 8
  %210 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %211 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %210, i32 0, i32 13
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  store i8* %209, i8** %214, align 8
  %215 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %216 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %219 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %218, i32 0, i32 13
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 2
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 2
  store i64 %217, i64* %222, align 8
  %223 = load i8*, i8** @extram_pool_sz, align 8
  %224 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %225 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %224, i32 0, i32 13
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 2
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  store i8* %223, i8** %228, align 8
  %229 = load i8*, i8** @UIO_MEM_PHYS, align 8
  %230 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %231 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %230, i32 0, i32 13
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 2
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  store i8* %229, i8** %234, align 8
  %235 = load i32, i32* @GFP_KERNEL, align 4
  %236 = load i32, i32* %9, align 4
  %237 = call %struct.uio_pruss_dev* @kasprintf(i32 %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %236)
  %238 = bitcast %struct.uio_pruss_dev* %237 to %struct.uio_info*
  %239 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %240 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %239, i32 0, i32 7
  store %struct.uio_info* %238, %struct.uio_info** %240, align 8
  %241 = load i32, i32* @DRV_VERSION, align 4
  %242 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %243 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %242, i32 0, i32 12
  store i32 %241, i32* %243, align 8
  %244 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %245 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %244, i32 0, i32 10
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %246, %248
  %250 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %251 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %250, i32 0, i32 11
  store i64 %249, i64* %251, align 8
  %252 = load i32, i32* @pruss_handler, align 4
  %253 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %254 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %253, i32 0, i32 9
  store i32 %252, i32* %254, align 8
  %255 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %256 = bitcast %struct.uio_pruss_dev* %255 to %struct.uio_info*
  %257 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %258 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %257, i32 0, i32 8
  store %struct.uio_info* %256, %struct.uio_info** %258, align 8
  %259 = load %struct.device*, %struct.device** %7, align 8
  %260 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %261 = bitcast %struct.uio_info* %260 to %struct.uio_pruss_dev*
  %262 = call i32 @uio_register_device(%struct.device* %259, %struct.uio_pruss_dev* %261)
  store i32 %262, i32* %8, align 4
  %263 = load i32, i32* %8, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %173
  %266 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %267 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %266, i32 0, i32 7
  %268 = load %struct.uio_info*, %struct.uio_info** %267, align 8
  %269 = bitcast %struct.uio_info* %268 to %struct.uio_pruss_dev*
  %270 = call i32 @kfree(%struct.uio_pruss_dev* %269)
  br label %281

271:                                              ; preds = %173
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %9, align 4
  %275 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %276 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %275, i32 1
  store %struct.uio_info* %276, %struct.uio_info** %4, align 8
  br label %169

277:                                              ; preds = %169
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %280 = call i32 @platform_set_drvdata(%struct.platform_device* %278, %struct.uio_pruss_dev* %279)
  store i32 0, i32* %2, align 4
  br label %353

281:                                              ; preds = %265
  store i32 0, i32* %10, align 4
  %282 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %283 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %282, i32 0, i32 1
  %284 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %283, align 8
  %285 = bitcast %struct.uio_pruss_dev* %284 to %struct.uio_info*
  store %struct.uio_info* %285, %struct.uio_info** %4, align 8
  br label %286

286:                                              ; preds = %299, %281
  %287 = load i32, i32* %10, align 4
  %288 = load i32, i32* %9, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %286
  %291 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %292 = bitcast %struct.uio_info* %291 to %struct.uio_pruss_dev*
  %293 = call i32 @uio_unregister_device(%struct.uio_pruss_dev* %292)
  %294 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %295 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %294, i32 0, i32 7
  %296 = load %struct.uio_info*, %struct.uio_info** %295, align 8
  %297 = bitcast %struct.uio_info* %296 to %struct.uio_pruss_dev*
  %298 = call i32 @kfree(%struct.uio_pruss_dev* %297)
  br label %299

299:                                              ; preds = %290
  %300 = load i32, i32* %10, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %10, align 4
  %302 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %303 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %302, i32 1
  store %struct.uio_info* %303, %struct.uio_info** %4, align 8
  br label %286

304:                                              ; preds = %286
  %305 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %306 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @iounmap(i32 %307)
  br label %309

309:                                              ; preds = %304, %150
  %310 = load %struct.device*, %struct.device** %7, align 8
  %311 = load i8*, i8** @extram_pool_sz, align 8
  %312 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %313 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %316 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @dma_free_coherent(%struct.device* %310, i8* %311, i32 %314, i64 %317)
  br label %319

319:                                              ; preds = %309, %130
  %320 = load %struct.uio_pruss_pdata*, %struct.uio_pruss_pdata** %12, align 8
  %321 = getelementptr inbounds %struct.uio_pruss_pdata, %struct.uio_pruss_pdata* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %319
  %325 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %326 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %329 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i8*, i8** @sram_pool_sz, align 8
  %332 = call i32 @gen_pool_free(i64 %327, i64 %330, i8* %331)
  br label %333

333:                                              ; preds = %324, %319
  br label %334

334:                                              ; preds = %333, %109, %80, %70
  %335 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %336 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @clk_disable(i32 %337)
  br label %339

339:                                              ; preds = %334, %61
  %340 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %341 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @clk_put(i32 %342)
  br label %344

344:                                              ; preds = %339, %47
  %345 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %346 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %345, i32 0, i32 1
  %347 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %346, align 8
  %348 = call i32 @kfree(%struct.uio_pruss_dev* %347)
  br label %349

349:                                              ; preds = %344, %34
  %350 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %5, align 8
  %351 = call i32 @kfree(%struct.uio_pruss_dev* %350)
  %352 = load i32, i32* %8, align 4
  store i32 %352, i32* %2, align 4
  br label %353

353:                                              ; preds = %349, %277, %21
  %354 = load i32, i32* %2, align 4
  ret i32 %354
}

declare dso_local %struct.uio_pruss_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.uio_pruss_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.uio_pruss_dev* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @gen_pool_dma_alloc(i64, i8*, i64*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i8*, i64*, i32) #1

declare dso_local i8* @resource_size(%struct.resource*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.uio_pruss_dev* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @uio_register_device(%struct.device*, %struct.uio_pruss_dev*) #1

declare dso_local i32 @kfree(%struct.uio_pruss_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uio_pruss_dev*) #1

declare dso_local i32 @uio_unregister_device(%struct.uio_pruss_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @gen_pool_free(i64, i64, i8*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
