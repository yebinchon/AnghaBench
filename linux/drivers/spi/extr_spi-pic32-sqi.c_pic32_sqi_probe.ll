; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic32_sqi = type { i32, i8*, i8*, i32, i8*, %struct.spi_master* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"reg_ck\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no sys_clk ?\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"spi_ck\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no base clk ?\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"sys clk enable failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"base clk enable failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ring alloc failed\0A\00", align 1
@pic32_sqi_isr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"request_irq(%d), failed\0A\00", align 1
@PESQI_BD_BUF_LEN_MAX = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@pic32_sqi_can_dma = common dso_local global i32 0, align 4
@pic32_sqi_one_message = common dso_local global i32 0, align 4
@pic32_sqi_prepare_hardware = common dso_local global i32 0, align 4
@pic32_sqi_unprepare_hardware = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed registering spi master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_sqi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_sqi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.pic32_sqi*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_6__* %8, i32 48)
  store %struct.spi_master* %9, %struct.spi_master** %4, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %11 = icmp ne %struct.spi_master* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %232

15:                                               ; preds = %1
  %16 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %17 = call %struct.pic32_sqi* @spi_master_get_devdata(%struct.spi_master* %16)
  store %struct.pic32_sqi* %17, %struct.pic32_sqi** %5, align 8
  %18 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %19 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %20 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %19, i32 0, i32 5
  store %struct.spi_master* %18, %struct.spi_master** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %24 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %26 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %32 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %6, align 4
  br label %228

35:                                               ; preds = %15
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  %38 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %39 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %41 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %46 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  br label %228

48:                                               ; preds = %35
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i8* @devm_clk_get(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %53 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %55 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %61 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %228

67:                                               ; preds = %48
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i8* @devm_clk_get(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %72 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %74 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %80 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %228

86:                                               ; preds = %67
  %87 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %88 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @clk_prepare_enable(i8* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %228

97:                                               ; preds = %86
  %98 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %99 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @clk_prepare_enable(i8* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %109 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @clk_disable_unprepare(i8* %110)
  br label %228

112:                                              ; preds = %97
  %113 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %114 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %113, i32 0, i32 3
  %115 = call i32 @init_completion(i32* %114)
  %116 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %117 = call i32 @pic32_sqi_hw_init(%struct.pic32_sqi* %116)
  %118 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %119 = call i32 @ring_desc_ring_alloc(%struct.pic32_sqi* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %219

126:                                              ; preds = %112
  %127 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %128 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @pic32_sqi_isr, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_name(%struct.TYPE_6__* %132)
  %134 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %135 = call i32 @request_irq(i32 %129, i32 %130, i32 0, i32 %133, %struct.pic32_sqi* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %126
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %142 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  br label %216

145:                                              ; preds = %126
  %146 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %147 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %146, i32 0, i32 0
  store i32 2, i32* %147, align 4
  %148 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %149 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @clk_get_rate(i8* %150)
  %152 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %153 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %152, i32 0, i32 11
  store i32 %151, i32* %153, align 4
  %154 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %155 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %154, i32 0, i32 1
  store i32 32, i32* %155, align 4
  %156 = load i32, i32* @PESQI_BD_BUF_LEN_MAX, align 4
  %157 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %158 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %157, i32 0, i32 10
  store i32 %156, i32* %158, align 4
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %164 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @SPI_MODE_3, align 4
  %167 = load i32, i32* @SPI_MODE_0, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @SPI_TX_DUAL, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @SPI_RX_DUAL, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @SPI_TX_QUAD, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @SPI_RX_QUAD, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %178 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %180 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %181 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @pic32_sqi_can_dma, align 4
  %183 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %184 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %183, i32 0, i32 8
  store i32 %182, i32* %184, align 4
  %185 = call i32 @SPI_BPW_RANGE_MASK(i32 8, i32 32)
  %186 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %187 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @pic32_sqi_one_message, align 4
  %189 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %190 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @pic32_sqi_prepare_hardware, align 4
  %192 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %193 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @pic32_sqi_unprepare_hardware, align 4
  %195 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %196 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %200 = call i32 @devm_spi_register_master(%struct.TYPE_6__* %198, %struct.spi_master* %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %145
  %204 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %205 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %204, i32 0, i32 3
  %206 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %207 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %208 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %211 = call i32 @free_irq(i32 %209, %struct.pic32_sqi* %210)
  br label %216

212:                                              ; preds = %145
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %215 = call i32 @platform_set_drvdata(%struct.platform_device* %213, %struct.pic32_sqi* %214)
  store i32 0, i32* %2, align 4
  br label %232

216:                                              ; preds = %203, %138
  %217 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %218 = call i32 @ring_desc_ring_free(%struct.pic32_sqi* %217)
  br label %219

219:                                              ; preds = %216, %122
  %220 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %221 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @clk_disable_unprepare(i8* %222)
  %224 = load %struct.pic32_sqi*, %struct.pic32_sqi** %5, align 8
  %225 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @clk_disable_unprepare(i8* %226)
  br label %228

228:                                              ; preds = %219, %104, %93, %78, %59, %44, %30
  %229 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %230 = call i32 @spi_master_put(%struct.spi_master* %229)
  %231 = load i32, i32* %6, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %228, %212, %12
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.pic32_sqi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pic32_sqi_hw_init(%struct.pic32_sqi*) #1

declare dso_local i32 @ring_desc_ring_alloc(%struct.pic32_sqi*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pic32_sqi*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_6__*, %struct.spi_master*) #1

declare dso_local i32 @free_irq(i32, %struct.pic32_sqi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pic32_sqi*) #1

declare dso_local i32 @ring_desc_ring_free(%struct.pic32_sqi*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
