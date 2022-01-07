; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, %struct.TYPE_18__, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.tegra_spi_data = type { i32, i32, i32, i64, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__*, %struct.spi_master* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"master allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@tegra_spi_setup = common dso_local global i32 0, align 4
@tegra_spi_cleanup = common dso_local global i32 0, align 4
@tegra_spi_transfer_one_message = common dso_local global i32 0, align 4
@tegra_spi_set_hw_cs_timing = common dso_local global i32 0, align 4
@MAX_CHIP_SELECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unsupported tegra\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"can not get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"can not get reset\0A\00", align 1
@SPI_FIFO_DEPTH = common dso_local global i32 0, align 4
@DEFAULT_SPI_DMA_BUF_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"pm runtime get failed, e = %d\0A\00", align 1
@SPI_M_S = common dso_local global i32 0, align 4
@SPI_COMMAND1 = common dso_local global i32 0, align 4
@SPI_CS_TIMING1 = common dso_local global i32 0, align 4
@SPI_CS_TIMING2 = common dso_local global i32 0, align 4
@SPI_COMMAND2 = common dso_local global i32 0, align 4
@tegra_spi_isr = common dso_local global i32 0, align 4
@tegra_spi_isr_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"can not register to master err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.tegra_spi_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_19__* %11, i32 104)
  store %struct.spi_master* %12, %struct.spi_master** %4, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %14 = icmp ne %struct.spi_master* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %351

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.spi_master* %23)
  %25 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %26 = call %struct.tegra_spi_data* @spi_master_get_devdata(%struct.spi_master* %25)
  store %struct.tegra_spi_data* %26, %struct.tegra_spi_data** %5, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 0
  %33 = call i64 @of_property_read_u32(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %37 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %36, i32 0, i32 0
  store i32 25000000, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %21
  %39 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %40 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @SPI_CPOL, align 4
  %42 = load i32, i32* @SPI_CPHA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SPI_CS_HIGH, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SPI_LSB_FIRST, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SPI_TX_DUAL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SPI_RX_DUAL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SPI_3WIRE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %55 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = call i32 @SPI_BPW_RANGE_MASK(i32 4, i32 32)
  %57 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %58 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @tegra_spi_setup, align 4
  %60 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %61 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @tegra_spi_cleanup, align 4
  %63 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %64 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @tegra_spi_transfer_one_message, align 4
  %66 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %67 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @tegra_spi_set_hw_cs_timing, align 4
  %69 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %70 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* @MAX_CHIP_SELECT, align 8
  %72 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %73 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %75 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @of_alias_get_id(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %38
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %86 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %38
  %88 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %89 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %90 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %89, i32 0, i32 18
  store %struct.spi_master* %88, %struct.spi_master** %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %94 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %93, i32 0, i32 17
  store %struct.TYPE_19__* %92, %struct.TYPE_19__** %94, align 8
  %95 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %96 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %95, i32 0, i32 16
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @of_device_get_match_data(%struct.TYPE_19__* %99)
  %101 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %102 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %101, i32 0, i32 15
  store i32 %100, i32* %102, align 8
  %103 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %104 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %103, i32 0, i32 15
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %87
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %347

113:                                              ; preds = %87
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load i32, i32* @IORESOURCE_MEM, align 4
  %116 = call %struct.resource* @platform_get_resource(%struct.platform_device* %114, i32 %115, i32 0)
  store %struct.resource* %116, %struct.resource** %6, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.resource*, %struct.resource** %6, align 8
  %120 = call i32 @devm_ioremap_resource(%struct.TYPE_19__* %118, %struct.resource* %119)
  %121 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %122 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %121, i32 0, i32 14
  store i32 %120, i32* %122, align 4
  %123 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %124 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %113
  %129 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %130 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %129, i32 0, i32 14
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @PTR_ERR(i32 %131)
  store i32 %132, i32* %7, align 4
  br label %347

133:                                              ; preds = %113
  %134 = load %struct.resource*, %struct.resource** %6, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %138 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %137, i32 0, i32 13
  store i32 %136, i32* %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = call i32 @platform_get_irq(%struct.platform_device* %139, i32 0)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %143 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @devm_clk_get(%struct.TYPE_19__* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %148 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %147, i32 0, i32 12
  store i32 %146, i32* %148, align 4
  %149 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %150 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %133
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %159 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %7, align 4
  br label %347

162:                                              ; preds = %133
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 @devm_reset_control_get_exclusive(%struct.TYPE_19__* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %166 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %167 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 4
  %168 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %169 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @IS_ERR(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %162
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %177 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %178 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @PTR_ERR(i32 %179)
  store i32 %180, i32* %7, align 4
  br label %347

181:                                              ; preds = %162
  %182 = load i32, i32* @SPI_FIFO_DEPTH, align 4
  %183 = shl i32 %182, 2
  %184 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %185 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @DEFAULT_SPI_DMA_BUF_LEN, align 4
  %187 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %188 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %190 = call i32 @tegra_spi_init_dma_param(%struct.tegra_spi_data* %189, i32 1)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  br label %347

194:                                              ; preds = %181
  %195 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %196 = call i32 @tegra_spi_init_dma_param(%struct.tegra_spi_data* %195, i32 0)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %344

200:                                              ; preds = %194
  %201 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %202 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %205 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %207 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %206, i32 0, i32 11
  %208 = call i32 @init_completion(i32* %207)
  %209 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %210 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %209, i32 0, i32 10
  %211 = call i32 @init_completion(i32* %210)
  %212 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %213 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %212, i32 0, i32 9
  %214 = call i32 @init_completion(i32* %213)
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @pm_runtime_enable(%struct.TYPE_19__* %216)
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call i32 @pm_runtime_enabled(%struct.TYPE_19__* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %200
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 @tegra_spi_runtime_resume(%struct.TYPE_19__* %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %329

229:                                              ; preds = %222
  br label %230

230:                                              ; preds = %229, %200
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call i32 @pm_runtime_get_sync(%struct.TYPE_19__* %232)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = load i32, i32* %7, align 4
  %240 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %238, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %239)
  br label %329

241:                                              ; preds = %230
  %242 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %243 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @reset_control_assert(i32 %244)
  %246 = call i32 @udelay(i32 2)
  %247 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %248 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @reset_control_deassert(i32 %249)
  %251 = load i32, i32* @SPI_M_S, align 4
  %252 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %253 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 8
  %254 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %255 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %256 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @SPI_COMMAND1, align 4
  %259 = call i32 @tegra_spi_writel(%struct.tegra_spi_data* %254, i32 %257, i32 %258)
  %260 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %261 = load i32, i32* @SPI_CS_TIMING1, align 4
  %262 = call i8* @tegra_spi_readl(%struct.tegra_spi_data* %260, i32 %261)
  %263 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %264 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %263, i32 0, i32 6
  store i8* %262, i8** %264, align 8
  %265 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %266 = load i32, i32* @SPI_CS_TIMING2, align 4
  %267 = call i8* @tegra_spi_readl(%struct.tegra_spi_data* %265, i32 %266)
  %268 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %269 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %268, i32 0, i32 5
  store i8* %267, i8** %269, align 8
  %270 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %271 = load i32, i32* @SPI_COMMAND2, align 4
  %272 = call i8* @tegra_spi_readl(%struct.tegra_spi_data* %270, i32 %271)
  %273 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %274 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %273, i32 0, i32 4
  store i8* %272, i8** %274, align 8
  %275 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %276 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %275, i32 0, i32 6
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %277, 1
  %279 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %280 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %279, i32 0, i32 3
  store i64 %278, i64* %280, align 8
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i32 @pm_runtime_put(%struct.TYPE_19__* %282)
  %284 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %285 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @tegra_spi_isr, align 4
  %288 = load i32, i32* @tegra_spi_isr_thread, align 4
  %289 = load i32, i32* @IRQF_ONESHOT, align 4
  %290 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %291 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %290, i32 0, i32 0
  %292 = call i32 @dev_name(%struct.TYPE_19__* %291)
  %293 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %294 = call i32 @request_threaded_irq(i32 %286, i32 %287, i32 %288, i32 %289, i32 %292, %struct.tegra_spi_data* %293)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %241
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %298, i32 0, i32 0
  %300 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %301 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %299, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %302)
  br label %329

304:                                              ; preds = %241
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %310 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  store i32 %308, i32* %311, align 4
  %312 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %313 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %312, i32 0, i32 0
  %314 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %315 = call i32 @devm_spi_register_master(%struct.TYPE_19__* %313, %struct.spi_master* %314)
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* %7, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %304
  %319 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %320 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %319, i32 0, i32 0
  %321 = load i32, i32* %7, align 4
  %322 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %320, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %321)
  br label %325

323:                                              ; preds = %304
  %324 = load i32, i32* %7, align 4
  store i32 %324, i32* %2, align 4
  br label %351

325:                                              ; preds = %318
  %326 = load i32, i32* %8, align 4
  %327 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %328 = call i32 @free_irq(i32 %326, %struct.tegra_spi_data* %327)
  br label %329

329:                                              ; preds = %325, %297, %236, %228
  %330 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %331 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %330, i32 0, i32 0
  %332 = call i32 @pm_runtime_disable(%struct.TYPE_19__* %331)
  %333 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %334 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %333, i32 0, i32 0
  %335 = call i32 @pm_runtime_status_suspended(%struct.TYPE_19__* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %329
  %338 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %339 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %338, i32 0, i32 0
  %340 = call i32 @tegra_spi_runtime_suspend(%struct.TYPE_19__* %339)
  br label %341

341:                                              ; preds = %337, %329
  %342 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %343 = call i32 @tegra_spi_deinit_dma_param(%struct.tegra_spi_data* %342, i32 0)
  br label %344

344:                                              ; preds = %341, %199
  %345 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %346 = call i32 @tegra_spi_deinit_dma_param(%struct.tegra_spi_data* %345, i32 1)
  br label %347

347:                                              ; preds = %344, %193, %173, %154, %128, %107
  %348 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %349 = call i32 @spi_master_put(%struct.spi_master* %348)
  %350 = load i32, i32* %7, align 4
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %347, %323, %15
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.tegra_spi_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_19__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_19__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @tegra_spi_init_dma_param(%struct.tegra_spi_data*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.TYPE_19__*) #1

declare dso_local i32 @tegra_spi_runtime_resume(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_19__*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @tegra_spi_writel(%struct.tegra_spi_data*, i32, i32) #1

declare dso_local i8* @tegra_spi_readl(%struct.tegra_spi_data*, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_19__*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.tegra_spi_data*) #1

declare dso_local i32 @dev_name(%struct.TYPE_19__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_19__*, %struct.spi_master*) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_spi_data*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_status_suspended(%struct.TYPE_19__*) #1

declare dso_local i32 @tegra_spi_runtime_suspend(%struct.TYPE_19__*) #1

declare dso_local i32 @tegra_spi_deinit_dma_param(%struct.tegra_spi_data*, i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
