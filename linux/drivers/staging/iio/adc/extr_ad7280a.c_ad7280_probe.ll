; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_platform_data = type { i32, i32, i32, i64 }
%struct.spi_device = type { i64, i32, i32, i32 }
%struct.ad7280_state = type { i32, i32, i32, i32, i32, i16, i32, i32, %struct.spi_device*, i32, i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@__const.ad7280_probe.t_acq_ns = private unnamed_addr constant [4 x i16] [i16 465, i16 1010, i16 1460, i16 1890], align 2
@__const.ad7280_probe.n_avg = private unnamed_addr constant [4 x i16] [i16 1, i16 2, i16 4, i16 8], align 2
@ENOMEM = common dso_local global i32 0, align 4
@ad7793_default_pdata = common dso_local global %struct.ad7280_platform_data zeroinitializer, align 8
@POLYNOM = common dso_local global i32 0, align 4
@AD7280A_MAX_SPI_CLK_HZ = common dso_local global i32 0, align 4
@SPI_MODE_1 = common dso_local global i32 0, align 4
@AD7280A_CTRL_LB_THERMISTOR_EN = common dso_local global i32 0, align 4
@AD7280A_NUM_CH = common dso_local global i32 0, align 4
@ad7280_sw_power_down = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7280_info = common dso_local global i32 0, align 4
@AD7280A_DEVADDR_MASTER = common dso_local global i32 0, align 4
@AD7280A_ALERT = common dso_local global i32 0, align 4
@AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN = common dso_local global i32 0, align 4
@AD7280A_ALERT_GEN_STATIC_HIGH = common dso_local global i32 0, align 4
@ad7280_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7280_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7280_platform_data*, align 8
  %5 = alloca %struct.ad7280_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i16], align 2
  %8 = alloca [4 x i16], align 2
  %9 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = call %struct.ad7280_platform_data* @dev_get_platdata(i32* %11)
  store %struct.ad7280_platform_data* %12, %struct.ad7280_platform_data** %4, align 8
  %13 = bitcast [4 x i16]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %13, i8* align 2 bitcast ([4 x i16]* @__const.ad7280_probe.t_acq_ns to i8*), i64 8, i1 false)
  %14 = bitcast [4 x i16]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %14, i8* align 2 bitcast ([4 x i16]* @__const.ad7280_probe.n_avg to i8*), i64 8, i1 false)
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %16, i32 48)
  store %struct.iio_dev* %17, %struct.iio_dev** %9, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %263

23:                                               ; preds = %1
  %24 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %25 = call %struct.ad7280_state* @iio_priv(%struct.iio_dev* %24)
  store %struct.ad7280_state* %25, %struct.ad7280_state** %5, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %28 = call i32 @spi_set_drvdata(%struct.spi_device* %26, %struct.iio_dev* %27)
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %31 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %30, i32 0, i32 8
  store %struct.spi_device* %29, %struct.spi_device** %31, align 8
  %32 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %33 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %32, i32 0, i32 10
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %36 = icmp ne %struct.ad7280_platform_data* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %23
  store %struct.ad7280_platform_data* @ad7793_default_pdata, %struct.ad7280_platform_data** %4, align 8
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %40 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @POLYNOM, align 4
  %43 = call i32 @crc8_populate_msb(i32 %41, i32 %42)
  %44 = load i32, i32* @AD7280A_MAX_SPI_CLK_HZ, align 4
  %45 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %46 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %45, i32 0, i32 8
  %47 = load %struct.spi_device*, %struct.spi_device** %46, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 3
  store i32 %44, i32* %48, align 8
  %49 = load i32, i32* @SPI_MODE_1, align 4
  %50 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %51 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %50, i32 0, i32 8
  %52 = load %struct.spi_device*, %struct.spi_device** %51, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 4
  %54 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %55 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %54, i32 0, i32 8
  %56 = load %struct.spi_device*, %struct.spi_device** %55, align 8
  %57 = call i32 @spi_setup(%struct.spi_device* %56)
  %58 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.ad7280_platform_data, %struct.ad7280_platform_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 3
  %62 = call i32 @AD7280A_CTRL_LB_ACQ_TIME(i32 %61)
  %63 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %64 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.ad7280_platform_data, %struct.ad7280_platform_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 3
  %69 = call i32 @AD7280A_CTRL_HB_CONV_AVG(i32 %68)
  %70 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %71 = getelementptr inbounds %struct.ad7280_platform_data, %struct.ad7280_platform_data* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %38
  %75 = load i32, i32* @AD7280A_CTRL_LB_THERMISTOR_EN, align 4
  br label %77

