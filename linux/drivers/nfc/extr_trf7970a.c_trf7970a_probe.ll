; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.trf7970a = type { i32, i8*, i32, %struct.TYPE_12__*, i32, i32, i32, i64, i32, i8*, i8*, %struct.spi_device*, i32 }

@TRF7970A_13MHZ_CLOCK_FREQUENCY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"No Device Tree entry\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRF7970A_ST_PWR_OFF = common dso_local global i32 0, align 4
@SPI_MODE_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't set up SPI Communication\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"irq-status-read-quirk\00", align 1
@TRF7970A_QUIRK_IRQ_STATUS_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"ti,enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"No EN GPIO property\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"No EN2 GPIO property\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Error getting EN2 GPIO property: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"en2-rf-quirk\00", align 1
@TRF7970A_QUIRK_EN2_MUST_STAY_LOW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@TRF7970A_27MHZ_CLOCK_FREQUENCY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"clock-frequency (%u Hz) unsupported\0A\00", align 1
@TRF7970A_MODULATOR_27MHZ = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"trf7970a configured for 27MHz crystal\0A\00", align 1
@trf7970a_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"trf7970a\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Can't request IRQ#%d: %d\0A\00", align 1
@trf7970a_timeout_work_handler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Can't get VIN regulator: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Can't enable VIN: %d\0A\00", align 1
@TRF7970A_CHIP_STATUS_VRS5_3 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"vdd-io\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Can't get VDD_IO regulator: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Can't enable VDD_IO: %d\0A\00", align 1
@TRF7970A_REG_IO_CTRL_IO_LOW = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"trf7970a config vdd_io to 1.8V\0A\00", align 1
@trf7970a_nfc_ops = common dso_local global i32 0, align 4
@TRF7970A_SUPPORTED_PROTOCOLS = common dso_local global i32 0, align 4
@NFC_DIGITAL_DRV_CAPS_IN_CRC = common dso_local global i32 0, align 4
@NFC_DIGITAL_DRV_CAPS_TG_CRC = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [35 x i8] c"Can't allocate NFC digital device\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Can't register NFC digital device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @trf7970a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.trf7970a*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load i64, i64* @TRF7970A_13MHZ_CLOCK_FREQUENCY, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %380

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.trf7970a* @devm_kzalloc(%struct.TYPE_12__* %25, i32 96, i32 %26)
  store %struct.trf7970a* %27, %struct.trf7970a** %5, align 8
  %28 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %29 = icmp ne %struct.trf7970a* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %380

