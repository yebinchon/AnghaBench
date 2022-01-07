; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.tegra_sflash_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, %struct.spi_master* }
%struct.of_device_id = type { i32 }

@tegra_sflash_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"master allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@tegra_sflash_transfer_one_message = common dso_local global i32 0, align 4
@MAX_CHIP_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@tegra_sflash_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"can not get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"can not get reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"pm runtime get failed, e = %d\0A\00", align 1
@SPI_M_S = common dso_local global i32 0, align 4
@SPI_CS_SW = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"can not register to master err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_sflash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sflash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.tegra_sflash_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @tegra_sflash_of_match, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.of_device_id* @of_match_device(i32 %8, %struct.TYPE_18__* %10)
  store %struct.of_device_id* %11, %struct.of_device_id** %7, align 8
  %12 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %13 = icmp ne %struct.of_device_id* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %246

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_18__* %22, i32 48)
  store %struct.spi_master* %23, %struct.spi_master** %4, align 8
  %24 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %25 = icmp ne %struct.spi_master* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %246

32:                                               ; preds = %20
  %33 = load i32, i32* @SPI_CPOL, align 4
  %34 = load i32, i32* @SPI_CPHA, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %37 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @tegra_sflash_transfer_one_message, align 4
  %39 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %40 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %42 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @MAX_CHIP_SELECT, align 4
  %44 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %45 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.spi_master* %47)
  %49 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %50 = call %struct.tegra_sflash_data* @spi_master_get_devdata(%struct.spi_master* %49)
  store %struct.tegra_sflash_data* %50, %struct.tegra_sflash_data** %5, align 8
  %51 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %52 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %52, i32 0, i32 8
  store %struct.spi_master* %51, %struct.spi_master** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %56, i32 0, i32 6
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %57, align 8
  %58 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %59 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %58, i32 0, i32 7
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %61, i32 0, i32 6
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %67 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %66, i32 0, i32 2
  %68 = call i64 @of_property_read_u32(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %32
  %71 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %72 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %71, i32 0, i32 2
  store i32 25000000, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %32
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %74, i32 0)
  %76 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %79 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %85 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %6, align 4
  br label %242

88:                                               ; preds = %73
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @platform_get_irq(%struct.platform_device* %89, i32 0)
  %91 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %92 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %94 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @tegra_sflash_isr, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_name(%struct.TYPE_18__* %98)
  %100 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %101 = call i32 @request_irq(i32 %95, i32 %96, i32 0, i32 %99, %struct.tegra_sflash_data* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %88
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %108 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %242

111:                                              ; preds = %88
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @devm_clk_get(%struct.TYPE_18__* %113, i32* null)
  %115 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %116 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %118 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %127 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @PTR_ERR(i32 %128)
  store i32 %129, i32* %6, align 4
  br label %236

130:                                              ; preds = %111
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @devm_reset_control_get_exclusive(%struct.TYPE_18__* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %135 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %137 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @IS_ERR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %130
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %143, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %145 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %146 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %6, align 4
  br label %236

149:                                              ; preds = %130
  %150 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %151 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %150, i32 0, i32 3
  %152 = call i32 @init_completion(i32* %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %154)
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @pm_runtime_enabled(%struct.TYPE_18__* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %149
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @tegra_sflash_runtime_resume(%struct.TYPE_18__* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %223

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %149
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32 @pm_runtime_get_sync(%struct.TYPE_18__* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* %6, align 4
  %178 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  br label %223

179:                                              ; preds = %168
  %180 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %181 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @reset_control_assert(i32 %182)
  %184 = call i32 @udelay(i32 2)
  %185 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %186 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @reset_control_deassert(i32 %187)
  %189 = load i32, i32* @SPI_M_S, align 4
  %190 = load i32, i32* @SPI_CS_SW, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %193 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %195 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %196 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @SPI_COMMAND, align 4
  %199 = call i32 @tegra_sflash_writel(%struct.tegra_sflash_data* %194, i32 %197, i32 %198)
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = call i32 @pm_runtime_put(%struct.TYPE_18__* %201)
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %208 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 4
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %213 = call i32 @devm_spi_register_master(%struct.TYPE_18__* %211, %struct.spi_master* %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %179
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = load i32, i32* %6, align 4
  %220 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %218, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %219)
  br label %223

221:                                              ; preds = %179
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %2, align 4
  br label %246

223:                                              ; preds = %216, %174, %166
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %225)
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = call i32 @pm_runtime_status_suspended(%struct.TYPE_18__* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %223
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 @tegra_sflash_runtime_suspend(%struct.TYPE_18__* %233)
  br label %235

235:                                              ; preds = %231, %223
  br label %236

236:                                              ; preds = %235, %141, %122
  %237 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %238 = getelementptr inbounds %struct.tegra_sflash_data, %struct.tegra_sflash_data* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %5, align 8
  %241 = call i32 @free_irq(i32 %239, %struct.tegra_sflash_data* %240)
  br label %242

242:                                              ; preds = %236, %104, %83
  %243 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %244 = call i32 @spi_master_put(%struct.spi_master* %243)
  %245 = load i32, i32* %6, align 4
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %242, %221, %26, %14
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.tegra_sflash_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.tegra_sflash_data*) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.TYPE_18__*) #1

declare dso_local i32 @tegra_sflash_runtime_resume(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_18__*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @tegra_sflash_writel(%struct.tegra_sflash_data*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_18__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_18__*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_status_suspended(%struct.TYPE_18__*) #1

declare dso_local i32 @tegra_sflash_runtime_suspend(%struct.TYPE_18__*) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_sflash_data*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
