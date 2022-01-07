; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_18__, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.tegra_slink_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32, %struct.tegra_slink_chip_data*, %struct.spi_master* }
%struct.tegra_slink_chip_data = type { i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { %struct.tegra_slink_chip_data* }

@tegra_slink_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"master allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@tegra_slink_setup = common dso_local global i32 0, align 4
@tegra_slink_prepare_message = common dso_local global i32 0, align 4
@tegra_slink_transfer_one = common dso_local global i32 0, align 4
@tegra_slink_unprepare_message = common dso_local global i32 0, align 4
@MAX_CHIP_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"No IO memory resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Can not get clock %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Clock prepare failed %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Clock enable failed %d\0A\00", align 1
@tegra_slink_isr = common dso_local global i32 0, align 4
@tegra_slink_isr_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"can not get reset\0A\00", align 1
@SLINK_FIFO_DEPTH = common dso_local global i32 0, align 4
@DEFAULT_SPI_DMA_BUF_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"pm runtime get failed, e = %d\0A\00", align 1
@SLINK_M_S = common dso_local global i32 0, align 4
@SLINK_CS_ACTIVE_BETWEEN = common dso_local global i32 0, align 4
@SLINK_COMMAND = common dso_local global i32 0, align 4
@SLINK_COMMAND2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"can not register to master err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_slink_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_slink_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.tegra_slink_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_slink_chip_data*, align 8
  %10 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.tegra_slink_chip_data* null, %struct.tegra_slink_chip_data** %9, align 8
  %11 = load i32, i32* @tegra_slink_of_match, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.of_device_id* @of_match_device(i32 %11, %struct.TYPE_19__* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %10, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %16 = icmp ne %struct.of_device_id* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %349

23:                                               ; preds = %1
  %24 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %25 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %24, i32 0, i32 0
  %26 = load %struct.tegra_slink_chip_data*, %struct.tegra_slink_chip_data** %25, align 8
  store %struct.tegra_slink_chip_data* %26, %struct.tegra_slink_chip_data** %9, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_19__* %28, i32 80)
  store %struct.spi_master* %29, %struct.spi_master** %4, align 8
  %30 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %31 = icmp ne %struct.spi_master* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %349

38:                                               ; preds = %23
  %39 = load i32, i32* @SPI_CPOL, align 4
  %40 = load i32, i32* @SPI_CPHA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SPI_CS_HIGH, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %45 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @tegra_slink_setup, align 4
  %47 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @tegra_slink_prepare_message, align 4
  %50 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %51 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @tegra_slink_transfer_one, align 4
  %53 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %54 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @tegra_slink_unprepare_message, align 4
  %56 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %57 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %59 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @MAX_CHIP_SELECT, align 4
  %61 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %62 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.spi_master* %64)
  %66 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %67 = call %struct.tegra_slink_data* @spi_master_get_devdata(%struct.spi_master* %66)
  store %struct.tegra_slink_data* %67, %struct.tegra_slink_data** %5, align 8
  %68 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %69 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %69, i32 0, i32 15
  store %struct.spi_master* %68, %struct.spi_master** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %73, i32 0, i32 12
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %74, align 8
  %75 = load %struct.tegra_slink_chip_data*, %struct.tegra_slink_chip_data** %9, align 8
  %76 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %76, i32 0, i32 14
  store %struct.tegra_slink_chip_data* %75, %struct.tegra_slink_chip_data** %77, align 8
  %78 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %79 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %78, i32 0, i32 13
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %81, i32 0, i32 12
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %87 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %86, i32 0, i32 2
  %88 = call i64 @of_property_read_u32(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %38
  %91 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %92 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %91, i32 0, i32 2
  store i32 25000000, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %38
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load i32, i32* @IORESOURCE_MEM, align 4
  %96 = call %struct.resource* @platform_get_resource(%struct.platform_device* %94, i32 %95, i32 0)
  store %struct.resource* %96, %struct.resource** %6, align 8
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = icmp ne %struct.resource* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %345

105:                                              ; preds = %93
  %106 = load %struct.resource*, %struct.resource** %6, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %110 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.resource*, %struct.resource** %6, align 8
  %114 = call i32 @devm_ioremap_resource(%struct.TYPE_19__* %112, %struct.resource* %113)
  %115 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %116 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %118 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %105
  %123 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %124 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PTR_ERR(i32 %125)
  store i32 %126, i32* %7, align 4
  br label %345

127:                                              ; preds = %105
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @devm_clk_get(%struct.TYPE_19__* %129, i32* null)
  %131 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %132 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %134 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @IS_ERR(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %127
  %139 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %140 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @PTR_ERR(i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load i32, i32* %7, align 4
  %146 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %345

147:                                              ; preds = %127
  %148 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %149 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @clk_prepare(i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %345

159:                                              ; preds = %147
  %160 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %161 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @clk_enable(i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  br label %345

171:                                              ; preds = %159
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = call i32 @platform_get_irq(%struct.platform_device* %172, i32 0)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %176 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %178 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @tegra_slink_isr, align 4
  %181 = load i32, i32* @tegra_slink_isr_thread, align 4
  %182 = load i32, i32* @IRQF_ONESHOT, align 4
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @dev_name(%struct.TYPE_19__* %184)
  %186 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %187 = call i32 @request_threaded_irq(i32 %179, i32 %180, i32 %181, i32 %182, i32 %185, %struct.tegra_slink_data* %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %171
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %194 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %195)
  br label %340

197:                                              ; preds = %171
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 @devm_reset_control_get_exclusive(%struct.TYPE_19__* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %201 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %202 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 4
  %203 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %204 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @IS_ERR(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %197
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %212 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %213 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @PTR_ERR(i32 %214)
  store i32 %215, i32* %7, align 4
  br label %336

216:                                              ; preds = %197
  %217 = load i32, i32* @SLINK_FIFO_DEPTH, align 4
  %218 = shl i32 %217, 2
  %219 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %220 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @DEFAULT_SPI_DMA_BUF_LEN, align 4
  %222 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %223 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %225 = call i32 @tegra_slink_init_dma_param(%struct.tegra_slink_data* %224, i32 1)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  br label %336

229:                                              ; preds = %216
  %230 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %231 = call i32 @tegra_slink_init_dma_param(%struct.tegra_slink_data* %230, i32 0)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %333

235:                                              ; preds = %229
  %236 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %237 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %240 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %242 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %241, i32 0, i32 8
  %243 = call i32 @init_completion(i32* %242)
  %244 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %245 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %244, i32 0, i32 7
  %246 = call i32 @init_completion(i32* %245)
  %247 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %248 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %247, i32 0, i32 6
  %249 = call i32 @init_completion(i32* %248)
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = call i32 @pm_runtime_enable(%struct.TYPE_19__* %251)
  %253 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %254 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %253, i32 0, i32 0
  %255 = call i32 @pm_runtime_enabled(%struct.TYPE_19__* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %235
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %258, i32 0, i32 0
  %260 = call i32 @tegra_slink_runtime_resume(%struct.TYPE_19__* %259)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %318

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %264, %235
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = call i32 @pm_runtime_get_sync(%struct.TYPE_19__* %267)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %265
  %272 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %273 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %272, i32 0, i32 0
  %274 = load i32, i32* %7, align 4
  %275 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %273, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %274)
  br label %318

276:                                              ; preds = %265
  %277 = load i32, i32* @SLINK_M_S, align 4
  %278 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %279 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %278, i32 0, i32 5
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* @SLINK_CS_ACTIVE_BETWEEN, align 4
  %281 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %282 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 8
  %283 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %284 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %285 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @SLINK_COMMAND, align 4
  %288 = call i32 @tegra_slink_writel(%struct.tegra_slink_data* %283, i32 %286, i32 %287)
  %289 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %290 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %291 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @SLINK_COMMAND2, align 4
  %294 = call i32 @tegra_slink_writel(%struct.tegra_slink_data* %289, i32 %292, i32 %293)
  %295 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %296 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %295, i32 0, i32 0
  %297 = call i32 @pm_runtime_put(%struct.TYPE_19__* %296)
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %303 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  store i32 %301, i32* %304, align 4
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %305, i32 0, i32 0
  %307 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %308 = call i32 @devm_spi_register_master(%struct.TYPE_19__* %306, %struct.spi_master* %307)
  store i32 %308, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %276
  %312 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %313 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %312, i32 0, i32 0
  %314 = load i32, i32* %7, align 4
  %315 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %313, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %314)
  br label %318

316:                                              ; preds = %276
  %317 = load i32, i32* %7, align 4
  store i32 %317, i32* %2, align 4
  br label %349

318:                                              ; preds = %311, %271, %263
  %319 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %320 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %319, i32 0, i32 0
  %321 = call i32 @pm_runtime_disable(%struct.TYPE_19__* %320)
  %322 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %323 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %322, i32 0, i32 0
  %324 = call i32 @pm_runtime_status_suspended(%struct.TYPE_19__* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %318
  %327 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %328 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %327, i32 0, i32 0
  %329 = call i32 @tegra_slink_runtime_suspend(%struct.TYPE_19__* %328)
  br label %330

330:                                              ; preds = %326, %318
  %331 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %332 = call i32 @tegra_slink_deinit_dma_param(%struct.tegra_slink_data* %331, i32 0)
  br label %333

333:                                              ; preds = %330, %234
  %334 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %335 = call i32 @tegra_slink_deinit_dma_param(%struct.tegra_slink_data* %334, i32 1)
  br label %336

336:                                              ; preds = %333, %228, %208
  %337 = load i32, i32* %8, align 4
  %338 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %339 = call i32 @free_irq(i32 %337, %struct.tegra_slink_data* %338)
  br label %340

340:                                              ; preds = %336, %190
  %341 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %342 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @clk_disable(i32 %343)
  br label %345

345:                                              ; preds = %340, %166, %154, %138, %122, %99
  %346 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %347 = call i32 @spi_master_put(%struct.spi_master* %346)
  %348 = load i32, i32* %7, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %345, %316, %32, %17
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.tegra_slink_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_19__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.tegra_slink_data*) #1

declare dso_local i32 @dev_name(%struct.TYPE_19__*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @tegra_slink_init_dma_param(%struct.tegra_slink_data*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.TYPE_19__*) #1

declare dso_local i32 @tegra_slink_runtime_resume(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_19__*) #1

declare dso_local i32 @tegra_slink_writel(%struct.tegra_slink_data*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_19__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_19__*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_status_suspended(%struct.TYPE_19__*) #1

declare dso_local i32 @tegra_slink_runtime_suspend(%struct.TYPE_19__*) #1

declare dso_local i32 @tegra_slink_deinit_dma_param(%struct.tegra_slink_data*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_slink_data*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
