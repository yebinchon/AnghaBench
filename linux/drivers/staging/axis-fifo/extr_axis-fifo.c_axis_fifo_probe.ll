; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/axis-fifo/extr_axis-fifo.c_axis_fifo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/axis-fifo/extr_axis-fifo.c_axis_fifo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32, i32 }
%struct.axis_fifo = type { i32, i32, i32, i32, %struct.resource*, i32, i32, i32, i32, %struct.device*, %struct.device*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't lock memory region at 0x%pa\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"got memory location [0x%pa - 0x%pa]\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"couldn't map physical memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"remapped memory to 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s_%pa\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"device name [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"xlnx,axi-str-rxd-tdata-width\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"xlnx,axi-str-txc-tdata-width\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"xlnx,axi-str-txd-tdata-width\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"xlnx,axis-tdest-width\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"xlnx,axis-tid-width\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"xlnx,axis-tuser-width\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"xlnx,data-interface-type\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"xlnx,has-axis-tdest\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"xlnx,has-axis-tid\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"xlnx,has-axis-tkeep\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"xlnx,has-axis-tstrb\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"xlnx,has-axis-tuser\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"xlnx,rx-fifo-depth\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"xlnx,rx-fifo-pe-threshold\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"xlnx,rx-fifo-pf-threshold\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"xlnx,s-axi-id-width\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"xlnx,s-axi4-data-width\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"xlnx,select-xpm\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"xlnx,tx-fifo-depth\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"xlnx,tx-fifo-pe-threshold\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"xlnx,tx-fifo-pf-threshold\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"xlnx,use-rx-cut-through\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"xlnx,use-rx-data\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"xlnx,use-tx-ctrl\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"xlnx,use-tx-cut-through\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"xlnx,use-tx-data\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"rxd_tdata_width width [%u] unsupported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [40 x i8] c"txd_tdata_width width [%u] unsupported\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"tdest not supported\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"tid not supported\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"tkeep not supported\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"tstrb not supported\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"tuser not supported\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"rx cut-through not supported\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"tx cut-through not supported\0A\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"tx control not supported\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [24 x i8] c"no IRQ found for 0x%pa\0A\00", align 1
@axis_fifo_irq = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [32 x i8] c"couldn't allocate interrupt %i\0A\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"allocated device number major %i minor %i\0A\00", align 1
@axis_fifo_driver_class = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [29 x i8] c"couldn't create driver file\0A\00", align 1
@fops = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [34 x i8] c"couldn't create character device\0A\00", align 1
@axis_fifo_attrs_group = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [31 x i8] c"couldn't register sysfs group\0A\00", align 1
@.str.49 = private unnamed_addr constant [70 x i8] c"axis-fifo created at %pa mapped to 0x%pa, irq=%i, major=%i, minor=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axis_fifo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axis_fifo_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.axis_fifo*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  store %struct.device* %37, %struct.device** %6, align 8
  store %struct.axis_fifo* null, %struct.axis_fifo** %7, align 8
  store i32 0, i32* %9, align 4
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.axis_fifo* @devm_kmalloc(%struct.device* %38, i32 72, i32 %39)
  store %struct.axis_fifo* %40, %struct.axis_fifo** %7, align 8
  %41 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %42 = icmp ne %struct.axis_fifo* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %1
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %616

46:                                               ; preds = %1
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %49 = call i32 @dev_set_drvdata(%struct.device* %47, %struct.axis_fifo* %48)
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %52 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %51, i32 0, i32 9
  store %struct.device* %50, %struct.device** %52, align 8
  %53 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %54 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %53, i32 0, i32 14
  %55 = call i32 @init_waitqueue_head(i32* %54)
  %56 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %57 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %56, i32 0, i32 13
  %58 = call i32 @init_waitqueue_head(i32* %57)
  %59 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %60 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %59, i32 0, i32 12
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %63 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %62, i32 0, i32 11
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %5, align 8
  %68 = load %struct.resource*, %struct.resource** %5, align 8
  %69 = icmp ne %struct.resource* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %46
  %71 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %72 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %71, i32 0, i32 9
  %73 = load %struct.device*, %struct.device** %72, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %612

77:                                               ; preds = %46
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %80 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %79, i32 0, i32 4
  store %struct.resource* %78, %struct.resource** %80, align 8
  %81 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %82 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %81, i32 0, i32 4
  %83 = load %struct.resource*, %struct.resource** %82, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %87 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %86, i32 0, i32 4
  %88 = load %struct.resource*, %struct.resource** %87, align 8
  %89 = call i32 @resource_size(%struct.resource* %88)
  %90 = load i8*, i8** @DRIVER_NAME, align 8
  %91 = call i32 @request_mem_region(i32 %85, i32 %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %77
  %94 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %95 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %94, i32 0, i32 9
  %96 = load %struct.device*, %struct.device** %95, align 8
  %97 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %98 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %97, i32 0, i32 4
  %99 = load %struct.resource*, %struct.resource** %98, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %99, i32 0, i32 0
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %100)
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %612

104:                                              ; preds = %77
  %105 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %106 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %105, i32 0, i32 9
  %107 = load %struct.device*, %struct.device** %106, align 8
  %108 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %109 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %108, i32 0, i32 4
  %110 = load %struct.resource*, %struct.resource** %109, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 0
  %112 = bitcast i32* %111 to i8*
  %113 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %114 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %113, i32 0, i32 4
  %115 = load %struct.resource*, %struct.resource** %114, align 8
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %115, i32 0, i32 1
  %117 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %112, i32* %116)
  %118 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %119 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %118, i32 0, i32 4
  %120 = load %struct.resource*, %struct.resource** %119, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %124 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %123, i32 0, i32 4
  %125 = load %struct.resource*, %struct.resource** %124, align 8
  %126 = call i32 @resource_size(%struct.resource* %125)
  %127 = call i32 @ioremap(i32 %122, i32 %126)
  %128 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %129 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %131 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %104
  %135 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %136 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %135, i32 0, i32 9
  %137 = load %struct.device*, %struct.device** %136, align 8
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %9, align 4
  br label %601

141:                                              ; preds = %104
  %142 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %143 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %142, i32 0, i32 9
  %144 = load %struct.device*, %struct.device** %143, align 8
  %145 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %146 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  %151 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %152 = load i8*, i8** @DRIVER_NAME, align 8
  %153 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %154 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %153, i32 0, i32 4
  %155 = load %struct.resource*, %struct.resource** %154, align 8
  %156 = getelementptr inbounds %struct.resource, %struct.resource* %155, i32 0, i32 0
  %157 = call i32 @snprintf(i8* %151, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %152, i32* %156)
  %158 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %159 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %158, i32 0, i32 9
  %160 = load %struct.device*, %struct.device** %159, align 8
  %161 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %162 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %161)
  %163 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %164 = call i32 @get_dts_property(%struct.axis_fifo* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %10)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %141
  br label %596

