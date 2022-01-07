; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.of_device_id = type { %struct.spi_imx_devtype_data* }
%struct.spi_imx_devtype_data = type { i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data.0*)*, i64, i64 }
%struct.spi_imx_data = type opaque
%struct.spi_imx_data.0 = type opaque
%struct.spi_imx_master = type { i32, i32* }
%struct.spi_master = type { i32, i32, i32*, i32, %struct.TYPE_20__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.device_node* }
%struct.spi_imx_data.1 = type { i32, i32, i8*, i8*, %struct.TYPE_19__, %struct.spi_imx_devtype_data*, i32, i32, i8*, i32, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.spi_master*, i32, i32, i32 }
%struct.resource = type { i32 }

@spi_imx_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't get the platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"fsl,spi-rdy-drctl\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@spi_imx_chipselect = common dso_local global i32 0, align 4
@spi_imx_setupxfer = common dso_local global i32 0, align 4
@spi_imx_transfer = common dso_local global i32 0, align 4
@spi_imx_setup = common dso_local global i32 0, align 4
@spi_imx_cleanup = common dso_local global i32 0, align 4
@spi_imx_prepare_message = common dso_local global i32 0, align 4
@spi_imx_unprepare_message = common dso_local global i32 0, align 4
@spi_imx_slave_abort = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_NO_CS = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SPI_READY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@spi_imx_isr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"can't get irq%d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"dma setup error %d, use pio\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"bitbang start failed with %d\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Can't get CS GPIO %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_imx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.spi_imx_master*, align 8
  %7 = alloca %struct.spi_master*, align 8
  %8 = alloca %struct.spi_imx_data.1*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.spi_imx_devtype_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %4, align 8
  %21 = load i32, i32* @spi_imx_dt_ids, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = call %struct.of_device_id* @of_match_device(i32 %21, %struct.TYPE_18__* %23)
  store %struct.of_device_id* %24, %struct.of_device_id** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = call %struct.spi_imx_master* @dev_get_platdata(%struct.TYPE_18__* %26)
  store %struct.spi_imx_master* %27, %struct.spi_imx_master** %6, align 8
  %28 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %29 = icmp ne %struct.of_device_id* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %31, i32 0, i32 0
  %33 = load %struct.spi_imx_devtype_data*, %struct.spi_imx_devtype_data** %32, align 8
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.spi_imx_devtype_data*
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi %struct.spi_imx_devtype_data* [ %33, %30 ], [ %40, %34 ]
  store %struct.spi_imx_devtype_data* %42, %struct.spi_imx_devtype_data** %14, align 8
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load %struct.spi_imx_master*, %struct.spi_imx_master** %6, align 8
  %47 = icmp ne %struct.spi_imx_master* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 1
  %51 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %526

54:                                               ; preds = %45, %41
  %55 = load %struct.spi_imx_devtype_data*, %struct.spi_imx_devtype_data** %14, align 8
  %56 = getelementptr inbounds %struct.spi_imx_devtype_data, %struct.spi_imx_devtype_data* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.device_node*, %struct.device_node** %4, align 8
  %61 = call i64 @of_property_read_bool(%struct.device_node* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 1
  %71 = call %struct.spi_master* @spi_alloc_slave(%struct.TYPE_18__* %70, i32 88)
  store %struct.spi_master* %71, %struct.spi_master** %7, align 8
  br label %76

72:                                               ; preds = %63
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 1
  %75 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_18__* %74, i32 88)
  store %struct.spi_master* %75, %struct.spi_master** %7, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %78 = icmp ne %struct.spi_master* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %526

82:                                               ; preds = %76
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i32 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = icmp sge i32 %88, 3
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %82
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %94 = call i32 @platform_set_drvdata(%struct.platform_device* %92, %struct.spi_master* %93)
  %95 = call i32 @SPI_BPW_RANGE_MASK(i32 1, i32 32)
  %96 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %97 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 4
  %98 = load %struct.device_node*, %struct.device_node** %4, align 8
  %99 = icmp ne %struct.device_node* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  br label %105

