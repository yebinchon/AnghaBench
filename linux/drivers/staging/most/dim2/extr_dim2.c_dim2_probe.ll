; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.dim2_platform_data = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)* }
%struct.of_device_id = type { %struct.dim2_platform_data* }
%struct.dim2_hdm = type { i32, i32 (%struct.platform_device*)*, i32, %struct.TYPE_9__, %struct.TYPE_10__, %struct.most_channel_capability*, i32, %struct.hdm_channel*, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, %struct.most_channel_capability*, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32* }
%struct.most_channel_capability = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hdm_channel = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"microchip,clock-speed\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"missing dt property clock-speed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"bad dt property clock-speed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@dim2_of_match = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"sync: num of frames per sub-buffer: %u\0A\00", align 1
@fcnt = common dso_local global i32 0, align 4
@DIM_NO_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"dim_startup failed: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dim2_ahb_isr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"dim2_ahb0_int\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to request ahb0_int irq %d\0A\00", align 1
@dim2_mlb_isr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"dim2_mlb_int\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to request mlb_int irq %d\0A\00", align 1
@deliver_netinfo_thread = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"dim2_netinfo\00", align 1
@DMA_CHANNELS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"ca%d\00", align 1
@MOST_CH_RX = common dso_local global i32 0, align 4
@MOST_CH_TX = common dso_local global i32 0, align 4
@MOST_CH_CONTROL = common dso_local global i32 0, align 4
@MOST_CH_ASYNC = common dso_local global i32 0, align 4
@MOST_CH_ISOC = common dso_local global i32 0, align 4
@MOST_CH_SYNC = common dso_local global i32 0, align 4
@MAX_BUFFERS_PACKET = common dso_local global i32 0, align 4
@MAX_BUF_SIZE_PACKET = common dso_local global i32 0, align 4
@MAX_BUFFERS_STREAMING = common dso_local global i32 0, align 4
@MAX_BUF_SIZE_STREAMING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"dim2-%016x\00", align 1
@ITYPE_MEDIALB_DIM2 = common dso_local global i32 0, align 4
@configure_channel = common dso_local global i32 0, align 4
@enqueue = common dso_local global i32 0, align 4
@dma_alloc = common dso_local global i32 0, align 4
@dma_free = common dso_local global i32 0, align 4
@poison_channel = common dso_local global i32 0, align 4
@request_netinfo = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"dim2_state\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"failed to register MOST interface\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"failed to create sysfs attribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dim2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dim2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dim2_platform_data*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dim2_hdm*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.most_channel_capability*, align 8
  %14 = alloca %struct.hdm_channel*, align 8
  %15 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dim2_hdm* @devm_kzalloc(%struct.TYPE_11__* %17, i32 144, i32 %18)
  store %struct.dim2_hdm* %19, %struct.dim2_hdm** %7, align 8
  %20 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %21 = icmp ne %struct.dim2_hdm* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %379

