; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.s3c2410_spi_info = type { i64, i64, i32, i32 }
%struct.s3c24xx_spi = type { i64, %struct.spi_master*, i32, %struct.TYPE_3__, i64, i32, i32*, %struct.s3c2410_spi_info*, i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.spi_master* }

@.str = private unnamed_addr constant [26 x i8] c"No memory for spi_master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No platform data supplied\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@s3c24xx_spi_setupxfer = common dso_local global i32 0, align 4
@s3c24xx_spi_chipsel = common dso_local global i32 0, align 4
@s3c24xx_spi_txrx = common dso_local global i32 0, align 4
@s3c24xx_spi_setup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"bitbang at %p\0A\00", align 1
@s3c24xx_spi_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Cannot claim IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"No clock for device\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No chipselect pin\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to get gpio for cs\0A\00", align 1
@s3c24xx_spi_gpiocs = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to register SPI master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c2410_spi_info*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(i32* %9, i32 88)
  store %struct.spi_master* %10, %struct.spi_master** %6, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %12 = icmp eq %struct.spi_master* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %235

19:                                               ; preds = %1
  %20 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %21 = call %struct.s3c24xx_spi* @spi_master_get_devdata(%struct.spi_master* %20)
  store %struct.s3c24xx_spi* %21, %struct.s3c24xx_spi** %5, align 8
  %22 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %23 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %23, i32 0, i32 1
  store %struct.spi_master* %22, %struct.spi_master** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.s3c2410_spi_info* @dev_get_platdata(i32* %26)
  store %struct.s3c2410_spi_info* %27, %struct.s3c2410_spi_info** %4, align 8
  %28 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %28, i32 0, i32 7
  store %struct.s3c2410_spi_info* %27, %struct.s3c2410_spi_info** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %32, i32 0, i32 6
  store i32* %31, i32** %33, align 8
  %34 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %4, align 8
  %35 = icmp eq %struct.s3c2410_spi_info* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %19
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %229

42:                                               ; preds = %19
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.s3c24xx_spi* %44)
  %46 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %46, i32 0, i32 8
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %50 = call i32 @s3c24xx_spi_initfiq(%struct.s3c24xx_spi* %49)
  %51 = load i32, i32* @SPI_CPOL, align 4
  %52 = load i32, i32* @SPI_CPHA, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SPI_CS_HIGH, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %57 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %58, i32 0, i32 7
  %60 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %59, align 8
  %61 = getelementptr inbounds %struct.s3c2410_spi_info, %struct.s3c2410_spi_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %64 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %4, align 8
  %66 = getelementptr inbounds %struct.s3c2410_spi_info, %struct.s3c2410_spi_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %69 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = call i32 @SPI_BPW_MASK(i32 8)
  %71 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %72 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %74 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %73, i32 0, i32 1
  %75 = load %struct.spi_master*, %struct.spi_master** %74, align 8
  %76 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %77 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  store %struct.spi_master* %75, %struct.spi_master** %78, align 8
  %79 = load i32, i32* @s3c24xx_spi_setupxfer, align 4
  %80 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %81 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @s3c24xx_spi_chipsel, align 4
  %84 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %85 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @s3c24xx_spi_txrx, align 4
  %88 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @s3c24xx_spi_setup, align 4
  %92 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %93 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %92, i32 0, i32 1
  %94 = load %struct.spi_master*, %struct.spi_master** %93, align 8
  %95 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %97 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %100 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %99, i32 0, i32 3
  %101 = call i32 @dev_dbg(i32* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %102, i32 0)
  %104 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %105 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %107 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %42
  %112 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %113 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @PTR_ERR(i32 %114)
  store i32 %115, i32* %7, align 4
  br label %229

116:                                              ; preds = %42
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = call i64 @platform_get_irq(%struct.platform_device* %117, i32 0)
  %119 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %120 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %122 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32, i32* @ENOENT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %229

128:                                              ; preds = %116
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %132 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @s3c24xx_spi_irq, align 4
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %139 = call i32 @devm_request_irq(i32* %130, i64 %133, i32 %134, i32 0, i32 %137, %struct.s3c24xx_spi* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %229

146:                                              ; preds = %128
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @devm_clk_get(i32* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %150 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %151 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %153 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %146
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %161 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %162 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @PTR_ERR(i32 %163)
  store i32 %164, i32* %7, align 4
  br label %229

165:                                              ; preds = %146
  %166 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %4, align 8
  %167 = getelementptr inbounds %struct.s3c2410_spi_info, %struct.s3c2410_spi_info* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %205, label %170

170:                                              ; preds = %165
  %171 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %4, align 8
  %172 = getelementptr inbounds %struct.s3c2410_spi_info, %struct.s3c2410_spi_info* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %7, align 4
  br label %224

181:                                              ; preds = %170
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %4, align 8
  %185 = getelementptr inbounds %struct.s3c2410_spi_info, %struct.s3c2410_spi_info* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = call i32 @dev_name(i32* %188)
  %190 = call i32 @devm_gpio_request(i32* %183, i64 %186, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %181
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 @dev_err(i32* %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %224

197:                                              ; preds = %181
  %198 = load i64, i64* @s3c24xx_spi_gpiocs, align 8
  %199 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %200 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %199, i32 0, i32 4
  store i64 %198, i64* %200, align 8
  %201 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %4, align 8
  %202 = getelementptr inbounds %struct.s3c2410_spi_info, %struct.s3c2410_spi_info* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @gpio_direction_output(i64 %203, i32 1)
  br label %211

205:                                              ; preds = %165
  %206 = load %struct.s3c2410_spi_info*, %struct.s3c2410_spi_info** %4, align 8
  %207 = getelementptr inbounds %struct.s3c2410_spi_info, %struct.s3c2410_spi_info* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %210 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %209, i32 0, i32 4
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %205, %197
  %212 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %213 = call i32 @s3c24xx_spi_initialsetup(%struct.s3c24xx_spi* %212)
  %214 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %215 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %214, i32 0, i32 3
  %216 = call i32 @spi_bitbang_start(%struct.TYPE_3__* %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %211
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @dev_err(i32* %221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %224

223:                                              ; preds = %211
  store i32 0, i32* %2, align 4
  br label %235

224:                                              ; preds = %219, %193, %175
  %225 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %226 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @clk_disable(i32 %227)
  br label %229

229:                                              ; preds = %224, %157, %142, %125, %111, %36
  %230 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %231 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %230, i32 0, i32 1
  %232 = load %struct.spi_master*, %struct.spi_master** %231, align 8
  %233 = call i32 @spi_master_put(%struct.spi_master* %232)
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %229, %223, %13
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.s3c24xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local %struct.s3c2410_spi_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c24xx_spi*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @s3c24xx_spi_initfiq(%struct.s3c24xx_spi*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.s3c24xx_spi*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @devm_gpio_request(i32*, i64, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @gpio_direction_output(i64, i32) #1

declare dso_local i32 @s3c24xx_spi_initialsetup(%struct.s3c24xx_spi*) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