33:                                               ; preds = %23
  %34 = load i32, i32* @TRF7970A_ST_PWR_OFF, align 4
  %35 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %36 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 1
  %39 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %40 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %39, i32 0, i32 3
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %40, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %43 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %42, i32 0, i32 11
  store %struct.spi_device* %41, %struct.spi_device** %43, align 8
  %44 = load i32, i32* @SPI_MODE_1, align 4
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = call i32 @spi_setup(%struct.spi_device* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %33
  %54 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %55 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %380

59:                                               ; preds = %33
  %60 = load %struct.device_node*, %struct.device_node** %4, align 8
  %61 = call i64 @of_property_read_bool(%struct.device_node* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @TRF7970A_QUIRK_IRQ_STATUS_READ, align 4
  %65 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %66 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %71 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %70, i32 0, i32 3
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %74 = call i8* @devm_gpiod_get_index(%struct.TYPE_12__* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %73)
  %75 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %76 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %78 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %77, i32 0, i32 10
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %69
  %83 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %84 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %88 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %87, i32 0, i32 10
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %2, align 4
  br label %380

91:                                               ; preds = %69
  %92 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %93 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %92, i32 0, i32 3
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %96 = call i8* @devm_gpiod_get_index_optional(%struct.TYPE_12__* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %95)
  %97 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %98 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %97, i32 0, i32 9
  store i8* %96, i8** %98, align 8
  %99 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %100 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %99, i32 0, i32 9
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %91
  %104 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %105 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %104, i32 0, i32 3
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = call i32 @dev_info(%struct.TYPE_12__* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %139

108:                                              ; preds = %91
  %109 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %110 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %109, i32 0, i32 9
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %116 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %115, i32 0, i32 3
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %119 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %118, i32 0, i32 9
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  %122 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %124 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %123, i32 0, i32 9
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @PTR_ERR(i8* %125)
  store i32 %126, i32* %2, align 4
  br label %380

127:                                              ; preds = %108
  %128 = load %struct.device_node*, %struct.device_node** %4, align 8
  %129 = call i64 @of_property_read_bool(%struct.device_node* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, i32* @TRF7970A_QUIRK_EN2_MUST_STAY_LOW, align 4
  %133 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %134 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %127
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %103
  %140 = load %struct.device_node*, %struct.device_node** %4, align 8
  %141 = call i32 @of_property_read_u32(%struct.device_node* %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64* %9)
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @TRF7970A_27MHZ_CLOCK_FREQUENCY, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* @TRF7970A_13MHZ_CLOCK_FREQUENCY, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %151 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %150, i32 0, i32 3
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %380

157:                                              ; preds = %145, %139
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @TRF7970A_27MHZ_CLOCK_FREQUENCY, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i64, i64* @TRF7970A_MODULATOR_27MHZ, align 8
  %163 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %164 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %163, i32 0, i32 7
  store i64 %162, i64* %164, align 8
  %165 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %166 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %165, i32 0, i32 3
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = call i32 @dev_dbg(%struct.TYPE_12__* %167, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %172

169:                                              ; preds = %157
  %170 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %171 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %170, i32 0, i32 7
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %169, %161
  %173 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %174 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %173, i32 0, i32 3
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %177 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @trf7970a_irq, align 4
  %180 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %181 = load i32, i32* @IRQF_ONESHOT, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %184 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %175, i32 %178, i32* null, i32 %179, i32 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.trf7970a* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %172
  %188 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %189 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %188, i32 0, i32 3
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %192 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %2, align 4
  br label %380

197:                                              ; preds = %172
  %198 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %199 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %198, i32 0, i32 0
  %200 = call i32 @mutex_init(i32* %199)
  %201 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %202 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %201, i32 0, i32 6
  %203 = load i32, i32* @trf7970a_timeout_work_handler, align 4
  %204 = call i32 @INIT_DELAYED_WORK(i32* %202, i32 %203)
  %205 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %206 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %205, i32 0, i32 1
  %207 = call i8* @devm_regulator_get(%struct.TYPE_12__* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %208 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %209 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  %210 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %211 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = call i64 @IS_ERR(i8* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %197
  %216 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %217 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @PTR_ERR(i8* %218)
  store i32 %219, i32* %8, align 4
  %220 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %221 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %220, i32 0, i32 3
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %223)
  br label %375

225:                                              ; preds = %197
  %226 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %227 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @regulator_enable(i8* %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %234 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %233, i32 0, i32 3
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %236)
  br label %375

238:                                              ; preds = %225
  %239 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %240 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @regulator_get_voltage(i8* %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp sgt i32 %243, 4000000
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load i32, i32* @TRF7970A_CHIP_STATUS_VRS5_3, align 4
  %247 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %248 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %247, i32 0, i32 5
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %245, %238
  %250 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %251 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %250, i32 0, i32 1
  %252 = call i8* @devm_regulator_get(%struct.TYPE_12__* %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %253 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %254 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %253, i32 0, i32 1
  store i8* %252, i8** %254, align 8
  %255 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %256 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @IS_ERR(i8* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %249
  %261 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %262 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @PTR_ERR(i8* %263)
  store i32 %264, i32* %8, align 4
  %265 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %266 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %265, i32 0, i32 3
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %267, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %268)
  br label %375

270:                                              ; preds = %249
  %271 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %272 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @regulator_enable(i8* %273)
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %270
  %278 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %279 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %278, i32 0, i32 3
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %280, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %281)
  br label %375

283:                                              ; preds = %270
  %284 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %285 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %284, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @regulator_get_voltage(i8* %286)
  %288 = icmp eq i32 %287, 1800000
  br i1 %288, label %289, label %297

289:                                              ; preds = %283
  %290 = load i32, i32* @TRF7970A_REG_IO_CTRL_IO_LOW, align 4
  %291 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %292 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  %293 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %294 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %293, i32 0, i32 3
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = call i32 @dev_dbg(%struct.TYPE_12__* %295, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  br label %297

297:                                              ; preds = %289, %283
  %298 = load i32, i32* @TRF7970A_SUPPORTED_PROTOCOLS, align 4
  %299 = load i32, i32* @NFC_DIGITAL_DRV_CAPS_IN_CRC, align 4
  %300 = load i32, i32* @NFC_DIGITAL_DRV_CAPS_TG_CRC, align 4
  %301 = or i32 %299, %300
  %302 = call i32 @nfc_digital_allocate_device(i32* @trf7970a_nfc_ops, i32 %298, i32 %301, i32 0, i32 0)
  %303 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %304 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %306 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %297
  %310 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %311 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %310, i32 0, i32 3
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %311, align 8
  %313 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %312, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %8, align 4
  br label %370

316:                                              ; preds = %297
  %317 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %318 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %321 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %320, i32 0, i32 3
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = call i32 @nfc_digital_set_parent_dev(i32 %319, %struct.TYPE_12__* %322)
  %324 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %325 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %328 = call i32 @nfc_digital_set_drvdata(i32 %326, %struct.trf7970a* %327)
  %329 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %330 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %331 = call i32 @spi_set_drvdata(%struct.spi_device* %329, %struct.trf7970a* %330)
  %332 = load %struct.device_node*, %struct.device_node** %4, align 8
  %333 = call i32 @trf7970a_get_autosuspend_delay(%struct.device_node* %332)
  store i32 %333, i32* %7, align 4
  %334 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %335 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %334, i32 0, i32 3
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_12__* %336, i32 %337)
  %339 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %340 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %339, i32 0, i32 3
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %340, align 8
  %342 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_12__* %341)
  %343 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %344 = call i32 @trf7970a_startup(%struct.trf7970a* %343)
  store i32 %344, i32* %8, align 4
  %345 = load i32, i32* %8, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %316
  br label %365

348:                                              ; preds = %316
  %349 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %350 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @nfc_digital_register_device(i32 %351)
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %8, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %348
  %356 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %357 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %356, i32 0, i32 3
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %357, align 8
  %359 = load i32, i32* %8, align 4
  %360 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %358, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 %359)
  br label %362

361:                                              ; preds = %348
  store i32 0, i32* %2, align 4
  br label %380

362:                                              ; preds = %355
  %363 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %364 = call i32 @trf7970a_shutdown(%struct.trf7970a* %363)
  br label %365

365:                                              ; preds = %362, %347
  %366 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %367 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @nfc_digital_free_device(i32 %368)
  br label %370

370:                                              ; preds = %365, %309
  %371 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %372 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %371, i32 0, i32 1
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @regulator_disable(i8* %373)
  br label %375

375:                                              ; preds = %370, %277, %260, %232, %215
  %376 = load %struct.trf7970a*, %struct.trf7970a** %5, align 8
  %377 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %376, i32 0, i32 0
  %378 = call i32 @mutex_destroy(i32* %377)
  %379 = load i32, i32* %8, align 4
  store i32 %379, i32* %2, align 4
  br label %380

380:                                              ; preds = %375, %361, %187, %149, %114, %82, %53, %30, %17
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.trf7970a* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_gpiod_get_index(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_index_optional(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i32, i32*, i32, i32, i8*, %struct.trf7970a*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @regulator_get_voltage(i8*) #1

declare dso_local i32 @nfc_digital_allocate_device(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nfc_digital_set_parent_dev(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @nfc_digital_set_drvdata(i32, %struct.trf7970a*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.trf7970a*) #1

declare dso_local i32 @trf7970a_get_autosuspend_delay(%struct.device_node*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_12__*) #1

declare dso_local i32 @trf7970a_startup(%struct.trf7970a*) #1

declare dso_local i32 @nfc_digital_register_device(i32) #1

declare dso_local i32 @trf7970a_shutdown(%struct.trf7970a*) #1

declare dso_local i32 @nfc_digital_free_device(i32) #1

declare dso_local i32 @regulator_disable(i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