25:                                               ; preds = %1
  %26 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %27 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.dim2_hdm* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @of_property_read_string(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %2, align 4
  br label %379

43:                                               ; preds = %25
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %46 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %45, i32 0, i32 10
  %47 = call i32 @get_dim2_clk_speed(i8* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %379

55:                                               ; preds = %43
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %8, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %60, %struct.resource* %61)
  %63 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %64 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %66 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %72 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %379

75:                                               ; preds = %55
  %76 = load i32, i32* @dim2_of_match, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.of_device_id* @of_match_node(i32 %76, i32 %80)
  store %struct.of_device_id* %81, %struct.of_device_id** %5, align 8
  %82 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %83 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %82, i32 0, i32 0
  %84 = load %struct.dim2_platform_data*, %struct.dim2_platform_data** %83, align 8
  store %struct.dim2_platform_data* %84, %struct.dim2_platform_data** %4, align 8
  %85 = load %struct.dim2_platform_data*, %struct.dim2_platform_data** %4, align 8
  %86 = icmp ne %struct.dim2_platform_data* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %75
  %88 = load %struct.dim2_platform_data*, %struct.dim2_platform_data** %4, align 8
  %89 = getelementptr inbounds %struct.dim2_platform_data, %struct.dim2_platform_data* %88, i32 0, i32 0
  %90 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %89, align 8
  %91 = icmp ne i32 (%struct.platform_device*)* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.dim2_platform_data*, %struct.dim2_platform_data** %4, align 8
  %94 = getelementptr inbounds %struct.dim2_platform_data, %struct.dim2_platform_data* %93, i32 0, i32 0
  %95 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %94, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = call i32 %95(%struct.platform_device* %96)
  br label %99

98:                                               ; preds = %87, %75
  br label %99

99:                                               ; preds = %98, %92
  %100 = phi i32 [ %97, %92 ], [ 0, %98 ]
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %2, align 4
  br label %379

105:                                              ; preds = %99
  %106 = load %struct.dim2_platform_data*, %struct.dim2_platform_data** %4, align 8
  %107 = icmp ne %struct.dim2_platform_data* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.dim2_platform_data*, %struct.dim2_platform_data** %4, align 8
  %110 = getelementptr inbounds %struct.dim2_platform_data, %struct.dim2_platform_data* %109, i32 0, i32 1
  %111 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %110, align 8
  br label %113

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %108
  %114 = phi i32 (%struct.platform_device*)* [ %111, %108 ], [ null, %112 ]
  %115 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %116 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %115, i32 0, i32 1
  store i32 (%struct.platform_device*)* %114, i32 (%struct.platform_device*)** %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* @fcnt, align 4
  %120 = call i32 @dev_info(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %122 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %125 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @fcnt, align 4
  %128 = call i64 @dim_startup(i32 %123, i32 %126, i32 %127)
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* @DIM_NO_ERROR, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %113
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i64, i64* %11, align 8
  %136 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %135)
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  br label %366

139:                                              ; preds = %113
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = call i32 @platform_get_irq(%struct.platform_device* %140, i32 1)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %9, align 4
  br label %364

146:                                              ; preds = %139
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @dim2_ahb_isr, align 4
  %151 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %152 = call i32 @devm_request_irq(%struct.TYPE_11__* %148, i32 %149, i32 %150, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.dim2_hdm* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %146
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load i32, i32* %12, align 4
  %159 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  br label %364

160:                                              ; preds = %146
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = call i32 @platform_get_irq(%struct.platform_device* %161, i32 0)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %9, align 4
  br label %364

167:                                              ; preds = %160
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @dim2_mlb_isr, align 4
  %172 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %173 = call i32 @devm_request_irq(%struct.TYPE_11__* %169, i32 %170, i32 %171, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.dim2_hdm* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load i32, i32* %12, align 4
  %180 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %178, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %179)
  br label %364

181:                                              ; preds = %167
  %182 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %183 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %182, i32 0, i32 9
  %184 = call i32 @init_waitqueue_head(i32* %183)
  %185 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %186 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %185, i32 0, i32 8
  store i64 0, i64* %186, align 8
  %187 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %188 = call i32 @kthread_run(i32* @deliver_netinfo_thread, %struct.dim2_hdm* %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %189 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %190 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %192 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @IS_ERR(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %181
  %197 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %198 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @PTR_ERR(i32 %199)
  store i32 %200, i32* %9, align 4
  br label %364

201:                                              ; preds = %181
  store i32 0, i32* %10, align 4
  br label %202

202:                                              ; preds = %265, %201
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @DMA_CHANNELS, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %268

206:                                              ; preds = %202
  %207 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %208 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %207, i32 0, i32 5
  %209 = load %struct.most_channel_capability*, %struct.most_channel_capability** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %209, i64 %211
  store %struct.most_channel_capability* %212, %struct.most_channel_capability** %13, align 8
  %213 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %214 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %213, i32 0, i32 7
  %215 = load %struct.hdm_channel*, %struct.hdm_channel** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %215, i64 %217
  store %struct.hdm_channel* %218, %struct.hdm_channel** %14, align 8
  %219 = load %struct.hdm_channel*, %struct.hdm_channel** %14, align 8
  %220 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %219, i32 0, i32 3
  %221 = call i32 @INIT_LIST_HEAD(i32* %220)
  %222 = load %struct.hdm_channel*, %struct.hdm_channel** %14, align 8
  %223 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %222, i32 0, i32 2
  %224 = call i32 @INIT_LIST_HEAD(i32* %223)
  %225 = load %struct.hdm_channel*, %struct.hdm_channel** %14, align 8
  %226 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %225, i32 0, i32 0
  store i32 0, i32* %226, align 4
  %227 = load %struct.hdm_channel*, %struct.hdm_channel** %14, align 8
  %228 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %10, align 4
  %231 = mul nsw i32 %230, 2
  %232 = add nsw i32 %231, 2
  %233 = call i32 @snprintf(i32 %229, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  %234 = load %struct.hdm_channel*, %struct.hdm_channel** %14, align 8
  %235 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.most_channel_capability*, %struct.most_channel_capability** %13, align 8
  %238 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* @MOST_CH_RX, align 4
  %240 = load i32, i32* @MOST_CH_TX, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.most_channel_capability*, %struct.most_channel_capability** %13, align 8
  %243 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @MOST_CH_CONTROL, align 4
  %245 = load i32, i32* @MOST_CH_ASYNC, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @MOST_CH_ISOC, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @MOST_CH_SYNC, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.most_channel_capability*, %struct.most_channel_capability** %13, align 8
  %252 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* @MAX_BUFFERS_PACKET, align 4
  %254 = load %struct.most_channel_capability*, %struct.most_channel_capability** %13, align 8
  %255 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %254, i32 0, i32 5
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* @MAX_BUF_SIZE_PACKET, align 4
  %257 = load %struct.most_channel_capability*, %struct.most_channel_capability** %13, align 8
  %258 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* @MAX_BUFFERS_STREAMING, align 4
  %260 = load %struct.most_channel_capability*, %struct.most_channel_capability** %13, align 8
  %261 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* @MAX_BUF_SIZE_STREAMING, align 4
  %263 = load %struct.most_channel_capability*, %struct.most_channel_capability** %13, align 8
  %264 = getelementptr inbounds %struct.most_channel_capability, %struct.most_channel_capability* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  br label %265

265:                                              ; preds = %206
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %202

268:                                              ; preds = %202
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %15, align 8
  %269 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %270 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = load i8*, i8** %15, align 8
  %273 = load %struct.resource*, %struct.resource** %8, align 8
  %274 = getelementptr inbounds %struct.resource, %struct.resource* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @snprintf(i32 %271, i32 4, i8* %272, i32 %275)
  %277 = load i32, i32* @ITYPE_MEDIALB_DIM2, align 4
  %278 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %279 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 11
  store i32 %277, i32* %280, align 4
  %281 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %282 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %285 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 10
  store i32 %283, i32* %286, align 8
  %287 = load i32, i32* @DMA_CHANNELS, align 4
  %288 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %289 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  store i32 %287, i32* %290, align 8
  %291 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %292 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %291, i32 0, i32 5
  %293 = load %struct.most_channel_capability*, %struct.most_channel_capability** %292, align 8
  %294 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %295 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 9
  store %struct.most_channel_capability* %293, %struct.most_channel_capability** %296, align 8
  %297 = load i32, i32* @configure_channel, align 4
  %298 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %299 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 8
  store i32 %297, i32* %300, align 4
  %301 = load i32, i32* @enqueue, align 4
  %302 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %303 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 7
  store i32 %301, i32* %304, align 8
  %305 = load i32, i32* @dma_alloc, align 4
  %306 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %307 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 6
  store i32 %305, i32* %308, align 4
  %309 = load i32, i32* @dma_free, align 4
  %310 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %311 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 5
  store i32 %309, i32* %312, align 8
  %313 = load i32, i32* @poison_channel, align 4
  %314 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %315 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 4
  store i32 %313, i32* %316, align 4
  %317 = load i32, i32* @request_netinfo, align 4
  %318 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %319 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 3
  store i32 %317, i32* %320, align 8
  %321 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %322 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %321, i32 0, i32 0
  %323 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %324 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 2
  store %struct.TYPE_11__* %322, %struct.TYPE_11__** %325, align 8
  %326 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %327 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %328, align 8
  %329 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %330 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 1
  %332 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %333 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 1
  store i32* %331, i32** %334, align 8
  %335 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %336 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %335, i32 0, i32 3
  %337 = call i32 @most_register_interface(%struct.TYPE_9__* %336)
  store i32 %337, i32* %9, align 4
  %338 = load i32, i32* %9, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %268
  %341 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %342 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %341, i32 0, i32 0
  %343 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %342, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %359

344:                                              ; preds = %268
  %345 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %346 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %345, i32 0, i32 4
  %347 = call i32 @dim2_sysfs_probe(%struct.TYPE_10__* %346)
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* %9, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %344
  %351 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %352 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %351, i32 0, i32 0
  %353 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %352, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %355

354:                                              ; preds = %344
  store i32 0, i32* %2, align 4
  br label %379

355:                                              ; preds = %350
  %356 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %357 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %356, i32 0, i32 3
  %358 = call i32 @most_deregister_interface(%struct.TYPE_9__* %357)
  br label %359

359:                                              ; preds = %355, %340
  %360 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %361 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @kthread_stop(i32 %362)
  br label %364

364:                                              ; preds = %359, %196, %176, %165, %155, %144
  %365 = call i32 (...) @dim_shutdown()
  br label %366

366:                                              ; preds = %364, %132
  %367 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %368 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %367, i32 0, i32 1
  %369 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %368, align 8
  %370 = icmp ne i32 (%struct.platform_device*)* %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load %struct.dim2_hdm*, %struct.dim2_hdm** %7, align 8
  %373 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %372, i32 0, i32 1
  %374 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %373, align 8
  %375 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %376 = call i32 %374(%struct.platform_device* %375)
  br label %377

377:                                              ; preds = %371, %366
  %378 = load i32, i32* %9, align 4
  store i32 %378, i32* %2, align 4
  br label %379

379:                                              ; preds = %377, %354, %103, %70, %50, %38, %22
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local %struct.dim2_hdm* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dim2_hdm*) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @get_dim2_clk_speed(i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @dim_startup(i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i8*, %struct.dim2_hdm*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_run(i32*, %struct.dim2_hdm*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @most_register_interface(%struct.TYPE_9__*) #1

declare dso_local i32 @dim2_sysfs_probe(%struct.TYPE_10__*) #1

declare dso_local i32 @most_deregister_interface(%struct.TYPE_9__*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @dim_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
