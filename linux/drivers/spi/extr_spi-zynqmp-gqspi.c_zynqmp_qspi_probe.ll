; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.spi_master = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32 }
%struct.zynqmp_qspi = type { i64, i8*, i8*, %struct.device*, i8* }

@eemi_ops = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pclk clock not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to enable APB clock.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ref_clk clock not found.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to enable device clock.\0A\00", align 1
@SPI_AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@zynqmp_qspi_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@GQSPI_DEFAULT_NUM_CS = common dso_local global i32 0, align 4
@zynqmp_qspi_setup = common dso_local global i32 0, align 4
@zynqmp_qspi_chipselect = common dso_local global i32 0, align 4
@zynqmp_qspi_start_transfer = common dso_local global i32 0, align 4
@zynqmp_prepare_transfer_hardware = common dso_local global i32 0, align 4
@zynqmp_unprepare_transfer_hardware = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynqmp_qspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_qspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.zynqmp_qspi*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = call i8* (...) @zynqmp_pm_get_eemi_ops()
  store i8* %10, i8** @eemi_ops, align 8
  %11 = load i8*, i8** @eemi_ops, align 8
  %12 = call i64 @IS_ERR(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i8*, i8** @eemi_ops, align 8
  %16 = call i32 @PTR_ERR(i8* %15)
  store i32 %16, i32* %2, align 4
  br label %244

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.spi_master* @spi_alloc_master(%struct.device* %19, i32 40)
  store %struct.spi_master* %20, %struct.spi_master** %5, align 8
  %21 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %22 = icmp ne %struct.spi_master* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %244

26:                                               ; preds = %17
  %27 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %28 = call %struct.zynqmp_qspi* @spi_master_get_devdata(%struct.spi_master* %27)
  store %struct.zynqmp_qspi* %28, %struct.zynqmp_qspi** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %34 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.spi_master* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %39, i32 0)
  %41 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %42 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %44 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %26
  %49 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %50 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %4, align 4
  br label %240

53:                                               ; preds = %26
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %56 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %55, i32 0, i32 3
  store %struct.device* %54, %struct.device** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i8* @devm_clk_get(%struct.device* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %61 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %63 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %71 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR(i8* %72)
  store i32 %73, i32* %4, align 4
  br label %240

74:                                               ; preds = %53
  %75 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %76 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @clk_prepare_enable(i8* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %240

84:                                               ; preds = %74
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i8* @devm_clk_get(%struct.device* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %89 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %91 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load %struct.device*, %struct.device** %7, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %99 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  store i32 %101, i32* %4, align 4
  br label %235

102:                                              ; preds = %84
  %103 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %104 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @clk_prepare_enable(i8* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %235

112:                                              ; preds = %102
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @pm_runtime_use_autosuspend(%struct.device* %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* @SPI_AUTOSUSPEND_TIMEOUT, align 4
  %119 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %117, i32 %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @pm_runtime_set_active(%struct.device* %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @pm_runtime_enable(%struct.device* %124)
  %126 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %127 = call i32 @zynqmp_qspi_init_hw(%struct.zynqmp_qspi* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @pm_runtime_mark_last_busy(%struct.device* %129)
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @pm_runtime_put_autosuspend(%struct.device* %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = call i64 @platform_get_irq(%struct.platform_device* %134, i32 0)
  %136 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %137 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %139 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sle i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %112
  %143 = load i32, i32* @ENXIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %224

145:                                              ; preds = %112
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %149 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @zynqmp_qspi_irq, align 4
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %156 = call i32 @devm_request_irq(%struct.device* %147, i64 %150, i32 %151, i32 0, i32 %154, %struct.spi_master* %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  %160 = load i32, i32* @ENXIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  %162 = load %struct.device*, %struct.device** %7, align 8
  %163 = call i32 @dev_err(%struct.device* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %224

164:                                              ; preds = %145
  %165 = load i32, i32* @GQSPI_DEFAULT_NUM_CS, align 4
  %166 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %167 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @zynqmp_qspi_setup, align 4
  %169 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %170 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @zynqmp_qspi_chipselect, align 4
  %172 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %173 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @zynqmp_qspi_start_transfer, align 4
  %175 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %176 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @zynqmp_prepare_transfer_hardware, align 4
  %178 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %179 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @zynqmp_unprepare_transfer_hardware, align 4
  %181 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %182 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 4
  %183 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %184 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @clk_get_rate(i8* %185)
  %187 = sdiv i32 %186, 2
  %188 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %189 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = call i32 @SPI_BPW_MASK(i32 8)
  %191 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %192 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @SPI_CPOL, align 4
  %194 = load i32, i32* @SPI_CPHA, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @SPI_RX_DUAL, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @SPI_RX_QUAD, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @SPI_TX_DUAL, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @SPI_TX_QUAD, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %205 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %207 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = icmp eq %struct.TYPE_2__* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %164
  %212 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %213 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %212, i32 0, i32 2
  %214 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %215 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  store %struct.TYPE_2__* %213, %struct.TYPE_2__** %216, align 8
  br label %217

217:                                              ; preds = %211, %164
  %218 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %219 = call i32 @spi_register_master(%struct.spi_master* %218)
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %224

223:                                              ; preds = %217
  store i32 0, i32* %2, align 4
  br label %244

224:                                              ; preds = %222, %159, %142
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @pm_runtime_set_suspended(%struct.device* %226)
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = call i32 @pm_runtime_disable(%struct.device* %229)
  %231 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %232 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @clk_disable_unprepare(i8* %233)
  br label %235

235:                                              ; preds = %224, %109, %95
  %236 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %6, align 8
  %237 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @clk_disable_unprepare(i8* %238)
  br label %240

240:                                              ; preds = %235, %81, %67, %48
  %241 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %242 = call i32 @spi_master_put(%struct.spi_master* %241)
  %243 = load i32, i32* %4, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %240, %223, %23, %14
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i8* @zynqmp_pm_get_eemi_ops(...) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.zynqmp_qspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @zynqmp_qspi_init_hw(%struct.zynqmp_qspi*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
