; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ad7192_state = type { i32, i64, i64, i8*, i8*, i8*, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"no IRQ?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to enable specified AVdd supply\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dvdd\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to enable specified DVdd supply\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Device tree error, reference voltage undefined\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ID_AD7195 = common dso_local global i64 0, align 8
@ad7195_info = common dso_local global i32 0, align 4
@ad7192_info = common dso_local global i32 0, align 4
@ad7192_sigma_delta_info = common dso_local global i32 0, align 4
@AD7192_INT_FREQ_MHZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AD7192_CLK_EXT_MCLK1_2 = common dso_local global i64 0, align 8
@AD7192_CLK_EXT_MCLK2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"External clock frequency out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7192_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7192_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(%struct.TYPE_11__* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %264

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %20, i32 72)
  store %struct.iio_dev* %21, %struct.iio_dev** %5, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = icmp ne %struct.iio_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %264

27:                                               ; preds = %18
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = call %struct.ad7192_state* @iio_priv(%struct.iio_dev* %28)
  store %struct.ad7192_state* %29, %struct.ad7192_state** %4, align 8
  %30 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %31 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %30, i32 0, i32 8
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call i8* @devm_regulator_get(%struct.TYPE_11__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %37 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %39 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %45 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %2, align 4
  br label %264

48:                                               ; preds = %27
  %49 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %50 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @regulator_enable(i8* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_11__* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %264

60:                                               ; preds = %48
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = call i8* @devm_regulator_get(%struct.TYPE_11__* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %65 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %67 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %73 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %6, align 4
  br label %258

76:                                               ; preds = %60
  %77 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %78 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @regulator_enable(i8* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(%struct.TYPE_11__* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %258

87:                                               ; preds = %76
  %88 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %89 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @regulator_get_voltage(i8* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = sdiv i32 %95, 1000
  %97 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %98 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %87
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = call i32 @dev_err(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %106 = call i32 @spi_set_drvdata(%struct.spi_device* %104, %struct.iio_dev* %105)
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = call %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device* %107)
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %112 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 0
  %115 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %116 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %117, align 8
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = call %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device* %118)
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %125 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %126 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %128 = call i32 @ad7192_channels_config(%struct.iio_dev* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %103
  br label %253

132:                                              ; preds = %103
  %133 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %134 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ID_AD7195, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %140 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %139, i32 0, i32 0
  store i32* @ad7195_info, i32** %140, align 8
  br label %144

141:                                              ; preds = %132
  %142 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %143 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %142, i32 0, i32 0
  store i32* @ad7192_info, i32** %143, align 8
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %146 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %145, i32 0, i32 7
  %147 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %148 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %149 = call i32 @ad_sd_init(%struct.TYPE_12__* %146, %struct.iio_dev* %147, %struct.spi_device* %148, i32* @ad7192_sigma_delta_info)
  %150 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %151 = call i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %253

155:                                              ; preds = %144
  %156 = load i32, i32* @AD7192_INT_FREQ_MHZ, align 4
  %157 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %158 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %160 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = call i8* @devm_clk_get(i32* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %165 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %166 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %165, i32 0, i32 5
  store i8* %164, i8** %166, align 8
  %167 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %168 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %167, i32 0, i32 5
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @IS_ERR(i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %155
  %173 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %174 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %173, i32 0, i32 5
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @PTR_ERR(i8* %175)
  %177 = load i32, i32* @ENOENT, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp ne i32 %176, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %182 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %181, i32 0, i32 5
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @PTR_ERR(i8* %183)
  store i32 %184, i32* %6, align 4
  br label %250

185:                                              ; preds = %172, %155
  %186 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %187 = call i64 @ad7192_of_clock_select(%struct.ad7192_state* %186)
  %188 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %189 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %191 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @AD7192_CLK_EXT_MCLK1_2, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %201, label %195

195:                                              ; preds = %185
  %196 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %197 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @AD7192_CLK_EXT_MCLK2, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %228

201:                                              ; preds = %195, %185
  %202 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %203 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @clk_prepare_enable(i8* %204)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %250

209:                                              ; preds = %201
  %210 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %211 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %210, i32 0, i32 5
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @clk_get_rate(i8* %212)
  %214 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %215 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 8
  %216 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %217 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ad7192_valid_external_frequency(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %209
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %6, align 4
  %224 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %225 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %224, i32 0, i32 0
  %226 = call i32 @dev_err(%struct.TYPE_11__* %225, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %245

227:                                              ; preds = %209
  br label %228

228:                                              ; preds = %227, %195
  %229 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %230 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %231 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @ad7192_setup(%struct.ad7192_state* %229, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  br label %245

238:                                              ; preds = %228
  %239 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %240 = call i32 @iio_device_register(%struct.iio_dev* %239)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %245

244:                                              ; preds = %238
  store i32 0, i32* %2, align 4
  br label %264

245:                                              ; preds = %243, %237, %221
  %246 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %247 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %246, i32 0, i32 5
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @clk_disable_unprepare(i8* %248)
  br label %250

250:                                              ; preds = %245, %208, %180
  %251 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %252 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %251)
  br label %253

253:                                              ; preds = %250, %154, %131
  %254 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %255 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %254, i32 0, i32 4
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @regulator_disable(i8* %256)
  br label %258

258:                                              ; preds = %253, %83, %71
  %259 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %260 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %259, i32 0, i32 3
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @regulator_disable(i8* %261)
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %258, %244, %55, %43, %24, %12
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.ad7192_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @regulator_get_voltage(i8*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad7192_channels_config(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_init(%struct.TYPE_12__*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @ad7192_of_clock_select(%struct.ad7192_state*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @ad7192_valid_external_frequency(i32) #1

declare dso_local i32 @ad7192_setup(%struct.ad7192_state*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
