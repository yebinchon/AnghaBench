; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.bcm_qspi_soc_intc = type { i32 (%struct.bcm_qspi_soc_intc*, i32, i32)* }
%struct.bcm_qspi = type { i32, i32, i32, i32, %struct.TYPE_13__*, i8*, %struct.TYPE_9__, i32, i32, %struct.bcm_qspi_soc_intc*, i8**, i32, %struct.spi_master*, %struct.TYPE_10__, %struct.platform_device* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.bcm_qspi* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_11__, i32, i32*, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i32* }
%struct.resource = type { i32 }

@qspi_irq_tab = common dso_local global %struct.TYPE_12__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@bcm_qspi_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error allocating spi_master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@bcm_qspi_setup = common dso_local global i32 0, align 4
@bcm_qspi_transfer_one = common dso_local global i32 0, align 4
@bcm_qspi_mem_ops = common dso_local global i32 0, align 4
@bcm_qspi_cleanup = common dso_local global i32 0, align 4
@NUM_CHIPSELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"hif_mspi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mspi\00", align 1
@MSPI = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"bspi\00", align 1
@BSPI = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"using %smspi mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bspi-\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cs_reg\00", align 1
@CHIP_SELECT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@SINGLE_L2 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"IRQ %s not found\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"registered IRQ %s %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"no IRQs registered, cannot init driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSPI_DONE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"unable to get clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@QSPI_SPBR_MIN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"can't register master\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_qspi_probe(%struct.platform_device* %0, %struct.bcm_qspi_soc_intc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.bcm_qspi_soc_intc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.bcm_qspi*, align 8
  %8 = alloca %struct.spi_master*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.bcm_qspi_soc_intc* %1, %struct.bcm_qspi_soc_intc** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %14, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qspi_irq_tab, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %455