168:                                              ; preds = %141
  %169 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %170 = call i32 @get_dts_property(%struct.axis_fifo* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32* %11)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %596

174:                                              ; preds = %168
  %175 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %176 = call i32 @get_dts_property(%struct.axis_fifo* %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32* %12)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %596

180:                                              ; preds = %174
  %181 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %182 = call i32 @get_dts_property(%struct.axis_fifo* %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32* %13)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %596

186:                                              ; preds = %180
  %187 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %188 = call i32 @get_dts_property(%struct.axis_fifo* %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32* %14)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %596

192:                                              ; preds = %186
  %193 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %194 = call i32 @get_dts_property(%struct.axis_fifo* %193, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32* %15)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %596

198:                                              ; preds = %192
  %199 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %200 = call i32 @get_dts_property(%struct.axis_fifo* %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* %16)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %596

204:                                              ; preds = %198
  %205 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %206 = call i32 @get_dts_property(%struct.axis_fifo* %205, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32* %17)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %596

210:                                              ; preds = %204
  %211 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %212 = call i32 @get_dts_property(%struct.axis_fifo* %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32* %18)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %596

216:                                              ; preds = %210
  %217 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %218 = call i32 @get_dts_property(%struct.axis_fifo* %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32* %19)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %596

222:                                              ; preds = %216
  %223 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %224 = call i32 @get_dts_property(%struct.axis_fifo* %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32* %20)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %596

