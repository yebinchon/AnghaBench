; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.spi_controller = type { i32, i32, i32, %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.atmel_qspi = type { i8*, i8*, %struct.TYPE_12__*, i8*, i8*, %struct.platform_device*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@atmel_qspi_setup = common dso_local global i32 0, align 4
@atmel_qspi_mem_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"qspi_base\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"missing registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"qspi_mmap\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"missing AHB memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"missing peripheral clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to enable the peripheral clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Could not retrieve QSPI caps\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"qspick\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"missing system clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"failed to enable the QSPI system clock\0A\00", align 1
@atmel_qspi_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_qspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_qspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.atmel_qspi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_controller* @spi_alloc_master(%struct.TYPE_11__* %10, i32 56)
  store %struct.spi_controller* %11, %struct.spi_controller** %4, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %13 = icmp ne %struct.spi_controller* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %238

17:                                               ; preds = %1
  %18 = load i32, i32* @SPI_RX_DUAL, align 4
  %19 = load i32, i32* @SPI_RX_QUAD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SPI_TX_DUAL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SPI_TX_QUAD, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %26 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @atmel_qspi_setup, align 4
  %28 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %29 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %31 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %33 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %32, i32 0, i32 4
  store i32* @atmel_qspi_mem_ops, i32** %33, align 8
  %34 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %35 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %41 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.spi_controller* %44)
  %46 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %47 = call %struct.atmel_qspi* @spi_controller_get_devdata(%struct.spi_controller* %46)
  store %struct.atmel_qspi* %47, %struct.atmel_qspi** %5, align 8
  %48 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %49 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %48, i32 0, i32 6
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %53 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %52, i32 0, i32 5
  store %struct.platform_device* %51, %struct.platform_device** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %54, i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %56, %struct.resource** %6, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i8* @devm_ioremap_resource(%struct.TYPE_11__* %58, %struct.resource* %59)
  %61 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %62 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %64 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %17
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_11__* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %73 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %8, align 4
  br label %234

76:                                               ; preds = %17
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %77, i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %79, %struct.resource** %6, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = call i8* @devm_ioremap_resource(%struct.TYPE_11__* %81, %struct.resource* %82)
  %84 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %85 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %87 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %76
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.TYPE_11__* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %96 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  store i32 %98, i32* %8, align 4
  br label %234

99:                                               ; preds = %76
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i8* @devm_clk_get(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %104 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %106 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @IS_ERR(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %99
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i8* @devm_clk_get(%struct.TYPE_11__* %112, i8* null)
  %114 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %115 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %110, %99
  %117 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %118 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @IS_ERR(i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(%struct.TYPE_11__* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %127 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @PTR_ERR(i8* %128)
  store i32 %129, i32* %8, align 4
  br label %234

130:                                              ; preds = %116
  %131 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %132 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @clk_prepare_enable(i8* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @dev_err(%struct.TYPE_11__* %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %234

141:                                              ; preds = %130
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call %struct.TYPE_12__* @of_device_get_match_data(%struct.TYPE_11__* %143)
  %145 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %146 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %145, i32 0, i32 2
  store %struct.TYPE_12__* %144, %struct.TYPE_12__** %146, align 8
  %147 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %148 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %147, i32 0, i32 2
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = icmp ne %struct.TYPE_12__* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %141
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i32 @dev_err(%struct.TYPE_11__* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %8, align 4
  br label %234

157:                                              ; preds = %141
  %158 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %159 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %195

164:                                              ; preds = %157
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i8* @devm_clk_get(%struct.TYPE_11__* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %168 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %169 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %171 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @IS_ERR(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %164
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @dev_err(%struct.TYPE_11__* %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %179 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %180 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @PTR_ERR(i8* %181)
  store i32 %182, i32* %8, align 4
  br label %229

183:                                              ; preds = %164
  %184 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %185 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @clk_prepare_enable(i8* %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @dev_err(%struct.TYPE_11__* %192, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %229

194:                                              ; preds = %183
  br label %195

195:                                              ; preds = %194, %157
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = call i32 @platform_get_irq(%struct.platform_device* %196, i32 0)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %8, align 4
  br label %224

202:                                              ; preds = %195
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @atmel_qspi_interrupt, align 4
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_name(%struct.TYPE_11__* %208)
  %210 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %211 = call i32 @devm_request_irq(%struct.TYPE_11__* %204, i32 %205, i32 %206, i32 0, i32 %209, %struct.atmel_qspi* %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %224

215:                                              ; preds = %202
  %216 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %217 = call i32 @atmel_qspi_init(%struct.atmel_qspi* %216)
  %218 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %219 = call i32 @spi_register_controller(%struct.spi_controller* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %224

223:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %238

224:                                              ; preds = %222, %214, %200
  %225 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %226 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @clk_disable_unprepare(i8* %227)
  br label %229

229:                                              ; preds = %224, %190, %175
  %230 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %231 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @clk_disable_unprepare(i8* %232)
  br label %234

234:                                              ; preds = %229, %151, %137, %122, %91, %68
  %235 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %236 = call i32 @spi_controller_put(%struct.spi_controller* %235)
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %234, %223, %14
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_controller*) #1

declare dso_local %struct.atmel_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local %struct.TYPE_12__* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.atmel_qspi*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @atmel_qspi_init(%struct.atmel_qspi*) #1

declare dso_local i32 @spi_register_controller(%struct.spi_controller*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