76:                                               ; preds = %38
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = or i32 %69, %78
  %80 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %81 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %83 = call i32 @ad7280_chain_setup(%struct.ad7280_state* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %263

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %91 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %93 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* @AD7280A_NUM_CH, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %99 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %101 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %100, i32 0, i32 3
  store i32 255, i32* %101, align 4
  %102 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %103 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %102, i32 0, i32 4
  store i32 255, i32* %103, align 8
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 1
  %106 = load i32, i32* @ad7280_sw_power_down, align 4
  %107 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %108 = call i32 @devm_add_action_or_reset(i32* %105, i32 %106, %struct.ad7280_state* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %88
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %263

113:                                              ; preds = %88
  %114 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %115 = getelementptr inbounds %struct.ad7280_platform_data, %struct.ad7280_platform_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = add nsw i32 %121, 695
  %123 = load i32, i32* @AD7280A_NUM_CH, align 4
  %124 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %125 = getelementptr inbounds %struct.ad7280_platform_data, %struct.ad7280_platform_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 3
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 %128
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = mul nsw i32 %123, %131
  %133 = mul nsw i32 %122, %132
  %134 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %135 = getelementptr inbounds %struct.ad7280_platform_data, %struct.ad7280_platform_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 %138
  %140 = load i16, i16* %139, align 2
  %141 = zext i16 %140 to i32
  %142 = sub nsw i32 %133, %141
  %143 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %144 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %145, 250
  %147 = add nsw i32 %142, %146
  %148 = trunc i32 %147 to i16
  %149 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %150 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %149, i32 0, i32 5
  store i16 %148, i16* %150, align 4
  %151 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %152 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %151, i32 0, i32 5
  %153 = load i16, i16* %152, align 4
  %154 = call zeroext i16 @DIV_ROUND_UP(i16 zeroext %153, i32 1000)
  %155 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %156 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %155, i32 0, i32 5
  store i16 %154, i16* %156, align 4
  %157 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %158 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %157, i32 0, i32 5
  %159 = load i16, i16* %158, align 4
  %160 = zext i16 %159 to i32
  %161 = add nsw i32 %160, 5
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %158, align 4
  %163 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %164 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %163)
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %168 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %170 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %169, i32 0, i32 1
  %171 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %172 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32* %170, i32** %173, align 8
  %174 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %175 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %176 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %178 = call i32 @ad7280_channel_init(%struct.ad7280_state* %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %113
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %2, align 4
  br label %263

183:                                              ; preds = %113
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %186 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %188 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %191 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 8
  %192 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %193 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %192, i32 0, i32 2
  store i32* @ad7280_info, i32** %193, align 8
  %194 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %195 = call i32 @ad7280_attr_init(%struct.ad7280_state* %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %183
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %2, align 4
  br label %263

200:                                              ; preds = %183
  %201 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %202 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %201, i32 0, i32 1
  %203 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %204 = call i32 @devm_iio_device_register(i32* %202, %struct.iio_dev* %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %2, align 4
  br label %263

209:                                              ; preds = %200
  %210 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %211 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %262

214:                                              ; preds = %209
  %215 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %216 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %217 = load i32, i32* @AD7280A_ALERT, align 4
  %218 = load i32, i32* @AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN, align 4
  %219 = call i32 @ad7280_write(%struct.ad7280_state* %215, i32 %216, i32 %217, i32 1, i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %214
  %223 = load i32, i32* %6, align 4
  store i32 %223, i32* %2, align 4
  br label %263

224:                                              ; preds = %214
  %225 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %226 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %227 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @ad7280a_devaddr(i32 %228)
  %230 = load i32, i32* @AD7280A_ALERT, align 4
  %231 = load i32, i32* @AD7280A_ALERT_GEN_STATIC_HIGH, align 4
  %232 = load %struct.ad7280_platform_data*, %struct.ad7280_platform_data** %4, align 8
  %233 = getelementptr inbounds %struct.ad7280_platform_data, %struct.ad7280_platform_data* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, 15
  %236 = or i32 %231, %235
  %237 = call i32 @ad7280_write(%struct.ad7280_state* %225, i32 %229, i32 %230, i32 0, i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %224
  %241 = load i32, i32* %6, align 4
  store i32 %241, i32* %2, align 4
  br label %263

242:                                              ; preds = %224
  %243 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %244 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %243, i32 0, i32 1
  %245 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %246 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* @ad7280_event_handler, align 4
  %249 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %250 = load i32, i32* @IRQF_ONESHOT, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %253 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %256 = call i32 @devm_request_threaded_irq(i32* %244, i64 %247, i32* null, i32 %248, i32 %251, i32 %254, %struct.iio_dev* %255)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %242
  %260 = load i32, i32* %6, align 4
  store i32 %260, i32* %2, align 4
  br label %263

261:                                              ; preds = %242
  br label %262

262:                                              ; preds = %261, %209
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %262, %259, %240, %222, %207, %198, %181, %111, %86, %20
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.ad7280_platform_data* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @crc8_populate_msb(i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @AD7280A_CTRL_LB_ACQ_TIME(i32) #1

declare dso_local i32 @AD7280A_CTRL_HB_CONV_AVG(i32) #1

declare dso_local i32 @ad7280_chain_setup(%struct.ad7280_state*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.ad7280_state*) #1

declare dso_local zeroext i16 @DIV_ROUND_UP(i16 zeroext, i32) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad7280_channel_init(%struct.ad7280_state*) #1

declare dso_local i32 @ad7280_attr_init(%struct.ad7280_state*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i32) #1

declare dso_local i32 @ad7280a_devaddr(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i32, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
