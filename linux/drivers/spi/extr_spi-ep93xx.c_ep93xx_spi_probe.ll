; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.spi_master = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.ep93xx_spi_info = type { i64 }
%struct.ep93xx_spi = type { i64, i64, i64 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to get iomem resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ep93xx_spi_prepare_hardware = common dso_local global i32 0, align 4
@ep93xx_spi_unprepare_hardware = common dso_local global i32 0, align 4
@ep93xx_spi_prepare_message = common dso_local global i32 0, align 4
@ep93xx_spi_transfer_one = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to get spi clock\0A\00", align 1
@SSPDR = common dso_local global i64 0, align 8
@ep93xx_spi_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"ep93xx-spi\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"DMA setup failed. Falling back to PIO\0A\00", align 1
@SSPCR1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to register SPI master\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"EP93xx SPI Controller at 0x%08lx irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.ep93xx_spi_info*, align 8
  %6 = alloca %struct.ep93xx_spi*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.ep93xx_spi_info* @dev_get_platdata(i32* %11)
  store %struct.ep93xx_spi_info* %12, %struct.ep93xx_spi_info** %5, align 8
  %13 = load %struct.ep93xx_spi_info*, %struct.ep93xx_spi_info** %5, align 8
  %14 = icmp ne %struct.ep93xx_spi_info* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %201

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %201

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %201

41:                                               ; preds = %29
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call %struct.spi_master* @spi_alloc_master(i32* %43, i32 24)
  store %struct.spi_master* %44, %struct.spi_master** %4, align 8
  %45 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %46 = icmp ne %struct.spi_master* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %201

50:                                               ; preds = %41
  %51 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %52 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @ep93xx_spi_prepare_hardware, align 4
  %54 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %55 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @ep93xx_spi_unprepare_hardware, align 4
  %57 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %58 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @ep93xx_spi_prepare_message, align 4
  %60 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %61 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ep93xx_spi_transfer_one, align 4
  %63 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %64 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %69 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @SPI_CPOL, align 4
  %71 = load i32, i32* @SPI_CPHA, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SPI_CS_HIGH, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %76 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = call i32 @SPI_BPW_RANGE_MASK(i32 4, i32 16)
  %78 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %79 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %81 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.spi_master* %83)
  %85 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %86 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %85)
  store %struct.ep93xx_spi* %86, %struct.ep93xx_spi** %6, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i64 @devm_clk_get(i32* %88, i32* null)
  %90 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %91 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %93 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @IS_ERR(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %50
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %102 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @PTR_ERR(i64 %103)
  store i32 %104, i32* %9, align 4
  br label %197

105:                                              ; preds = %50
  %106 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %107 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @clk_get_rate(i64 %108)
  %110 = sdiv i32 %109, 2
  %111 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %112 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %114 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @clk_get_rate(i64 %115)
  %117 = sdiv i32 %116, 65024
  %118 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %119 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.resource*, %struct.resource** %7, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SSPDR, align 8
  %124 = add nsw i64 %122, %123
  %125 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %126 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.resource*, %struct.resource** %7, align 8
  %130 = call i64 @devm_ioremap_resource(i32* %128, %struct.resource* %129)
  %131 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %132 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %134 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @IS_ERR(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %105
  %139 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %140 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @PTR_ERR(i64 %141)
  store i32 %142, i32* %9, align 4
  br label %197

143:                                              ; preds = %105
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ep93xx_spi_interrupt, align 4
  %148 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %149 = call i32 @devm_request_irq(i32* %145, i32 %146, i32 %147, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.spi_master* %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %197

156:                                              ; preds = %143
  %157 = load %struct.ep93xx_spi_info*, %struct.ep93xx_spi_info** %5, align 8
  %158 = getelementptr inbounds %struct.ep93xx_spi_info, %struct.ep93xx_spi_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %163 = call i64 @ep93xx_spi_setup_dma(%struct.ep93xx_spi* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @dev_warn(i32* %167, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %165, %161, %156
  %170 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %171 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SSPCR1, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 0, i64 %174)
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %179 = call i32 @devm_spi_register_master(i32* %177, %struct.spi_master* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %169
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @dev_err(i32* %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %194

186:                                              ; preds = %169
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.resource*, %struct.resource** %7, align 8
  %190 = getelementptr inbounds %struct.resource, %struct.resource* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @dev_info(i32* %188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %191, i32 %192)
  store i32 0, i32* %2, align 4
  br label %201

194:                                              ; preds = %182
  %195 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %6, align 8
  %196 = call i32 @ep93xx_spi_release_dma(%struct.ep93xx_spi* %195)
  br label %197

197:                                              ; preds = %194, %152, %138, %97
  %198 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %199 = call i32 @spi_master_put(%struct.spi_master* %198)
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %186, %47, %35, %26, %15
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.ep93xx_spi_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.spi_master*) #1

declare dso_local i64 @ep93xx_spi_setup_dma(%struct.ep93xx_spi*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @devm_spi_register_master(i32*, %struct.spi_master*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32) #1

declare dso_local i32 @ep93xx_spi_release_dma(%struct.ep93xx_spi*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