105:                                              ; preds = %101, %100
  %106 = phi i32 [ -1, %100 ], [ %104, %101 ]
  %107 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %108 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %110 = call %struct.spi_imx_data.1* @spi_master_get_devdata(%struct.spi_master* %109)
  store %struct.spi_imx_data.1* %110, %struct.spi_imx_data.1** %8, align 8
  %111 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %112 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %113 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  store %struct.spi_master* %111, %struct.spi_master** %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 1
  %117 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %118 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %117, i32 0, i32 10
  store %struct.TYPE_18__* %116, %struct.TYPE_18__** %118, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %121 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.spi_imx_devtype_data*, %struct.spi_imx_devtype_data** %14, align 8
  %123 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %124 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %123, i32 0, i32 5
  store %struct.spi_imx_devtype_data* %122, %struct.spi_imx_devtype_data** %124, align 8
  %125 = load %struct.spi_imx_master*, %struct.spi_imx_master** %6, align 8
  %126 = icmp ne %struct.spi_imx_master* %125, null
  br i1 %126, label %127, label %180

127:                                              ; preds = %105
  %128 = load %struct.spi_imx_master*, %struct.spi_imx_master** %6, align 8
  %129 = getelementptr inbounds %struct.spi_imx_master, %struct.spi_imx_master* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %132 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.spi_imx_master*, %struct.spi_imx_master** %6, align 8
  %134 = getelementptr inbounds %struct.spi_imx_master, %struct.spi_imx_master* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %179

137:                                              ; preds = %127
  %138 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %139 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %138, i32 0, i32 4
  %140 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %141 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i32* @devm_kcalloc(%struct.TYPE_20__* %139, i32 %142, i32 4, i32 %143)
  %145 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %146 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %145, i32 0, i32 2
  store i32* %144, i32** %146, align 8
  %147 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %148 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %137
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %526

154:                                              ; preds = %137
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %175, %154
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %158 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %155
  %162 = load %struct.spi_imx_master*, %struct.spi_imx_master** %6, align 8
  %163 = getelementptr inbounds %struct.spi_imx_master, %struct.spi_imx_master* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %170 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %155

178:                                              ; preds = %155
  br label %179

179:                                              ; preds = %178, %127
  br label %189