228:                                              ; preds = %222
  %229 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %230 = call i32 @get_dts_property(%struct.axis_fifo* %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32* %21)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %596

234:                                              ; preds = %228
  %235 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %236 = call i32 @get_dts_property(%struct.axis_fifo* %235, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32* %22)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %596

240:                                              ; preds = %234
  %241 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %242 = call i32 @get_dts_property(%struct.axis_fifo* %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32* %23)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %596

246:                                              ; preds = %240
  %247 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %248 = call i32 @get_dts_property(%struct.axis_fifo* %247, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32* %24)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %596

252:                                              ; preds = %246
  %253 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %254 = call i32 @get_dts_property(%struct.axis_fifo* %253, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32* %25)
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  br label %596

258:                                              ; preds = %252
  %259 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %260 = call i32 @get_dts_property(%struct.axis_fifo* %259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32* %26)
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %596

264:                                              ; preds = %258
  %265 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %266 = call i32 @get_dts_property(%struct.axis_fifo* %265, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32* %27)
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %596

270:                                              ; preds = %264
  %271 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %272 = call i32 @get_dts_property(%struct.axis_fifo* %271, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32* %28)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %596

276:                                              ; preds = %270
  %277 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %278 = call i32 @get_dts_property(%struct.axis_fifo* %277, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32* %29)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %596

282:                                              ; preds = %276
  %283 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %284 = call i32 @get_dts_property(%struct.axis_fifo* %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32* %30)
  store i32 %284, i32* %9, align 4
  %285 = load i32, i32* %9, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  br label %596

288:                                              ; preds = %282
  %289 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %290 = call i32 @get_dts_property(%struct.axis_fifo* %289, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32* %31)
  store i32 %290, i32* %9, align 4
  %291 = load i32, i32* %9, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  br label %596

294:                                              ; preds = %288
  %295 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %296 = call i32 @get_dts_property(%struct.axis_fifo* %295, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32* %32)
  store i32 %296, i32* %9, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  br label %596

300:                                              ; preds = %294
  %301 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %302 = call i32 @get_dts_property(%struct.axis_fifo* %301, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32* %33)
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %9, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  br label %596

306:                                              ; preds = %300
  %307 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %308 = call i32 @get_dts_property(%struct.axis_fifo* %307, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32* %34)
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* %9, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  br label %596

312:                                              ; preds = %306
  %313 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %314 = call i32 @get_dts_property(%struct.axis_fifo* %313, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32* %35)
  store i32 %314, i32* %9, align 4
  %315 = load i32, i32* %9, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %596

318:                                              ; preds = %312
  %319 = load i32, i32* %10, align 4
  %320 = icmp ne i32 %319, 32
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %323 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %322, i32 0, i32 9
  %324 = load %struct.device*, %struct.device** %323, align 8
  %325 = load i32, i32* %10, align 4
  %326 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %324, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i32 %325)
  %327 = load i32, i32* @EIO, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %9, align 4
  br label %596

329:                                              ; preds = %318
  %330 = load i32, i32* %12, align 4
  %331 = icmp ne i32 %330, 32
  br i1 %331, label %332, label %340

332:                                              ; preds = %329
  %333 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %334 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %333, i32 0, i32 9
  %335 = load %struct.device*, %struct.device** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %335, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i32 %336)
  %338 = load i32, i32* @EIO, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %9, align 4
  br label %596

340:                                              ; preds = %329
  %341 = load i32, i32* %17, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %340
  %344 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %345 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %344, i32 0, i32 9
  %346 = load %struct.device*, %struct.device** %345, align 8
  %347 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %346, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  %348 = load i32, i32* @EIO, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %9, align 4
  br label %596

