; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ad9834_state = type { i32, i32, i32, i32, %struct.spi_device*, i32, i32, %struct.TYPE_5__*, i32*, %struct.TYPE_5__, %struct.regulator*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.regulator = type { i32 }
%struct.iio_dev = type { i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to enable specified AVDD supply\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable master clock\0A\00", align 1
@ad9833_info = common dso_local global i32 0, align 4
@ad9834_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD9834_B28 = common dso_local global i32 0, align 4
@AD9834_RESET = common dso_local global i32 0, align 4
@AD9834_DIV2 = common dso_local global i32 0, align 4
@ID_AD9834 = common dso_local global i32 0, align 4
@AD9834_SIGN_PIB = common dso_local global i32 0, align 4
@AD9834_REG_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"device init failed\0A\00", align 1
@AD9834_REG_FREQ0 = common dso_local global i32 0, align 4
@AD9834_REG_FREQ1 = common dso_local global i32 0, align 4
@AD9834_REG_PHASE0 = common dso_local global i32 0, align 4
@AD9834_REG_PHASE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad9834_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9834_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad9834_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.regulator*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.regulator* @devm_regulator_get(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %10, %struct.regulator** %6, align 8
  %11 = load %struct.regulator*, %struct.regulator** %6, align 8
  %12 = call i64 @IS_ERR(%struct.regulator* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.regulator*, %struct.regulator** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.regulator* %15)
  store i32 %16, i32* %2, align 4
  br label %249

17:                                               ; preds = %1
  %18 = load %struct.regulator*, %struct.regulator** %6, align 8
  %19 = call i32 @regulator_enable(%struct.regulator* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %249

27:                                               ; preds = %17
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %29, i32 80)
  store %struct.iio_dev* %30, %struct.iio_dev** %5, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %32 = icmp ne %struct.iio_dev* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %245

36:                                               ; preds = %27
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = call i32 @spi_set_drvdata(%struct.spi_device* %37, %struct.iio_dev* %38)
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = call %struct.ad9834_state* @iio_priv(%struct.iio_dev* %40)
  store %struct.ad9834_state* %41, %struct.ad9834_state** %4, align 8
  %42 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %43 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %42, i32 0, i32 11
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = call i32 @devm_clk_get(i32* %46, i32* null)
  %48 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %49 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %51 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_prepare_enable(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %245

60:                                               ; preds = %36
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %63 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %62, i32 0, i32 4
  store %struct.spi_device* %61, %struct.spi_device** %63, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %69 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.regulator*, %struct.regulator** %6, align 8
  %71 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %72 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %71, i32 0, i32 10
  store %struct.regulator* %70, %struct.regulator** %72, align 8
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %85 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %90 [
    i32 129, label %87
    i32 128, label %87
  ]

87:                                               ; preds = %60, %60
  %88 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 1
  store i32* @ad9833_info, i32** %89, align 8
  br label %93

90:                                               ; preds = %60
  %91 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 1
  store i32* @ad9834_info, i32** %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %95 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %98 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %97, i32 0, i32 5
  %99 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %100 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i32* %98, i32** %101, align 8
  %102 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %103 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 2, i32* %104, align 8
  %105 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %106 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %105, i32 0, i32 3
  %107 = call i32 @spi_message_init(i32* %106)
  %108 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %109 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %108, i32 0, i32 9
  %110 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %111 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %110, i32 0, i32 3
  %112 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %109, i32* %111)
  %113 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %114 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %113, i32 0, i32 8
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %118 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %117, i32 0, i32 7
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32* %116, i32** %121, align 8
  %122 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %123 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %122, i32 0, i32 7
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 2, i32* %126, align 8
  %127 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %128 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %127, i32 0, i32 7
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %133 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %132, i32 0, i32 8
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %137 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %136, i32 0, i32 7
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i32* %135, i32** %140, align 8
  %141 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %142 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %141, i32 0, i32 7
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store i32 2, i32* %145, align 8
  %146 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %147 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %146, i32 0, i32 6
  %148 = call i32 @spi_message_init(i32* %147)
  %149 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %150 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %149, i32 0, i32 7
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 0
  %153 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %154 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %153, i32 0, i32 6
  %155 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %152, i32* %154)
  %156 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %157 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %156, i32 0, i32 7
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 1
  %160 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %161 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %160, i32 0, i32 6
  %162 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %159, i32* %161)
  %163 = load i32, i32* @AD9834_B28, align 4
  %164 = load i32, i32* @AD9834_RESET, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %167 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @AD9834_DIV2, align 4
  %169 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %170 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %174 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ID_AD9834, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %93
  %179 = load i32, i32* @AD9834_SIGN_PIB, align 4
  %180 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %181 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %93
  %185 = load i32, i32* @AD9834_REG_CMD, align 4
  %186 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %187 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %185, %188
  %190 = call i32 @cpu_to_be16(i32 %189)
  %191 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %192 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 8
  %193 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %194 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %193, i32 0, i32 4
  %195 = load %struct.spi_device*, %struct.spi_device** %194, align 8
  %196 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %197 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %196, i32 0, i32 3
  %198 = call i32 @spi_sync(%struct.spi_device* %195, i32* %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %184
  %202 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %203 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %202, i32 0, i32 0
  %204 = call i32 @dev_err(i32* %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %240

205:                                              ; preds = %184
  %206 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %207 = load i32, i32* @AD9834_REG_FREQ0, align 4
  %208 = call i32 @ad9834_write_frequency(%struct.ad9834_state* %206, i32 %207, i32 1000000)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %240

212:                                              ; preds = %205
  %213 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %214 = load i32, i32* @AD9834_REG_FREQ1, align 4
  %215 = call i32 @ad9834_write_frequency(%struct.ad9834_state* %213, i32 %214, i32 5000000)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %240

219:                                              ; preds = %212
  %220 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %221 = load i32, i32* @AD9834_REG_PHASE0, align 4
  %222 = call i32 @ad9834_write_phase(%struct.ad9834_state* %220, i32 %221, i32 512)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  br label %240

226:                                              ; preds = %219
  %227 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %228 = load i32, i32* @AD9834_REG_PHASE1, align 4
  %229 = call i32 @ad9834_write_phase(%struct.ad9834_state* %227, i32 %228, i32 1024)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %240

233:                                              ; preds = %226
  %234 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %235 = call i32 @iio_device_register(%struct.iio_dev* %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %240

239:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %249

240:                                              ; preds = %238, %232, %225, %218, %211, %201
  %241 = load %struct.ad9834_state*, %struct.ad9834_state** %4, align 8
  %242 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @clk_disable_unprepare(i32 %243)
  br label %245

245:                                              ; preds = %240, %56, %33
  %246 = load %struct.regulator*, %struct.regulator** %6, align 8
  %247 = call i32 @regulator_disable(%struct.regulator* %246)
  %248 = load i32, i32* %7, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %245, %239, %22, %14
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.regulator* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ad9834_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @ad9834_write_frequency(%struct.ad9834_state*, i32, i32) #1

declare dso_local i32 @ad9834_write_phase(%struct.ad9834_state*, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
