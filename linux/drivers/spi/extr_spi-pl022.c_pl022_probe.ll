; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { %struct.device, i32*, %struct.TYPE_6__, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.amba_id = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.pl022_ssp_controller = type { i32, i32*, i32, i32, i32, i32 }
%struct.spi_master = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.pl022 = type { i32*, i32, i32*, i32, i32, %struct.TYPE_5__*, %struct.amba_device*, %struct.pl022_ssp_controller*, %struct.spi_master* }

@.str = private unnamed_addr constant [37 x i8] c"ARM PL022 driver, device ID: 0x%08x\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"probe: no platform data defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"probe: no chip select defined\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"probe - cannot alloc SPI master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pl022_cleanup = common dso_local global i32 0, align 4
@pl022_setup = common dso_local global i32 0, align 4
@pl022_transfer_one_message = common dso_local global i32 0, align 4
@pl022_unprepare_transfer_hardware = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"ssp-pl022\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"could not request %d gpio\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"could not set gpio %d as output\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"BUSNO: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"mapped registers from %pa to %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"could not retrieve SSP/SPI bus clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"could not enable SSP/SPI bus clock\0A\00", align 1
@pump_transfers = common dso_local global i32 0, align 4
@SSP_CR1_MASK_SSE = common dso_local global i32 0, align 4
@pl022_interrupt_handler = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"pl022\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"probe - cannot get IRQ (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"deferring probe to get DMA channel\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"probe - problem registering spi master\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"probe succeeded\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"will use autosuspend for runtime pm, delay %dms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl022_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl022_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pl022_ssp_controller*, align 8
  %8 = alloca %struct.spi_master*, align 8
  %9 = alloca %struct.pl022*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %15 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %16 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %18 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %17, i32 0, i32 0
  %19 = call %struct.pl022_ssp_controller* @dev_get_platdata(%struct.device* %18)
  store %struct.pl022_ssp_controller* %19, %struct.pl022_ssp_controller** %7, align 8
  store %struct.pl022* null, %struct.pl022** %9, align 8
  %20 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %21 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %25 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %24, i32 0, i32 0
  %26 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %27 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %31 = icmp ne %struct.pl022_ssp_controller* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @CONFIG_OF, align 4
  %34 = call i64 @IS_ENABLED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call %struct.pl022_ssp_controller* @pl022_platform_data_dt_get(%struct.device* %37)
  store %struct.pl022_ssp_controller* %38, %struct.pl022_ssp_controller** %7, align 8
  br label %39

39:                                               ; preds = %36, %32, %2
  %40 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %41 = icmp ne %struct.pl022_ssp_controller* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %482

47:                                               ; preds = %39
  %48 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %49 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %54 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %482

61:                                               ; preds = %52
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call %struct.spi_master* @spi_alloc_master(%struct.device* %62, i32 64)
  store %struct.spi_master* %63, %struct.spi_master** %8, align 8
  %64 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %65 = icmp eq %struct.spi_master* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %68 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %67, i32 0, i32 0
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %482

72:                                               ; preds = %61
  %73 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %74 = call %struct.pl022* @spi_master_get_devdata(%struct.spi_master* %73)
  store %struct.pl022* %74, %struct.pl022** %9, align 8
  %75 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %76 = load %struct.pl022*, %struct.pl022** %9, align 8
  %77 = getelementptr inbounds %struct.pl022, %struct.pl022* %76, i32 0, i32 8
  store %struct.spi_master* %75, %struct.spi_master** %77, align 8
  %78 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %79 = load %struct.pl022*, %struct.pl022** %9, align 8
  %80 = getelementptr inbounds %struct.pl022, %struct.pl022* %79, i32 0, i32 7
  store %struct.pl022_ssp_controller* %78, %struct.pl022_ssp_controller** %80, align 8
  %81 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %82 = load %struct.pl022*, %struct.pl022** %9, align 8
  %83 = getelementptr inbounds %struct.pl022, %struct.pl022* %82, i32 0, i32 6
  store %struct.amba_device* %81, %struct.amba_device** %83, align 8
  %84 = load %struct.amba_id*, %struct.amba_id** %5, align 8
  %85 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load %struct.pl022*, %struct.pl022** %9, align 8
  %88 = getelementptr inbounds %struct.pl022, %struct.pl022* %87, i32 0, i32 5
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %88, align 8
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32* @devm_kcalloc(%struct.device* %89, i32 %90, i32 4, i32 %91)
  %93 = load %struct.pl022*, %struct.pl022** %9, align 8
  %94 = getelementptr inbounds %struct.pl022, %struct.pl022* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load %struct.pl022*, %struct.pl022** %9, align 8
  %96 = getelementptr inbounds %struct.pl022, %struct.pl022* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %72
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %11, align 4
  br label %478

102:                                              ; preds = %72
  %103 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %104 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %107 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %110 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @pl022_cleanup, align 4
  %112 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %113 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @pl022_setup, align 4
  %115 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %116 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 4
  %117 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %118 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* @pl022_transfer_one_message, align 4
  %120 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %121 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @pl022_unprepare_transfer_hardware, align 4
  %123 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %124 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %126 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %129 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load %struct.device*, %struct.device** %6, align 8
  %131 = getelementptr inbounds %struct.device, %struct.device* %130, i32 0, i32 0
  %132 = load %struct.device_node*, %struct.device_node** %131, align 8
  %133 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %134 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store %struct.device_node* %132, %struct.device_node** %135, align 8
  %136 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %137 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %102
  %141 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %142 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %168

145:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %164, %145
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %167

150:                                              ; preds = %146
  %151 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %152 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.pl022*, %struct.pl022** %9, align 8
  %159 = getelementptr inbounds %struct.pl022, %struct.pl022* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  br label %164

164:                                              ; preds = %150
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %146

167:                                              ; preds = %146
  br label %251

168:                                              ; preds = %140, %102
  %169 = load %struct.pl022*, %struct.pl022** %9, align 8
  %170 = getelementptr inbounds %struct.pl022, %struct.pl022* %169, i32 0, i32 5
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %188, %175
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.pl022*, %struct.pl022** %9, align 8
  %183 = getelementptr inbounds %struct.pl022, %struct.pl022* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  br label %188

188:                                              ; preds = %180
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %176

191:                                              ; preds = %176
  br label %250

192:                                              ; preds = %168
  %193 = load i32, i32* @CONFIG_OF, align 4
  %194 = call i64 @IS_ENABLED(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %249

196:                                              ; preds = %192
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %245, %196
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %248

201:                                              ; preds = %197
  %202 = load %struct.device_node*, %struct.device_node** %10, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @of_get_named_gpio(%struct.device_node* %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* @EPROBE_DEFER, align 4
  %207 = sub nsw i32 0, %206
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load i32, i32* @EPROBE_DEFER, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %11, align 4
  br label %477

212:                                              ; preds = %201
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.pl022*, %struct.pl022** %9, align 8
  %215 = getelementptr inbounds %struct.pl022, %struct.pl022* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %213, i32* %219, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i64 @gpio_is_valid(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %212
  %224 = load %struct.device*, %struct.device** %6, align 8
  %225 = load i32, i32* %14, align 4
  %226 = call i64 @devm_gpio_request(%struct.device* %224, i32 %225, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %230 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %229, i32 0, i32 0
  %231 = load i32, i32* %14, align 4
  %232 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %230, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %231)
  br label %243

233:                                              ; preds = %223
  %234 = load i32, i32* %14, align 4
  %235 = call i64 @gpio_direction_output(i32 %234, i32 1)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %239 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %238, i32 0, i32 0
  %240 = load i32, i32* %14, align 4
  %241 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %239, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %237, %233
  br label %243

243:                                              ; preds = %242, %228
  br label %244

244:                                              ; preds = %243, %212
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %12, align 4
  br label %197

248:                                              ; preds = %197
  br label %249

249:                                              ; preds = %248, %192
  br label %250

250:                                              ; preds = %249, %191
  br label %251

251:                                              ; preds = %250, %167
  %252 = load i32, i32* @SPI_CPOL, align 4
  %253 = load i32, i32* @SPI_CPHA, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @SPI_CS_HIGH, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @SPI_LOOP, align 4
  %258 = or i32 %256, %257
  %259 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %260 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  %261 = load %struct.pl022*, %struct.pl022** %9, align 8
  %262 = getelementptr inbounds %struct.pl022, %struct.pl022* %261, i32 0, i32 5
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %251
  %268 = load i32, i32* @SPI_LSB_FIRST, align 4
  %269 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %270 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %267, %251
  %274 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %275 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %274, i32 0, i32 0
  %276 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %277 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %278)
  %280 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %281 = call i32 @amba_request_regions(%struct.amba_device* %280, i32* null)
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %273
  br label %476

285:                                              ; preds = %273
  %286 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %287 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.pl022*, %struct.pl022** %9, align 8
  %291 = getelementptr inbounds %struct.pl022, %struct.pl022* %290, i32 0, i32 4
  store i32 %289, i32* %291, align 4
  %292 = load %struct.device*, %struct.device** %6, align 8
  %293 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %294 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %298 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %297, i32 0, i32 2
  %299 = call i32 @resource_size(%struct.TYPE_6__* %298)
  %300 = call i32* @devm_ioremap(%struct.device* %292, i32 %296, i32 %299)
  %301 = load %struct.pl022*, %struct.pl022** %9, align 8
  %302 = getelementptr inbounds %struct.pl022, %struct.pl022* %301, i32 0, i32 2
  store i32* %300, i32** %302, align 8
  %303 = load %struct.pl022*, %struct.pl022** %9, align 8
  %304 = getelementptr inbounds %struct.pl022, %struct.pl022* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = icmp eq i32* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %285
  %308 = load i32, i32* @ENOMEM, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %11, align 4
  br label %473

310:                                              ; preds = %285
  %311 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %312 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %311, i32 0, i32 0
  %313 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %314 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = ptrtoint i32* %315 to i32
  %317 = load %struct.pl022*, %struct.pl022** %9, align 8
  %318 = getelementptr inbounds %struct.pl022, %struct.pl022* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %312, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %316, i32* %319)
  %321 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %322 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %321, i32 0, i32 0
  %323 = call i32 @devm_clk_get(%struct.device* %322, i32* null)
  %324 = load %struct.pl022*, %struct.pl022** %9, align 8
  %325 = getelementptr inbounds %struct.pl022, %struct.pl022* %324, i32 0, i32 1
  store i32 %323, i32* %325, align 8
  %326 = load %struct.pl022*, %struct.pl022** %9, align 8
  %327 = getelementptr inbounds %struct.pl022, %struct.pl022* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i64 @IS_ERR(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %310
  %332 = load %struct.pl022*, %struct.pl022** %9, align 8
  %333 = getelementptr inbounds %struct.pl022, %struct.pl022* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @PTR_ERR(i32 %334)
  store i32 %335, i32* %11, align 4
  %336 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %337 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %336, i32 0, i32 0
  %338 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %337, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %472

339:                                              ; preds = %310
  %340 = load %struct.pl022*, %struct.pl022** %9, align 8
  %341 = getelementptr inbounds %struct.pl022, %struct.pl022* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @clk_prepare_enable(i32 %342)
  store i32 %343, i32* %11, align 4
  %344 = load i32, i32* %11, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %339
  %347 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %348 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %347, i32 0, i32 0
  %349 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %348, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %471

350:                                              ; preds = %339
  %351 = load %struct.pl022*, %struct.pl022** %9, align 8
  %352 = getelementptr inbounds %struct.pl022, %struct.pl022* %351, i32 0, i32 3
  %353 = load i32, i32* @pump_transfers, align 4
  %354 = load %struct.pl022*, %struct.pl022** %9, align 8
  %355 = ptrtoint %struct.pl022* %354 to i64
  %356 = call i32 @tasklet_init(i32* %352, i32 %353, i64 %355)
  %357 = load %struct.pl022*, %struct.pl022** %9, align 8
  %358 = getelementptr inbounds %struct.pl022, %struct.pl022* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = call i32 @SSP_CR1(i32* %359)
  %361 = call i32 @readw(i32 %360)
  %362 = load i32, i32* @SSP_CR1_MASK_SSE, align 4
  %363 = xor i32 %362, -1
  %364 = and i32 %361, %363
  %365 = load %struct.pl022*, %struct.pl022** %9, align 8
  %366 = getelementptr inbounds %struct.pl022, %struct.pl022* %365, i32 0, i32 2
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @SSP_CR1(i32* %367)
  %369 = call i32 @writew(i32 %364, i32 %368)
  %370 = load %struct.pl022*, %struct.pl022** %9, align 8
  %371 = call i32 @load_ssp_default_config(%struct.pl022* %370)
  %372 = load %struct.device*, %struct.device** %6, align 8
  %373 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %374 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @pl022_interrupt_handler, align 4
  %379 = load %struct.pl022*, %struct.pl022** %9, align 8
  %380 = call i32 @devm_request_irq(%struct.device* %372, i32 %377, i32 %378, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.pl022* %379)
  store i32 %380, i32* %11, align 4
  %381 = load i32, i32* %11, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %350
  %384 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %385 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %384, i32 0, i32 0
  %386 = load i32, i32* %11, align 4
  %387 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %385, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %386)
  br label %466

388:                                              ; preds = %350
  %389 = load %struct.pl022*, %struct.pl022** %9, align 8
  %390 = call i32 @pl022_dma_autoprobe(%struct.pl022* %389)
  store i32 %390, i32* %11, align 4
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* @EPROBE_DEFER, align 4
  %393 = sub nsw i32 0, %392
  %394 = icmp eq i32 %391, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %388
  %396 = load %struct.device*, %struct.device** %6, align 8
  %397 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %396, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %466

398:                                              ; preds = %388
  %399 = load i32, i32* %11, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %403 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %402, i32 0, i32 2
  store i32 1, i32* %403, align 8
  br label %419

404:                                              ; preds = %398
  %405 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %406 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %404
  %410 = load %struct.pl022*, %struct.pl022** %9, align 8
  %411 = call i32 @pl022_dma_probe(%struct.pl022* %410)
  store i32 %411, i32* %11, align 4
  %412 = load i32, i32* %11, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %409
  %415 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %416 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %415, i32 0, i32 2
  store i32 0, i32* %416, align 8
  br label %417

417:                                              ; preds = %414, %409
  br label %418

418:                                              ; preds = %417, %404
  br label %419

419:                                              ; preds = %418, %401
  %420 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %421 = load %struct.pl022*, %struct.pl022** %9, align 8
  %422 = call i32 @amba_set_drvdata(%struct.amba_device* %420, %struct.pl022* %421)
  %423 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %424 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %423, i32 0, i32 0
  %425 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %426 = call i32 @devm_spi_register_master(%struct.device* %424, %struct.spi_master* %425)
  store i32 %426, i32* %11, align 4
  %427 = load i32, i32* %11, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %419
  %430 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %431 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %430, i32 0, i32 0
  %432 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %431, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  br label %457

433:                                              ; preds = %419
  %434 = load %struct.device*, %struct.device** %6, align 8
  %435 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %434, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %436 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %437 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %454

440:                                              ; preds = %433
  %441 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %442 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %441, i32 0, i32 0
  %443 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %444 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %442, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i32 %445)
  %447 = load %struct.device*, %struct.device** %6, align 8
  %448 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %449 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %447, i32 %450)
  %452 = load %struct.device*, %struct.device** %6, align 8
  %453 = call i32 @pm_runtime_use_autosuspend(%struct.device* %452)
  br label %454

454:                                              ; preds = %440, %433
  %455 = load %struct.device*, %struct.device** %6, align 8
  %456 = call i32 @pm_runtime_put(%struct.device* %455)
  store i32 0, i32* %3, align 4
  br label %482

457:                                              ; preds = %429
  %458 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %7, align 8
  %459 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %457
  %463 = load %struct.pl022*, %struct.pl022** %9, align 8
  %464 = call i32 @pl022_dma_remove(%struct.pl022* %463)
  br label %465

465:                                              ; preds = %462, %457
  br label %466

466:                                              ; preds = %465, %395, %383
  %467 = load %struct.pl022*, %struct.pl022** %9, align 8
  %468 = getelementptr inbounds %struct.pl022, %struct.pl022* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 8
  %470 = call i32 @clk_disable_unprepare(i32 %469)
  br label %471

471:                                              ; preds = %466, %346
  br label %472

472:                                              ; preds = %471, %331
  br label %473

473:                                              ; preds = %472, %307
  %474 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %475 = call i32 @amba_release_regions(%struct.amba_device* %474)
  br label %476

476:                                              ; preds = %473, %284
  br label %477

477:                                              ; preds = %476, %209
  br label %478

478:                                              ; preds = %477, %99
  %479 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %480 = call i32 @spi_master_put(%struct.spi_master* %479)
  %481 = load i32, i32* %11, align 4
  store i32 %481, i32* %3, align 4
  br label %482

482:                                              ; preds = %478, %454, %66, %56, %42
  %483 = load i32, i32* %3, align 4
  ret i32 %483
}

declare dso_local %struct.pl022_ssp_controller* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.pl022_ssp_controller* @pl022_platform_data_dt_get(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.pl022* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i64 @devm_gpio_request(%struct.device*, i32, i8*) #1

declare dso_local i64 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @amba_request_regions(%struct.amba_device*, i32*) #1

declare dso_local i32* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @SSP_CR1(i32*) #1

declare dso_local i32 @load_ssp_default_config(%struct.pl022*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.pl022*) #1

declare dso_local i32 @pl022_dma_autoprobe(%struct.pl022*) #1

declare dso_local i32 @pl022_dma_probe(%struct.pl022*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.pl022*) #1

declare dso_local i32 @devm_spi_register_master(%struct.device*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @pl022_dma_remove(%struct.pl022*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