350:                                              ; preds = %340
  %351 = load i32, i32* %18, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %350
  %354 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %355 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %354, i32 0, i32 9
  %356 = load %struct.device*, %struct.device** %355, align 8
  %357 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %356, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %358 = load i32, i32* @EIO, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %9, align 4
  br label %596

360:                                              ; preds = %350
  %361 = load i32, i32* %19, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %360
  %364 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %365 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %364, i32 0, i32 9
  %366 = load %struct.device*, %struct.device** %365, align 8
  %367 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %366, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  %368 = load i32, i32* @EIO, align 4
  %369 = sub nsw i32 0, %368
  store i32 %369, i32* %9, align 4
  br label %596

370:                                              ; preds = %360
  %371 = load i32, i32* %20, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %380

373:                                              ; preds = %370
  %374 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %375 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %374, i32 0, i32 9
  %376 = load %struct.device*, %struct.device** %375, align 8
  %377 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  %378 = load i32, i32* @EIO, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %9, align 4
  br label %596

380:                                              ; preds = %370
  %381 = load i32, i32* %21, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %380
  %384 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %385 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %384, i32 0, i32 9
  %386 = load %struct.device*, %struct.device** %385, align 8
  %387 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %386, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0))
  %388 = load i32, i32* @EIO, align 4
  %389 = sub nsw i32 0, %388
  store i32 %389, i32* %9, align 4
  br label %596

390:                                              ; preds = %380
  %391 = load i32, i32* %31, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %390
  %394 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %395 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %394, i32 0, i32 9
  %396 = load %struct.device*, %struct.device** %395, align 8
  %397 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %396, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0))
  %398 = load i32, i32* @EIO, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %9, align 4
  br label %596

400:                                              ; preds = %390
  %401 = load i32, i32* %34, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %400
  %404 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %405 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %404, i32 0, i32 9
  %406 = load %struct.device*, %struct.device** %405, align 8
  %407 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %406, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0))
  %408 = load i32, i32* @EIO, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %9, align 4
  br label %596

410:                                              ; preds = %400
  %411 = load i32, i32* %33, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %410
  %414 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %415 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %414, i32 0, i32 9
  %416 = load %struct.device*, %struct.device** %415, align 8
  %417 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0))
  %418 = load i32, i32* @EIO, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %9, align 4
  br label %596

420:                                              ; preds = %410
  %421 = load i32, i32* %22, align 4
  %422 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %423 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 8
  %424 = load i32, i32* %28, align 4
  %425 = sub i32 %424, 4
  %426 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %427 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %426, i32 0, i32 1
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* %32, align 4
  %429 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %430 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %429, i32 0, i32 2
  store i32 %428, i32* %430, align 8
  %431 = load i32, i32* %35, align 4
  %432 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %433 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %432, i32 0, i32 3
  store i32 %431, i32* %433, align 4
  %434 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %435 = call i32 @reset_ip_core(%struct.axis_fifo* %434)
  %436 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %437 = load i32, i32* @IORESOURCE_IRQ, align 4
  %438 = call %struct.resource* @platform_get_resource(%struct.platform_device* %436, i32 %437, i32 0)
  store %struct.resource* %438, %struct.resource** %4, align 8
  %439 = load %struct.resource*, %struct.resource** %4, align 8
  %440 = icmp ne %struct.resource* %439, null
  br i1 %440, label %452, label %441

441:                                              ; preds = %420
  %442 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %443 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %442, i32 0, i32 9
  %444 = load %struct.device*, %struct.device** %443, align 8
  %445 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %446 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %445, i32 0, i32 4
  %447 = load %struct.resource*, %struct.resource** %446, align 8
  %448 = getelementptr inbounds %struct.resource, %struct.resource* %447, i32 0, i32 0
  %449 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %444, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0), i32* %448)
  %450 = load i32, i32* @EIO, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %9, align 4
  br label %596

