; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt65xx.c_mtk_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32*, i32 }
%struct.spi_master = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.mtk_spi = type { i32, i64*, %struct.TYPE_17__*, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.of_device_id = type { %struct.TYPE_17__* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to alloc spi master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@mtk_spi_set_cs = common dso_local global i32 0, align 4
@mtk_spi_prepare_message = common dso_local global i32 0, align 4
@mtk_spi_transfer_one = common dso_local global i32 0, align 4
@mtk_spi_can_dma = common dso_local global i32 0, align 4
@mtk_spi_setup = common dso_local global i32 0, align 4
@mtk_spi_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to probe of_node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"mediatek,pad-select\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No 'mediatek,pad-select' property\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@MT8173_SPI_MAX_PAD_SEL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"wrong pad-sel[%d]: %u\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to determine base address\0A\00", align 1
@mtk_spi_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to register irq (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"parent-clk\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to get parent-clk: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sel-clk\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"failed to get sel-clk: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"spi-clk\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to get spi-clk: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to enable spi_clk (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"failed to clk_set_parent (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"failed to register master (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"pad_num does not match num_chipselect(%d != %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"cs_gpios not specified and num_chipselect > 1\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"can't get CS GPIO %i\0A\00", align 1
@DMA_ADDR_EXT_BITS = common dso_local global i32 0, align 4
@DMA_ADDR_DEF_BITS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [37 x i8] c"SPI dma_set_mask(%d) failed, ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.mtk_spi*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_18__* %13, i32 56)
  store %struct.spi_master* %14, %struct.spi_master** %4, align 8
  %15 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %16 = icmp ne %struct.spi_master* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %473

23:                                               ; preds = %1
  %24 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %25 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 10
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @SPI_CPOL, align 4
  %34 = load i32, i32* @SPI_CPHA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SPI_LSB_FIRST, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %39 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @mtk_spi_set_cs, align 4
  %41 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %42 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @mtk_spi_prepare_message, align 4
  %44 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %45 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @mtk_spi_transfer_one, align 4
  %47 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @mtk_spi_can_dma, align 4
  %50 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %51 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @mtk_spi_setup, align 4
  %53 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %54 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @mtk_spi_of_match, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.of_device_id* @of_match_node(i32 %55, i32 %59)
  store %struct.of_device_id* %60, %struct.of_device_id** %6, align 8
  %61 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %62 = icmp ne %struct.of_device_id* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %23
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %469

69:                                               ; preds = %23
  %70 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %71 = call %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master* %70)
  store %struct.mtk_spi* %71, %struct.mtk_spi** %5, align 8
  %72 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %73 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %76 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %75, i32 0, i32 2
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %76, align 8
  %77 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %78 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %77, i32 0, i32 2
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = load i32, i32* @SPI_MASTER_MUST_TX, align 4
  %85 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %86 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %69
  %88 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %89 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %88, i32 0, i32 2
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %177

94:                                               ; preds = %87
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @of_property_count_u32_elems(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %101 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %103 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %469

112:                                              ; preds = %94
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %116 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i64* @devm_kmalloc_array(%struct.TYPE_18__* %114, i32 %117, i32 4, i32 %118)
  %120 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %121 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %120, i32 0, i32 1
  store i64* %119, i64** %121, align 8
  %122 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %123 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %112
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %469

129:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %173, %129
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %133 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %176

136:                                              ; preds = %130
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %143 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = call i32 @of_property_read_u32_index(i32 %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %141, i64* %147)
  %149 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %150 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MT8173_SPI_MAX_PAD_SEL, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %136
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %163 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %161, i64 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %10, align 4
  br label %469

172:                                              ; preds = %136
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %130

176:                                              ; preds = %130
  br label %177

177:                                              ; preds = %176, %87
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %180 = call i32 @platform_set_drvdata(%struct.platform_device* %178, %struct.spi_master* %179)
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = load i32, i32* @IORESOURCE_MEM, align 4
  %183 = call %struct.resource* @platform_get_resource(%struct.platform_device* %181, i32 %182, i32 0)
  store %struct.resource* %183, %struct.resource** %7, align 8
  %184 = load %struct.resource*, %struct.resource** %7, align 8
  %185 = icmp ne %struct.resource* %184, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %177
  %187 = load i32, i32* @ENODEV, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %10, align 4
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %469

192:                                              ; preds = %177
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load %struct.resource*, %struct.resource** %7, align 8
  %196 = call i8* @devm_ioremap_resource(%struct.TYPE_18__* %194, %struct.resource* %195)
  %197 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %198 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %197, i32 0, i32 6
  store i8* %196, i8** %198, align 8
  %199 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %200 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %199, i32 0, i32 6
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @IS_ERR(i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %192
  %205 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %206 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %205, i32 0, i32 6
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @PTR_ERR(i8* %207)
  store i32 %208, i32* %10, align 4
  br label %469

209:                                              ; preds = %192
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = call i32 @platform_get_irq(%struct.platform_device* %210, i32 0)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %10, align 4
  br label %469

216:                                              ; preds = %209
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %229, label %222

222:                                              ; preds = %216
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  store i32* %225, i32** %228, align 8
  br label %229

229:                                              ; preds = %222, %216
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @mtk_spi_interrupt, align 4
  %234 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = call i32 @dev_name(%struct.TYPE_18__* %236)
  %238 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %239 = call i32 @devm_request_irq(%struct.TYPE_18__* %231, i32 %232, i32 %233, i32 %234, i32 %237, %struct.spi_master* %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %229
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = load i32, i32* %10, align 4
  %246 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %244, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %245)
  br label %469

247:                                              ; preds = %229
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = call i8* @devm_clk_get(%struct.TYPE_18__* %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %251 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %252 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  %253 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %254 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %253, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @IS_ERR(i8* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %247
  %259 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %260 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %259, i32 0, i32 4
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @PTR_ERR(i8* %261)
  store i32 %262, i32* %10, align 4
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = load i32, i32* %10, align 4
  %266 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %265)
  br label %469

267:                                              ; preds = %247
  %268 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %269 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %268, i32 0, i32 0
  %270 = call i8* @devm_clk_get(%struct.TYPE_18__* %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %271 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %272 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %271, i32 0, i32 5
  store i8* %270, i8** %272, align 8
  %273 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %274 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %273, i32 0, i32 5
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @IS_ERR(i8* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %267
  %279 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %280 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %279, i32 0, i32 5
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @PTR_ERR(i8* %281)
  store i32 %282, i32* %10, align 4
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %283, i32 0, i32 0
  %285 = load i32, i32* %10, align 4
  %286 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %284, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %285)
  br label %469

287:                                              ; preds = %267
  %288 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %289 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %288, i32 0, i32 0
  %290 = call i8* @devm_clk_get(%struct.TYPE_18__* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %291 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %292 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %291, i32 0, i32 3
  store i8* %290, i8** %292, align 8
  %293 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %294 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %293, i32 0, i32 3
  %295 = load i8*, i8** %294, align 8
  %296 = call i64 @IS_ERR(i8* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %287
  %299 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %300 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %299, i32 0, i32 3
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @PTR_ERR(i8* %301)
  store i32 %302, i32* %10, align 4
  %303 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %304 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %303, i32 0, i32 0
  %305 = load i32, i32* %10, align 4
  %306 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %304, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %305)
  br label %469

307:                                              ; preds = %287
  %308 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %309 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %308, i32 0, i32 3
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @clk_prepare_enable(i8* %310)
  store i32 %311, i32* %10, align 4
  %312 = load i32, i32* %10, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %307
  %315 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %316 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %315, i32 0, i32 0
  %317 = load i32, i32* %10, align 4
  %318 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %316, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %317)
  br label %469

319:                                              ; preds = %307
  %320 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %321 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %320, i32 0, i32 5
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %324 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %323, i32 0, i32 4
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @clk_set_parent(i8* %322, i8* %325)
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %10, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %319
  %330 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %331 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %330, i32 0, i32 0
  %332 = load i32, i32* %10, align 4
  %333 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %331, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %332)
  %334 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %335 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %334, i32 0, i32 3
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @clk_disable_unprepare(i8* %336)
  br label %469

338:                                              ; preds = %319
  %339 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %340 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @clk_disable_unprepare(i8* %341)
  %343 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %344 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %343, i32 0, i32 0
  %345 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %344)
  %346 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %347 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %346, i32 0, i32 0
  %348 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %349 = call i32 @devm_spi_register_master(%struct.TYPE_18__* %347, %struct.spi_master* %348)
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %10, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %338
  %353 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %354 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %353, i32 0, i32 0
  %355 = load i32, i32* %10, align 4
  %356 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %354, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %355)
  br label %465

357:                                              ; preds = %338
  %358 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %359 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %358, i32 0, i32 2
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %439

364:                                              ; preds = %357
  %365 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %366 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %369 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %367, %370
  br i1 %371, label %372, label %384

372:                                              ; preds = %364
  %373 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %374 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %373, i32 0, i32 0
  %375 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %376 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %379 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %374, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %377, i32 %380)
  %382 = load i32, i32* @EINVAL, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %10, align 4
  br label %465

384:                                              ; preds = %364
  %385 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %386 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %385, i32 0, i32 3
  %387 = load i32*, i32** %386, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %400, label %389

389:                                              ; preds = %384
  %390 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %391 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = icmp sgt i32 %392, 1
  br i1 %393, label %394, label %400

394:                                              ; preds = %389
  %395 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %396 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %395, i32 0, i32 0
  %397 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %396, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  %398 = load i32, i32* @EINVAL, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %10, align 4
  br label %465

400:                                              ; preds = %389, %384
  %401 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %402 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %401, i32 0, i32 3
  %403 = load i32*, i32** %402, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %405, label %438

405:                                              ; preds = %400
  store i32 0, i32* %8, align 4
  br label %406

406:                                              ; preds = %434, %405
  %407 = load i32, i32* %8, align 4
  %408 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %409 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = icmp slt i32 %407, %410
  br i1 %411, label %412, label %437

412:                                              ; preds = %406
  %413 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %414 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %413, i32 0, i32 0
  %415 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %416 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %423 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %422, i32 0, i32 0
  %424 = call i32 @dev_name(%struct.TYPE_18__* %423)
  %425 = call i32 @devm_gpio_request(%struct.TYPE_18__* %414, i32 %421, i32 %424)
  store i32 %425, i32* %10, align 4
  %426 = load i32, i32* %10, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %412
  %429 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %430 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %429, i32 0, i32 0
  %431 = load i32, i32* %8, align 4
  %432 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %430, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %431)
  br label %465

433:                                              ; preds = %412
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %8, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %8, align 4
  br label %406

437:                                              ; preds = %406
  br label %438

438:                                              ; preds = %437, %400
  br label %439

439:                                              ; preds = %438, %357
  %440 = load %struct.mtk_spi*, %struct.mtk_spi** %5, align 8
  %441 = getelementptr inbounds %struct.mtk_spi, %struct.mtk_spi* %440, i32 0, i32 2
  %442 = load %struct.TYPE_17__*, %struct.TYPE_17__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %439
  %447 = load i32, i32* @DMA_ADDR_EXT_BITS, align 4
  store i32 %447, i32* %11, align 4
  br label %450

448:                                              ; preds = %439
  %449 = load i32, i32* @DMA_ADDR_DEF_BITS, align 4
  store i32 %449, i32* %11, align 4
  br label %450

450:                                              ; preds = %448, %446
  %451 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %452 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %451, i32 0, i32 0
  %453 = load i32, i32* %11, align 4
  %454 = call i32 @DMA_BIT_MASK(i32 %453)
  %455 = call i32 @dma_set_mask(%struct.TYPE_18__* %452, i32 %454)
  store i32 %455, i32* %10, align 4
  %456 = load i32, i32* %10, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %464

458:                                              ; preds = %450
  %459 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %460 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %459, i32 0, i32 0
  %461 = load i32, i32* %11, align 4
  %462 = load i32, i32* %10, align 4
  %463 = call i32 @dev_notice(%struct.TYPE_18__* %460, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %461, i32 %462)
  br label %464

464:                                              ; preds = %458, %450
  store i32 0, i32* %2, align 4
  br label %473

465:                                              ; preds = %428, %394, %372, %352
  %466 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %467 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %466, i32 0, i32 0
  %468 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %467)
  br label %469

469:                                              ; preds = %465, %329, %314, %298, %278, %258, %242, %214, %204, %186, %158, %126, %106, %63
  %470 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %471 = call i32 @spi_master_put(%struct.spi_master* %470)
  %472 = load i32, i32* %10, align 4
  store i32 %472, i32* %2, align 4
  br label %473

473:                                              ; preds = %469, %464, %17
  %474 = load i32, i32* %2, align 4
  ret i32 %474
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.mtk_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @of_property_count_u32_elems(i32, i8*) #1

declare dso_local i64* @devm_kmalloc_array(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i64*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_set_parent(i8*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_18__*, %struct.spi_master*) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_notice(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