27:                                               ; preds = %2
  %28 = load i32, i32* @bcm_qspi_of_match, align 4
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @of_match_node(i32 %28, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %455

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call %struct.spi_master* @spi_alloc_master(%struct.device* %38, i32 120)
  store %struct.spi_master* %39, %struct.spi_master** %8, align 8
  %40 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %41 = icmp ne %struct.spi_master* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %455

47:                                               ; preds = %37
  %48 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %49 = call %struct.bcm_qspi* @spi_master_get_devdata(%struct.spi_master* %48)
  store %struct.bcm_qspi* %49, %struct.bcm_qspi** %7, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %52 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %51, i32 0, i32 14
  store %struct.platform_device* %50, %struct.platform_device** %52, align 8
  %53 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %54 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %53, i32 0, i32 13
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %57 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %56, i32 0, i32 13
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %60 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %59, i32 0, i32 13
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %63 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %64 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %63, i32 0, i32 12
  store %struct.spi_master* %62, %struct.spi_master** %64, align 8
  %65 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %66 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load i32, i32* @SPI_CPHA, align 4
  %68 = load i32, i32* @SPI_CPOL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SPI_RX_DUAL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SPI_RX_QUAD, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %75 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @bcm_qspi_setup, align 4
  %77 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %78 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @bcm_qspi_transfer_one, align 4
  %80 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %81 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %83 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %82, i32 0, i32 5
  store i32* @bcm_qspi_mem_ops, i32** %83, align 8
  %84 = load i32, i32* @bcm_qspi_cleanup, align 4
  %85 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %86 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %91 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load i32, i32* @NUM_CHIPSELECT, align 4
  %94 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %95 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @of_device_is_big_endian(i64 %98)
  %100 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %101 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %100, i32 0, i32 11
  store i32 %99, i32* %101, align 8
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @of_property_read_u32(i64 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %47
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %110 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %47
  %112 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %113 = load i32, i32* @IORESOURCE_MEM, align 4
  %114 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %112, i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %114, %struct.resource** %9, align 8
  %115 = load %struct.resource*, %struct.resource** %9, align 8
  %116 = icmp ne %struct.resource* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %119 = load i32, i32* @IORESOURCE_MEM, align 4
  %120 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %118, i32 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %120, %struct.resource** %9, align 8
  br label %121

121:                                              ; preds = %117, %111
  %122 = load %struct.resource*, %struct.resource** %9, align 8
  %123 = icmp ne %struct.resource* %122, null
  br i1 %123, label %124, label %150

124:                                              ; preds = %121
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = load %struct.resource*, %struct.resource** %9, align 8
  %127 = call i8* @devm_ioremap_resource(%struct.device* %125, %struct.resource* %126)
  %128 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %129 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %128, i32 0, i32 10
  %130 = load i8**, i8*** %129, align 8
  %131 = load i64, i64* @MSPI, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  store i8* %127, i8** %132, align 8
  %133 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %134 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %133, i32 0, i32 10
  %135 = load i8**, i8*** %134, align 8
  %136 = load i64, i64* @MSPI, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @IS_ERR(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %124
  %142 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %143 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %142, i32 0, i32 10
  %144 = load i8**, i8*** %143, align 8
  %145 = load i64, i64* @MSPI, align 8
  %146 = getelementptr inbounds i8*, i8** %144, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @PTR_ERR(i8* %147)
  store i32 %148, i32* %11, align 4
  br label %451

149:                                              ; preds = %124
  br label %151

150:                                              ; preds = %121
  br label %451

151:                                              ; preds = %149
  %152 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %153 = load i32, i32* @IORESOURCE_MEM, align 4
  %154 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %152, i32 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* %154, %struct.resource** %9, align 8
  %155 = load %struct.resource*, %struct.resource** %9, align 8
  %156 = icmp ne %struct.resource* %155, null
  br i1 %156, label %157, label %185

157:                                              ; preds = %151
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = load %struct.resource*, %struct.resource** %9, align 8
  %160 = call i8* @devm_ioremap_resource(%struct.device* %158, %struct.resource* %159)
  %161 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %162 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %161, i32 0, i32 10
  %163 = load i8**, i8*** %162, align 8
  %164 = load i64, i64* @BSPI, align 8
  %165 = getelementptr inbounds i8*, i8** %163, i64 %164
  store i8* %160, i8** %165, align 8
  %166 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %167 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %166, i32 0, i32 10
  %168 = load i8**, i8*** %167, align 8
  %169 = load i64, i64* @BSPI, align 8
  %170 = getelementptr inbounds i8*, i8** %168, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @IS_ERR(i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %157
  %175 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %176 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %175, i32 0, i32 10
  %177 = load i8**, i8*** %176, align 8
  %178 = load i64, i64* @BSPI, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @PTR_ERR(i8* %180)
  store i32 %181, i32* %11, align 4
  br label %451

182:                                              ; preds = %157
  %183 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %184 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %188

185:                                              ; preds = %151
  %186 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %187 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.device*, %struct.device** %6, align 8
  %190 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %191 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %196 = call i32 @dev_info(%struct.device* %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %195)
  %197 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %198 = load i32, i32* @IORESOURCE_MEM, align 4
  %199 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %197, i32 %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store %struct.resource* %199, %struct.resource** %9, align 8
  %200 = load %struct.resource*, %struct.resource** %9, align 8
  %201 = icmp ne %struct.resource* %200, null
  br i1 %201, label %202, label %228

202:                                              ; preds = %188
  %203 = load %struct.device*, %struct.device** %6, align 8
  %204 = load %struct.resource*, %struct.resource** %9, align 8
  %205 = call i8* @devm_ioremap_resource(%struct.device* %203, %struct.resource* %204)
  %206 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %207 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %206, i32 0, i32 10
  %208 = load i8**, i8*** %207, align 8
  %209 = load i64, i64* @CHIP_SELECT, align 8
  %210 = getelementptr inbounds i8*, i8** %208, i64 %209
  store i8* %205, i8** %210, align 8
  %211 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %212 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %211, i32 0, i32 10
  %213 = load i8**, i8*** %212, align 8
  %214 = load i64, i64* @CHIP_SELECT, align 8
  %215 = getelementptr inbounds i8*, i8** %213, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @IS_ERR(i8* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %202
  %220 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %221 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %220, i32 0, i32 10
  %222 = load i8**, i8*** %221, align 8
  %223 = load i64, i64* @CHIP_SELECT, align 8
  %224 = getelementptr inbounds i8*, i8** %222, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @PTR_ERR(i8* %225)
  store i32 %226, i32* %11, align 4
  br label %451

227:                                              ; preds = %202
  br label %228

228:                                              ; preds = %227, %188
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* @GFP_KERNEL, align 4
  %231 = call %struct.TYPE_13__* @kcalloc(i32 %229, i32 4, i32 %230)
  %232 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %233 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %232, i32 0, i32 4
  store %struct.TYPE_13__* %231, %struct.TYPE_13__** %233, align 8
  %234 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %235 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %234, i32 0, i32 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = icmp ne %struct.TYPE_13__* %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %228
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %11, align 4
  br label %451

241:                                              ; preds = %228
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %336, %241
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %15, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %339

246:                                              ; preds = %242
  store i32 -1, i32* %10, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qspi_irq_tab, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  store i8* %252, i8** %14, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qspi_irq_tab, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @SINGLE_L2, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %246
  %262 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = call i32 @platform_get_irq_byname(%struct.platform_device* %262, i8* %263)
  store i32 %264, i32* %10, align 4
  br label %275

265:                                              ; preds = %246
  %266 = load i32, i32* %12, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %265
  %269 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %5, align 8
  %270 = icmp ne %struct.bcm_qspi_soc_intc* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %273 = call i32 @platform_get_irq(%struct.platform_device* %272, i32 0)
  store i32 %273, i32* %10, align 4
  br label %274

274:                                              ; preds = %271, %268, %265
  br label %275

275:                                              ; preds = %274, %261
  %276 = load i32, i32* %10, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %335

278:                                              ; preds = %275
  %279 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %280 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %279, i32 0, i32 0
  %281 = load i32, i32* %10, align 4
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qspi_irq_tab, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load i8*, i8** %14, align 8
  %289 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %290 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %289, i32 0, i32 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = load i32, i32* %13, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i64 %293
  %295 = call i32 @devm_request_irq(%struct.device* %280, i32 %281, i32 %287, i32 0, i8* %288, %struct.TYPE_13__* %294)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %278
  %299 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %300 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %299, i32 0, i32 0
  %301 = load i8*, i8** %14, align 8
  %302 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %301)
  br label %446

303:                                              ; preds = %278
  %304 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %305 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %306 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %305, i32 0, i32 4
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 1
  store %struct.bcm_qspi* %304, %struct.bcm_qspi** %311, align 8
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qspi_irq_tab, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i64 %314
  %316 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %317 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %316, i32 0, i32 4
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  store %struct.TYPE_12__* %315, %struct.TYPE_12__** %322, align 8
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  %325 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %326 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %325, i32 0, i32 0
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qspi_irq_tab, align 8
  %328 = load i32, i32* %13, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = call i32 @dev_dbg(%struct.device* %326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %332, i32 %333)
  br label %335

335:                                              ; preds = %303, %275
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %13, align 4
  br label %242

339:                                              ; preds = %242
  %340 = load i32, i32* %12, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %339
  %343 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %344 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %343, i32 0, i32 0
  %345 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %344, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %346 = load i32, i32* @EINVAL, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %11, align 4
  br label %446

348:                                              ; preds = %339
  %349 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %5, align 8
  %350 = icmp ne %struct.bcm_qspi_soc_intc* %349, null
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %5, align 8
  %353 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %354 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %353, i32 0, i32 9
  store %struct.bcm_qspi_soc_intc* %352, %struct.bcm_qspi_soc_intc** %354, align 8
  %355 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %5, align 8
  %356 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %355, i32 0, i32 0
  %357 = load i32 (%struct.bcm_qspi_soc_intc*, i32, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32, i32)** %356, align 8
  %358 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %5, align 8
  %359 = load i32, i32* @MSPI_DONE, align 4
  %360 = call i32 %357(%struct.bcm_qspi_soc_intc* %358, i32 %359, i32 1)
  br label %364

361:                                              ; preds = %348
  %362 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %363 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %362, i32 0, i32 9
  store %struct.bcm_qspi_soc_intc* null, %struct.bcm_qspi_soc_intc** %363, align 8
  br label %364

364:                                              ; preds = %361, %351
  %365 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %366 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %365, i32 0, i32 0
  %367 = call i8* @devm_clk_get(%struct.device* %366, i32* null)
  %368 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %369 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %368, i32 0, i32 5
  store i8* %367, i8** %369, align 8
  %370 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %371 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %370, i32 0, i32 5
  %372 = load i8*, i8** %371, align 8
  %373 = call i64 @IS_ERR(i8* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %364
  %376 = load %struct.device*, %struct.device** %6, align 8
  %377 = call i32 @dev_warn(%struct.device* %376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %378 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %379 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %378, i32 0, i32 5
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @PTR_ERR(i8* %380)
  store i32 %381, i32* %11, align 4
  br label %446

382:                                              ; preds = %364
  %383 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %384 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %383, i32 0, i32 5
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @clk_prepare_enable(i8* %385)
  store i32 %386, i32* %11, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %382
  %390 = load %struct.device*, %struct.device** %6, align 8
  %391 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %390, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %446

392:                                              ; preds = %382
  %393 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %394 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %393, i32 0, i32 5
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 @clk_get_rate(i8* %395)
  %397 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %398 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %397, i32 0, i32 1
  store i32 %396, i32* %398, align 4
  %399 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %400 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @QSPI_SPBR_MIN, align 4
  %403 = mul nsw i32 %402, 2
  %404 = sdiv i32 %401, %403
  %405 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %406 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %405, i32 0, i32 2
  store i32 %404, i32* %406, align 8
  %407 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %408 = call i32 @bcm_qspi_hw_init(%struct.bcm_qspi* %407)
  %409 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %410 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %409, i32 0, i32 8
  %411 = call i32 @init_completion(i32* %410)
  %412 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %413 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %412, i32 0, i32 7
  %414 = call i32 @init_completion(i32* %413)
  %415 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %416 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %415, i32 0, i32 3
  store i32 -1, i32* %416, align 4
  %417 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %418 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %419 = call i32 @platform_set_drvdata(%struct.platform_device* %417, %struct.bcm_qspi* %418)
  %420 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %421 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %420, i32 0, i32 6
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  store i32 -1, i32* %422, align 8
  %423 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %424 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %423, i32 0, i32 6
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 1
  store i32 -1, i32* %425, align 4
  %426 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %427 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %426, i32 0, i32 6
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 2
  store i32 -1, i32* %428, align 8
  %429 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %430 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %429, i32 0, i32 0
  %431 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %432 = call i32 @devm_spi_register_master(%struct.device* %430, %struct.spi_master* %431)
  store i32 %432, i32* %11, align 4
  %433 = load i32, i32* %11, align 4
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %392
  %436 = load %struct.device*, %struct.device** %6, align 8
  %437 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %436, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %439

438:                                              ; preds = %392
  store i32 0, i32* %3, align 4
  br label %455

439:                                              ; preds = %435
  %440 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %441 = call i32 @bcm_qspi_hw_uninit(%struct.bcm_qspi* %440)
  %442 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %443 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %442, i32 0, i32 5
  %444 = load i8*, i8** %443, align 8
  %445 = call i32 @clk_disable_unprepare(i8* %444)
  br label %446

446:                                              ; preds = %439, %389, %375, %342, %298
  %447 = load %struct.bcm_qspi*, %struct.bcm_qspi** %7, align 8
  %448 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %447, i32 0, i32 4
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %448, align 8
  %450 = call i32 @kfree(%struct.TYPE_13__* %449)
  br label %451

451:                                              ; preds = %446, %238, %219, %174, %150, %141
  %452 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %453 = call i32 @spi_master_put(%struct.spi_master* %452)
  %454 = load i32, i32* %11, align 4
  store i32 %454, i32* %3, align 4
  br label %455

455:                                              ; preds = %451, %438, %42, %34, %24
  %456 = load i32, i32* %3, align 4
  ret i32 %456
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @of_match_node(i32, i64) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.bcm_qspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @of_device_is_big_endian(i64) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @bcm_qspi_hw_init(%struct.bcm_qspi*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm_qspi*) #1

declare dso_local i32 @devm_spi_register_master(%struct.device*, %struct.spi_master*) #1

declare dso_local i32 @bcm_qspi_hw_uninit(%struct.bcm_qspi*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_13__*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