452:                                              ; preds = %420
  %453 = load %struct.resource*, %struct.resource** %4, align 8
  %454 = getelementptr inbounds %struct.resource, %struct.resource* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %457 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %456, i32 0, i32 6
  store i32 %455, i32* %457, align 4
  %458 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %459 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %458, i32 0, i32 6
  %460 = load i32, i32* %459, align 4
  %461 = load i8*, i8** @DRIVER_NAME, align 8
  %462 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %463 = call i32 @request_irq(i32 %460, i32* @axis_fifo_irq, i32 0, i8* %461, %struct.axis_fifo* %462)
  store i32 %463, i32* %9, align 4
  %464 = load i32, i32* %9, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %452
  %467 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %468 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %467, i32 0, i32 9
  %469 = load %struct.device*, %struct.device** %468, align 8
  %470 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %471 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 4
  %473 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %469, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i64 0, i64 0), i32 %472)
  br label %596

474:                                              ; preds = %452
  %475 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %476 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %475, i32 0, i32 7
  %477 = load i8*, i8** @DRIVER_NAME, align 8
  %478 = call i32 @alloc_chrdev_region(i32* %476, i32 0, i32 1, i8* %477)
  store i32 %478, i32* %9, align 4
  %479 = load i32, i32* %9, align 4
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %474
  br label %590

482:                                              ; preds = %474
  %483 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %484 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %483, i32 0, i32 9
  %485 = load %struct.device*, %struct.device** %484, align 8
  %486 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %487 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %486, i32 0, i32 7
  %488 = load i32, i32* %487, align 8
  %489 = call i32* @MAJOR(i32 %488)
  %490 = bitcast i32* %489 to i8*
  %491 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %492 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %491, i32 0, i32 7
  %493 = load i32, i32* %492, align 8
  %494 = call i32* @MINOR(i32 %493)
  %495 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %485, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0), i8* %490, i32* %494)
  %496 = load i32, i32* @axis_fifo_driver_class, align 4
  %497 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %498 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 8
  %500 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %501 = call %struct.device* @device_create(i32 %496, i32* null, i32 %499, i32* null, i8* %500)
  %502 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %503 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %502, i32 0, i32 10
  store %struct.device* %501, %struct.device** %503, align 8
  %504 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %505 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %504, i32 0, i32 10
  %506 = load %struct.device*, %struct.device** %505, align 8
  %507 = call i64 @IS_ERR(%struct.device* %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %518

509:                                              ; preds = %482
  %510 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %511 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %510, i32 0, i32 9
  %512 = load %struct.device*, %struct.device** %511, align 8
  %513 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %512, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0))
  %514 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %515 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %514, i32 0, i32 10
  %516 = load %struct.device*, %struct.device** %515, align 8
  %517 = call i32 @PTR_ERR(%struct.device* %516)
  store i32 %517, i32* %9, align 4
  br label %585

518:                                              ; preds = %482
  %519 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %520 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %519, i32 0, i32 10
  %521 = load %struct.device*, %struct.device** %520, align 8
  %522 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %523 = call i32 @dev_set_drvdata(%struct.device* %521, %struct.axis_fifo* %522)
  %524 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %525 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %524, i32 0, i32 8
  %526 = call i32 @cdev_init(i32* %525, i32* @fops)
  %527 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %528 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %527, i32 0, i32 8
  %529 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %530 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %529, i32 0, i32 7
  %531 = load i32, i32* %530, align 8
  %532 = call i32 @cdev_add(i32* %528, i32 %531, i32 1)
  store i32 %532, i32* %9, align 4
  %533 = load i32, i32* %9, align 4
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %535, label %540

535:                                              ; preds = %518
  %536 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %537 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %536, i32 0, i32 9
  %538 = load %struct.device*, %struct.device** %537, align 8
  %539 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %538, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0))
  br label %579

540:                                              ; preds = %518
  %541 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %542 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %541, i32 0, i32 10
  %543 = load %struct.device*, %struct.device** %542, align 8
  %544 = getelementptr inbounds %struct.device, %struct.device* %543, i32 0, i32 0
  %545 = call i32 @sysfs_create_group(i32* %544, i32* @axis_fifo_attrs_group)
  store i32 %545, i32* %9, align 4
  %546 = load i32, i32* %9, align 4
  %547 = icmp slt i32 %546, 0
  br i1 %547, label %548, label %553

