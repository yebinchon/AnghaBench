; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cadence.c_cdns_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.cdns_spi = type { i32, i8*, i8*, i64, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pclk clock not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ref_clk clock not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to enable APB clock.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to enable device clock.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@CDNS_SPI_DEFAULT_NUM_CS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"is-decoded-cs\00", align 1
@SPI_AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@cdns_spi_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@cdns_prepare_transfer_hardware = common dso_local global i32 0, align 4
@cdns_prepare_message = common dso_local global i32 0, align 4
@cdns_transfer_one = common dso_local global i32 0, align 4
@cdns_unprepare_transfer_hardware = common dso_local global i32 0, align 4
@cdns_spi_chipselect = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"spi_register_master failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.cdns_spi*, align 8
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_13__* %10, i32 40)
  store %struct.spi_master* %11, %struct.spi_master** %6, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %244

17:                                               ; preds = %1
  %18 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %19 = call %struct.cdns_spi* @spi_master_get_devdata(%struct.spi_master* %18)
  store %struct.cdns_spi* %19, %struct.cdns_spi** %7, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %25 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.spi_master* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %33 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %35 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %41 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %4, align 4
  br label %240

44:                                               ; preds = %17
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i8* @devm_clk_get(%struct.TYPE_13__* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %49 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %51 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_13__* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %60 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %4, align 4
  br label %240

63:                                               ; preds = %44
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i8* @devm_clk_get(%struct.TYPE_13__* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %68 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %70 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %79 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @PTR_ERR(i8* %80)
  store i32 %81, i32* %4, align 4
  br label %240

82:                                               ; preds = %63
  %83 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %84 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @clk_prepare_enable(i8* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_13__* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %240

93:                                               ; preds = %82
  %94 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %95 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @clk_prepare_enable(i8* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_err(%struct.TYPE_13__* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %235

104:                                              ; preds = %93
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @of_property_read_u32(i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64* %8)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i64, i64* @CDNS_SPI_DEFAULT_NUM_CS, align 8
  %114 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %115 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %114, i32 0, i32 10
  store i64 %113, i64* %115, align 8
  br label %120

116:                                              ; preds = %104
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %119 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %118, i32 0, i32 10
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %126 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %125, i32 0, i32 3
  %127 = call i32 @of_property_read_u32(i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %132 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %120
  %134 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %135 = call i32 @cdns_spi_init_hw(%struct.cdns_spi* %134)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @pm_runtime_set_active(%struct.TYPE_13__* %137)
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @pm_runtime_enable(%struct.TYPE_13__* %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_13__* %143)
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* @SPI_AUTOSUSPEND_TIMEOUT, align 4
  %148 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_13__* %146, i32 %147)
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = call i32 @platform_get_irq(%struct.platform_device* %149, i32 0)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %133
  %154 = load i32, i32* @ENXIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %224

156:                                              ; preds = %133
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @cdns_spi_irq, align 4
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %165 = call i32 @devm_request_irq(%struct.TYPE_13__* %158, i32 %159, i32 %160, i32 0, i32 %163, %struct.spi_master* %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %156
  %169 = load i32, i32* @ENXIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @dev_err(%struct.TYPE_13__* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %224

174:                                              ; preds = %156
  %175 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %176 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load i32, i32* @cdns_prepare_transfer_hardware, align 4
  %178 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %179 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %178, i32 0, i32 9
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @cdns_prepare_message, align 4
  %181 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %182 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %181, i32 0, i32 8
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* @cdns_transfer_one, align 4
  %184 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %185 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %184, i32 0, i32 7
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @cdns_unprepare_transfer_hardware, align 4
  %187 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %188 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @cdns_spi_chipselect, align 4
  %190 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %191 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  %192 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %193 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %192, i32 0, i32 1
  store i32 1, i32* %193, align 4
  %194 = load i32, i32* @SPI_CPOL, align 4
  %195 = load i32, i32* @SPI_CPHA, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %198 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %200 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @clk_get_rate(i8* %201)
  %203 = sdiv i32 %202, 4
  %204 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %205 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %207 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %210 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = call i32 @SPI_BPW_MASK(i32 8)
  %212 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %213 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %215 = call i32 @spi_register_master(%struct.spi_master* %214)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %174
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = call i32 @dev_err(%struct.TYPE_13__* %220, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %224

222:                                              ; preds = %174
  %223 = load i32, i32* %4, align 4
  store i32 %223, i32* %2, align 4
  br label %244

224:                                              ; preds = %218, %168, %153
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @pm_runtime_set_suspended(%struct.TYPE_13__* %226)
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = call i32 @pm_runtime_disable(%struct.TYPE_13__* %229)
  %231 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %232 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @clk_disable_unprepare(i8* %233)
  br label %235

235:                                              ; preds = %224, %100
  %236 = load %struct.cdns_spi*, %struct.cdns_spi** %7, align 8
  %237 = getelementptr inbounds %struct.cdns_spi, %struct.cdns_spi* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @clk_disable_unprepare(i8* %238)
  br label %240

240:                                              ; preds = %235, %89, %74, %55, %39
  %241 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %242 = call i32 @spi_master_put(%struct.spi_master* %241)
  %243 = load i32, i32* %4, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %240, %222, %14
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.cdns_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @cdns_spi_init_hw(%struct.cdns_spi*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_13__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
