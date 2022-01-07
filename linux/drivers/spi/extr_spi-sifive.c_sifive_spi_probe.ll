; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.sifive_spi = type { i32, i32, i32, i32, i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to find bus clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"sifive,fifo-depth\00", align 1
@SIFIVE_SPI_DEFAULT_DEPTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"sifive,max-bits-per-word\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Only 8bit SPI words supported by the driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Unable to enable bus clock\0A\00", align 1
@SIFIVE_SPI_REG_CSDEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not auto probe CS lines\0A\00", align 1
@SIFIVE_SPI_MAX_CS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid number of spi slaves\0A\00", align 1
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_CONTROLLER_MUST_TX = common dso_local global i32 0, align 4
@SPI_MASTER_GPIO_SS = common dso_local global i32 0, align 4
@sifive_spi_prepare_message = common dso_local global i32 0, align 4
@sifive_spi_set_cs = common dso_local global i32 0, align 4
@sifive_spi_transfer_one = common dso_local global i32 0, align 4
@sifive_spi_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Unable to bind to interrupt\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"mapped; irq=%d, cs=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"spi_register_master failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sifive_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sifive_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sifive_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_master*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__* %12, i32 20)
  store %struct.spi_master* %13, %struct.spi_master** %10, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %15 = icmp ne %struct.spi_master* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_10__* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %247

22:                                               ; preds = %1
  %23 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %24 = call %struct.sifive_spi* @spi_master_get_devdata(%struct.spi_master* %23)
  store %struct.sifive_spi* %24, %struct.sifive_spi** %4, align 8
  %25 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %26 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %25, i32 0, i32 4
  %27 = call i32 @init_completion(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.spi_master* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %31, i32 0)
  %33 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %34 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %36 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %42 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %243

45:                                               ; preds = %22
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @devm_clk_get(%struct.TYPE_10__* %47, i32* null)
  %49 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %50 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %52 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_10__* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %61 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %5, align 4
  br label %243

64:                                               ; preds = %45
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i32 @platform_get_irq(%struct.platform_device* %65, i32 0)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %5, align 4
  br label %243

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %77 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %76, i32 0, i32 0
  %78 = call i32 @of_property_read_u32(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @SIFIVE_SPI_DEFAULT_DEPTH, align 4
  %83 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %84 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %71
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @of_property_read_u32(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_10__* %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %243

102:                                              ; preds = %93, %85
  %103 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %104 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @clk_prepare_enable(i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_err(%struct.TYPE_10__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %243

113:                                              ; preds = %102
  %114 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %115 = load i32, i32* @SIFIVE_SPI_REG_CSDEF, align 4
  %116 = call i8* @sifive_spi_read(%struct.sifive_spi* %114, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %119 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %121 = load i32, i32* @SIFIVE_SPI_REG_CSDEF, align 4
  %122 = call i32 @sifive_spi_write(%struct.sifive_spi* %120, i32 %121, i32 -1)
  %123 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %124 = load i32, i32* @SIFIVE_SPI_REG_CSDEF, align 4
  %125 = call i8* @sifive_spi_read(%struct.sifive_spi* %123, i32 %124)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %8, align 4
  %127 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %128 = load i32, i32* @SIFIVE_SPI_REG_CSDEF, align 4
  %129 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %130 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @sifive_spi_write(%struct.sifive_spi* %127, i32 %128, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %113
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_err(%struct.TYPE_10__* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %243

141:                                              ; preds = %113
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @ilog2(i32 %142)
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @SIFIVE_SPI_MAX_CS, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_err(%struct.TYPE_10__* %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %243

154:                                              ; preds = %141
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %160 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 4
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %166 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %169 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @SPI_CPHA, align 4
  %171 = load i32, i32* @SPI_CPOL, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @SPI_CS_HIGH, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @SPI_LSB_FIRST, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @SPI_TX_DUAL, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @SPI_TX_QUAD, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @SPI_RX_DUAL, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @SPI_RX_QUAD, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %186 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = call i32 @SPI_BPW_MASK(i32 8)
  %188 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %189 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @SPI_CONTROLLER_MUST_TX, align 4
  %191 = load i32, i32* @SPI_MASTER_GPIO_SS, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %194 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @sifive_spi_prepare_message, align 4
  %196 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %197 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @sifive_spi_set_cs, align 4
  %199 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %200 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @sifive_spi_transfer_one, align 4
  %202 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %203 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  store i32* null, i32** %206, align 8
  %207 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %208 = call i32 @sifive_spi_init(%struct.sifive_spi* %207)
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @sifive_spi_irq, align 4
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = call i32 @dev_name(%struct.TYPE_10__* %214)
  %216 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %217 = call i32 @devm_request_irq(%struct.TYPE_10__* %210, i32 %211, i32 %212, i32 0, i32 %215, %struct.sifive_spi* %216)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %154
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = call i32 @dev_err(%struct.TYPE_10__* %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %243

224:                                              ; preds = %154
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = load i32, i32* %6, align 4
  %228 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %229 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @dev_info(%struct.TYPE_10__* %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %227, i32 %230)
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %235 = call i32 @devm_spi_register_master(%struct.TYPE_10__* %233, %struct.spi_master* %234)
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %224
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 @dev_err(%struct.TYPE_10__* %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %243

242:                                              ; preds = %224
  store i32 0, i32* %2, align 4
  br label %247

243:                                              ; preds = %238, %220, %148, %135, %109, %96, %69, %56, %40
  %244 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %245 = call i32 @spi_master_put(%struct.spi_master* %244)
  %246 = load i32, i32* %5, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %243, %242, %16
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.sifive_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i8* @sifive_spi_read(%struct.sifive_spi*, i32) #1

declare dso_local i32 @sifive_spi_write(%struct.sifive_spi*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @sifive_spi_init(%struct.sifive_spi*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.sifive_spi*) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_10__*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