548:                                              ; preds = %540
  %549 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %550 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %549, i32 0, i32 9
  %551 = load %struct.device*, %struct.device** %550, align 8
  %552 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %551, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0))
  br label %575

553:                                              ; preds = %540
  %554 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %555 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %554, i32 0, i32 9
  %556 = load %struct.device*, %struct.device** %555, align 8
  %557 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %558 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %557, i32 0, i32 4
  %559 = load %struct.resource*, %struct.resource** %558, align 8
  %560 = getelementptr inbounds %struct.resource, %struct.resource* %559, i32 0, i32 0
  %561 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %562 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %561, i32 0, i32 5
  %563 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %564 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %563, i32 0, i32 6
  %565 = load i32, i32* %564, align 4
  %566 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %567 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %566, i32 0, i32 7
  %568 = load i32, i32* %567, align 8
  %569 = call i32* @MAJOR(i32 %568)
  %570 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %571 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %570, i32 0, i32 7
  %572 = load i32, i32* %571, align 8
  %573 = call i32* @MINOR(i32 %572)
  %574 = call i32 @dev_info(%struct.device* %556, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.49, i64 0, i64 0), i32* %560, i32* %562, i32 %565, i32* %569, i32* %573)
  store i32 0, i32* %2, align 4
  br label %616

575:                                              ; preds = %548
  %576 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %577 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %576, i32 0, i32 8
  %578 = call i32 @cdev_del(i32* %577)
  br label %579

579:                                              ; preds = %575, %535
  %580 = load i32, i32* @axis_fifo_driver_class, align 4
  %581 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %582 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %581, i32 0, i32 7
  %583 = load i32, i32* %582, align 8
  %584 = call i32 @device_destroy(i32 %580, i32 %583)
  br label %585

585:                                              ; preds = %579, %509
  %586 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %587 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %586, i32 0, i32 7
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @unregister_chrdev_region(i32 %588, i32 1)
  br label %590

590:                                              ; preds = %585, %481
  %591 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %592 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %591, i32 0, i32 6
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %595 = call i32 @free_irq(i32 %593, %struct.axis_fifo* %594)
  br label %596

596:                                              ; preds = %590, %466, %441, %413, %403, %393, %383, %373, %363, %353, %343, %332, %321, %317, %311, %305, %299, %293, %287, %281, %275, %269, %263, %257, %251, %245, %239, %233, %227, %221, %215, %209, %203, %197, %191, %185, %179, %173, %167
  %597 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %598 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %597, i32 0, i32 5
  %599 = load i32, i32* %598, align 8
  %600 = call i32 @iounmap(i32 %599)
  br label %601

601:                                              ; preds = %596, %134
  %602 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %603 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %602, i32 0, i32 4
  %604 = load %struct.resource*, %struct.resource** %603, align 8
  %605 = getelementptr inbounds %struct.resource, %struct.resource* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.axis_fifo*, %struct.axis_fifo** %7, align 8
  %608 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %607, i32 0, i32 4
  %609 = load %struct.resource*, %struct.resource** %608, align 8
  %610 = call i32 @resource_size(%struct.resource* %609)
  %611 = call i32 @release_mem_region(i32 %606, i32 %610)
  br label %612

612:                                              ; preds = %601, %93, %70
  %613 = load %struct.device*, %struct.device** %6, align 8
  %614 = call i32 @dev_set_drvdata(%struct.device* %613, %struct.axis_fifo* null)
  %615 = load i32, i32* %9, align 4
  store i32 %615, i32* %2, align 4
  br label %616

616:                                              ; preds = %612, %553, %43
  %617 = load i32, i32* %2, align 4
  ret i32 %617
}

declare dso_local %struct.axis_fifo* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.axis_fifo*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @get_dts_property(%struct.axis_fifo*, i8*, i32*) #1

declare dso_local i32 @reset_ip_core(%struct.axis_fifo*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.axis_fifo*) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32* @MAJOR(i32) #1

declare dso_local i32* @MINOR(i32) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_add(i32*, i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.axis_fifo*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