180:                                              ; preds = %105
  %181 = load %struct.device_node*, %struct.device_node** %4, align 8
  %182 = call i32 @of_property_read_u32(%struct.device_node* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %16)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %16, align 4
  %186 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %187 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %188, %179
  %190 = load i32, i32* @spi_imx_chipselect, align 4
  %191 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %192 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 3
  store i32 %190, i32* %193, align 8
  %194 = load i32, i32* @spi_imx_setupxfer, align 4
  %195 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %196 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 4
  %198 = load i32, i32* @spi_imx_transfer, align 4
  %199 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %200 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 8
  %202 = load i32, i32* @spi_imx_setup, align 4
  %203 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %204 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load %struct.spi_master*, %struct.spi_master** %205, align 8
  %207 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %206, i32 0, i32 9
  store i32 %202, i32* %207, align 8
  %208 = load i32, i32* @spi_imx_cleanup, align 4
  %209 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %210 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load %struct.spi_master*, %struct.spi_master** %211, align 8
  %213 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %212, i32 0, i32 8
  store i32 %208, i32* %213, align 4
  %214 = load i32, i32* @spi_imx_prepare_message, align 4
  %215 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %216 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load %struct.spi_master*, %struct.spi_master** %217, align 8
  %219 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %218, i32 0, i32 7
  store i32 %214, i32* %219, align 8
  %220 = load i32, i32* @spi_imx_unprepare_message, align 4
  %221 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %222 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load %struct.spi_master*, %struct.spi_master** %223, align 8
  %225 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %224, i32 0, i32 6
  store i32 %220, i32* %225, align 4
  %226 = load i32, i32* @spi_imx_slave_abort, align 4
  %227 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %228 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load %struct.spi_master*, %struct.spi_master** %229, align 8
  %231 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %230, i32 0, i32 5
  store i32 %226, i32* %231, align 8
  %232 = load i32, i32* @SPI_CPOL, align 4
  %233 = load i32, i32* @SPI_CPHA, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @SPI_CS_HIGH, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @SPI_NO_CS, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %240 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load %struct.spi_master*, %struct.spi_master** %241, align 8
  %243 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %242, i32 0, i32 3
  store i32 %238, i32* %243, align 8
  %244 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %245 = call i64 @is_imx35_cspi(%struct.spi_imx_data.1* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %255, label %247

247:                                              ; preds = %189
  %248 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %249 = call i64 @is_imx51_ecspi(%struct.spi_imx_data.1* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %253 = call i64 @is_imx53_ecspi(%struct.spi_imx_data.1* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %251, %247, %189
  %256 = load i32, i32* @SPI_LOOP, align 4
  %257 = load i32, i32* @SPI_READY, align 4
  %258 = or i32 %256, %257
  %259 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %260 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = load %struct.spi_master*, %struct.spi_master** %261, align 8
  %263 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %258
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %255, %251
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %269 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %271 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %270, i32 0, i32 9
  %272 = call i32 @init_completion(i32* %271)
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = load i32, i32* @IORESOURCE_MEM, align 4
  %275 = call %struct.resource* @platform_get_resource(%struct.platform_device* %273, i32 %274, i32 0)
  store %struct.resource* %275, %struct.resource** %9, align 8
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 1
  %278 = load %struct.resource*, %struct.resource** %9, align 8
  %279 = call i8* @devm_ioremap_resource(%struct.TYPE_18__* %277, %struct.resource* %278)
  %280 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %281 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %280, i32 0, i32 8
  store i8* %279, i8** %281, align 8
  %282 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %283 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %282, i32 0, i32 8
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @IS_ERR(i8* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %266
  %288 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %289 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %288, i32 0, i32 8
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @PTR_ERR(i8* %290)
  store i32 %291, i32* %11, align 4
  br label %522

292:                                              ; preds = %266
  %293 = load %struct.resource*, %struct.resource** %9, align 8
  %294 = getelementptr inbounds %struct.resource, %struct.resource* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %297 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %296, i32 0, i32 7
  store i32 %295, i32* %297, align 4
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = call i32 @platform_get_irq(%struct.platform_device* %298, i32 0)
  store i32 %299, i32* %12, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %292
  %303 = load i32, i32* %12, align 4
  store i32 %303, i32* %11, align 4
  br label %522

304:                                              ; preds = %292
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %305, i32 0, i32 1
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* @spi_imx_isr, align 4
  %309 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %310 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %309, i32 0, i32 1
  %311 = call i32 @dev_name(%struct.TYPE_18__* %310)
  %312 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %313 = call i32 @devm_request_irq(%struct.TYPE_18__* %306, i32 %307, i32 %308, i32 0, i32 %311, %struct.spi_imx_data.1* %312)
  store i32 %313, i32* %11, align 4
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %304
  %317 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %318 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %317, i32 0, i32 1
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* %11, align 4
  %321 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %318, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %319, i32 %320)
  br label %522

322:                                              ; preds = %304
  %323 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %324 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %323, i32 0, i32 1
  %325 = call i8* @devm_clk_get(%struct.TYPE_18__* %324, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %326 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %327 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  %328 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %329 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %328, i32 0, i32 3
  %330 = load i8*, i8** %329, align 8
  %331 = call i64 @IS_ERR(i8* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %322
  %334 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %335 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %334, i32 0, i32 3
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @PTR_ERR(i8* %336)
  store i32 %337, i32* %11, align 4
  br label %522

338:                                              ; preds = %322
  %339 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %340 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %339, i32 0, i32 1
  %341 = call i8* @devm_clk_get(%struct.TYPE_18__* %340, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %342 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %343 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %342, i32 0, i32 2
  store i8* %341, i8** %343, align 8
  %344 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %345 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %344, i32 0, i32 2
  %346 = load i8*, i8** %345, align 8
  %347 = call i64 @IS_ERR(i8* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %338
  %350 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %351 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %350, i32 0, i32 2
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @PTR_ERR(i8* %352)
  store i32 %353, i32* %11, align 4
  br label %522

354:                                              ; preds = %338
  %355 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %356 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %355, i32 0, i32 2
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @clk_prepare_enable(i8* %357)
  store i32 %358, i32* %11, align 4
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  br label %522

362:                                              ; preds = %354
  %363 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %364 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %363, i32 0, i32 3
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @clk_prepare_enable(i8* %365)
  store i32 %366, i32* %11, align 4
  %367 = load i32, i32* %11, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %362
  br label %517

370:                                              ; preds = %362
  %371 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %372 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %371, i32 0, i32 2
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @clk_get_rate(i8* %373)
  %375 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %376 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %375, i32 0, i32 6
  store i32 %374, i32* %376, align 8
  %377 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %378 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %377, i32 0, i32 5
  %379 = load %struct.spi_imx_devtype_data*, %struct.spi_imx_devtype_data** %378, align 8
  %380 = getelementptr inbounds %struct.spi_imx_devtype_data, %struct.spi_imx_devtype_data* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %403

383:                                              ; preds = %370
  %384 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %385 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %384, i32 0, i32 1
  %386 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %387 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %388 = call i32 @spi_imx_sdma_init(%struct.TYPE_18__* %385, %struct.spi_imx_data.1* %386, %struct.spi_master* %387)
  store i32 %388, i32* %11, align 4
  %389 = load i32, i32* %11, align 4
  %390 = load i32, i32* @EPROBE_DEFER, align 4
  %391 = sub nsw i32 0, %390
  %392 = icmp eq i32 %389, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %383
  br label %512

394:                                              ; preds = %383
  %395 = load i32, i32* %11, align 4
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %394
  %398 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %399 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %398, i32 0, i32 1
  %400 = load i32, i32* %11, align 4
  %401 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %399, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %400)
  br label %402

402:                                              ; preds = %397, %394
  br label %403

403:                                              ; preds = %402, %370
  %404 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %405 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %404, i32 0, i32 5
  %406 = load %struct.spi_imx_devtype_data*, %struct.spi_imx_devtype_data** %405, align 8
  %407 = getelementptr inbounds %struct.spi_imx_devtype_data, %struct.spi_imx_devtype_data* %406, i32 0, i32 1
  %408 = load i32 (%struct.spi_imx_data.0*)*, i32 (%struct.spi_imx_data.0*)** %407, align 8
  %409 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %410 = bitcast %struct.spi_imx_data.1* %409 to %struct.spi_imx_data.0*
  %411 = call i32 %408(%struct.spi_imx_data.0* %410)
  %412 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %413 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %412, i32 0, i32 5
  %414 = load %struct.spi_imx_devtype_data*, %struct.spi_imx_devtype_data** %413, align 8
  %415 = getelementptr inbounds %struct.spi_imx_devtype_data, %struct.spi_imx_devtype_data* %414, i32 0, i32 0
  %416 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %415, align 8
  %417 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %418 = bitcast %struct.spi_imx_data.1* %417 to %struct.spi_imx_data*
  %419 = call i32 %416(%struct.spi_imx_data* %418, i32 0)
  %420 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %421 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 0
  %423 = load %struct.device_node*, %struct.device_node** %422, align 8
  %424 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %425 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %424, i32 0, i32 4
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 0
  store %struct.device_node* %423, %struct.device_node** %426, align 8
  %427 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %428 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %427, i32 0, i32 4
  %429 = call i32 @spi_bitbang_start(%struct.TYPE_19__* %428)
  store i32 %429, i32* %11, align 4
  %430 = load i32, i32* %11, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %403
  %433 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %434 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %433, i32 0, i32 1
  %435 = load i32, i32* %11, align 4
  %436 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %434, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %435)
  br label %512

437:                                              ; preds = %403
  %438 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %439 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %495, label %442

442:                                              ; preds = %437
  %443 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %444 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %443, i32 0, i32 2
  %445 = load i32*, i32** %444, align 8
  %446 = icmp ne i32* %445, null
  br i1 %446, label %447, label %495

447:                                              ; preds = %442
  store i32 0, i32* %10, align 4
  br label %448

448:                                              ; preds = %491, %447
  %449 = load i32, i32* %10, align 4
  %450 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %451 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = icmp slt i32 %449, %452
  br i1 %453, label %454, label %494

454:                                              ; preds = %448
  %455 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %456 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %455, i32 0, i32 2
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %10, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @gpio_is_valid(i32 %461)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %465, label %464

464:                                              ; preds = %454
  br label %491

465:                                              ; preds = %454
  %466 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %467 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %466, i32 0, i32 1
  %468 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %469 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %468, i32 0, i32 2
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %10, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* @DRIVER_NAME, align 4
  %476 = call i32 @devm_gpio_request(%struct.TYPE_18__* %467, i32 %474, i32 %475)
  store i32 %476, i32* %11, align 4
  %477 = load i32, i32* %11, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %490

479:                                              ; preds = %465
  %480 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %481 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %480, i32 0, i32 1
  %482 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %483 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %482, i32 0, i32 2
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %10, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %481, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %488)
  br label %508

490:                                              ; preds = %465
  br label %491

491:                                              ; preds = %490, %464
  %492 = load i32, i32* %10, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %10, align 4
  br label %448

494:                                              ; preds = %448
  br label %495

495:                                              ; preds = %494, %442, %437
  %496 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %497 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %496, i32 0, i32 1
  %498 = call i32 @dev_info(%struct.TYPE_18__* %497, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %499 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %500 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %499, i32 0, i32 3
  %501 = load i8*, i8** %500, align 8
  %502 = call i32 @clk_disable(i8* %501)
  %503 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %504 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %503, i32 0, i32 2
  %505 = load i8*, i8** %504, align 8
  %506 = call i32 @clk_disable(i8* %505)
  %507 = load i32, i32* %11, align 4
  store i32 %507, i32* %2, align 4
  br label %526

508:                                              ; preds = %479
  %509 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %510 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %509, i32 0, i32 4
  %511 = call i32 @spi_bitbang_stop(%struct.TYPE_19__* %510)
  br label %512

512:                                              ; preds = %508, %432, %393
  %513 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %514 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %513, i32 0, i32 3
  %515 = load i8*, i8** %514, align 8
  %516 = call i32 @clk_disable_unprepare(i8* %515)
  br label %517

517:                                              ; preds = %512, %369
  %518 = load %struct.spi_imx_data.1*, %struct.spi_imx_data.1** %8, align 8
  %519 = getelementptr inbounds %struct.spi_imx_data.1, %struct.spi_imx_data.1* %518, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = call i32 @clk_disable_unprepare(i8* %520)
  br label %522

522:                                              ; preds = %517, %361, %349, %333, %316, %302, %287
  %523 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %524 = call i32 @spi_master_put(%struct.spi_master* %523)
  %525 = load i32, i32* %11, align 4
  store i32 %525, i32* %2, align 4
  br label %526

526:                                              ; preds = %522, %495, %151, %79, %48
  %527 = load i32, i32* %2, align 4
  ret i32 %527
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_18__*) #1

declare dso_local %struct.spi_imx_master* @dev_get_platdata(%struct.TYPE_18__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.spi_master* @spi_alloc_slave(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local %struct.spi_imx_data.1* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i64 @is_imx35_cspi(%struct.spi_imx_data.1*) #1

declare dso_local i64 @is_imx51_ecspi(%struct.spi_imx_data.1*) #1

declare dso_local i64 @is_imx53_ecspi(%struct.spi_imx_data.1*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.spi_imx_data.1*) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @spi_imx_sdma_init(%struct.TYPE_18__*, %struct.spi_imx_data.1*, %struct.spi_master*) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_19__*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @clk_disable(i8*) #1

declare dso_local i32 @spi_bitbang_stop(%struct.TYPE_19__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
