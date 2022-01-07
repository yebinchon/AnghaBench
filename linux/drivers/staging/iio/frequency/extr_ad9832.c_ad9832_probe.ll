; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9832.c_ad9832_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9832.c_ad9832_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ad9832_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_dev = type { i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ad9832_state = type { i32, i8*, i8*, i8*, i32, %struct.spi_device*, i32, i32, %struct.TYPE_5__*, i32*, i32, %struct.TYPE_5__*, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to enable specified AVDD supply\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dvdd\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to enable specified DVDD supply\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ad9832_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD9832_SLEEP = common dso_local global i32 0, align 4
@AD9832_RESET = common dso_local global i32 0, align 4
@AD9832_CLR = common dso_local global i32 0, align 4
@AD9832_CMD_SLEEPRESCLR = common dso_local global i32 0, align 4
@CMD_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"device init failed\0A\00", align 1
@AD9832_FREQ0HM = common dso_local global i32 0, align 4
@AD9832_FREQ1HM = common dso_local global i32 0, align 4
@AD9832_PHASE0H = common dso_local global i32 0, align 4
@AD9832_PHASE1H = common dso_local global i32 0, align 4
@AD9832_PHASE2H = common dso_local global i32 0, align 4
@AD9832_PHASE3H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad9832_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9832_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad9832_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad9832_state*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.ad9832_platform_data* @dev_get_platdata(i32* %9)
  store %struct.ad9832_platform_data* %10, %struct.ad9832_platform_data** %4, align 8
  %11 = load %struct.ad9832_platform_data*, %struct.ad9832_platform_data** %4, align 8
  %12 = icmp ne %struct.ad9832_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %415

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %21, i32 120)
  store %struct.iio_dev* %22, %struct.iio_dev** %5, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %24 = icmp ne %struct.iio_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %415

28:                                               ; preds = %19
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = call i32 @spi_set_drvdata(%struct.spi_device* %29, %struct.iio_dev* %30)
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = call %struct.ad9832_state* @iio_priv(%struct.iio_dev* %32)
  store %struct.ad9832_state* %33, %struct.ad9832_state** %6, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = call i8* @devm_regulator_get(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %38 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %40 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %46 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %415

49:                                               ; preds = %28
  %50 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %51 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @regulator_enable(i8* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %415

61:                                               ; preds = %49
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = call i8* @devm_regulator_get(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %66 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %68 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %74 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %7, align 4
  br label %409

77:                                               ; preds = %61
  %78 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %79 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @regulator_enable(i8* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %86 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %409

88:                                               ; preds = %77
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 0
  %91 = call i8* @devm_clk_get(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %93 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %95 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %101 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %7, align 4
  br label %404

104:                                              ; preds = %88
  %105 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %106 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @clk_prepare_enable(i8* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %404

112:                                              ; preds = %104
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %115 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %114, i32 0, i32 5
  store %struct.spi_device* %113, %struct.spi_device** %115, align 8
  %116 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %117 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %116, i32 0, i32 14
  %118 = call i32 @mutex_init(i32* %117)
  %119 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %120 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %119, i32 0, i32 0
  %121 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %122 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32* %120, i32** %123, align 8
  %124 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %125 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %129 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 1
  store i32* @ad9832_info, i32** %131, align 8
  %132 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %133 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %134 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %136 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %135, i32 0, i32 6
  %137 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %138 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %137, i32 0, i32 13
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  store i32* %136, i32** %139, align 8
  %140 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %141 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %140, i32 0, i32 13
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 2, i32* %142, align 8
  %143 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %144 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %143, i32 0, i32 4
  %145 = call i32 @spi_message_init(i32* %144)
  %146 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %147 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %146, i32 0, i32 13
  %148 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %149 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %148, i32 0, i32 4
  %150 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %147, i32* %149)
  %151 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %152 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %151, i32 0, i32 12
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %156 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %155, i32 0, i32 11
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  store i32* %154, i32** %159, align 8
  %160 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %161 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %160, i32 0, i32 11
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32 2, i32* %164, align 8
  %165 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %166 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %165, i32 0, i32 11
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32 1, i32* %169, align 4
  %170 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %171 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %170, i32 0, i32 12
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %175 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %174, i32 0, i32 11
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  store i32* %173, i32** %178, align 8
  %179 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %180 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %179, i32 0, i32 11
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 1
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 2, i32* %183, align 8
  %184 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %185 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %184, i32 0, i32 11
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i32 1, i32* %188, align 4
  %189 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %190 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %189, i32 0, i32 12
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %194 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %193, i32 0, i32 11
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 2
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  store i32* %192, i32** %197, align 8
  %198 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %199 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %198, i32 0, i32 11
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i32 2, i32* %202, align 8
  %203 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %204 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %203, i32 0, i32 11
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 2
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store i32 1, i32* %207, align 4
  %208 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %209 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %208, i32 0, i32 12
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  %212 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %213 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %212, i32 0, i32 11
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 3
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  store i32* %211, i32** %216, align 8
  %217 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %218 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %217, i32 0, i32 11
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 3
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  store i32 2, i32* %221, align 8
  %222 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %223 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %222, i32 0, i32 10
  %224 = call i32 @spi_message_init(i32* %223)
  %225 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %226 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %225, i32 0, i32 11
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 0
  %229 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %230 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %229, i32 0, i32 10
  %231 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %228, i32* %230)
  %232 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %233 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %232, i32 0, i32 11
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i64 1
  %236 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %237 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %236, i32 0, i32 10
  %238 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %235, i32* %237)
  %239 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %240 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %239, i32 0, i32 11
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i64 2
  %243 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %244 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %243, i32 0, i32 10
  %245 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %242, i32* %244)
  %246 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %247 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %246, i32 0, i32 11
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 3
  %250 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %251 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %250, i32 0, i32 10
  %252 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %249, i32* %251)
  %253 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %254 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %253, i32 0, i32 9
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %258 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %257, i32 0, i32 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 2
  store i32* %256, i32** %261, align 8
  %262 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %263 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %262, i32 0, i32 8
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  store i32 2, i32* %266, align 8
  %267 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %268 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %267, i32 0, i32 8
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  store i32 1, i32* %271, align 4
  %272 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %273 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %272, i32 0, i32 9
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  %276 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %277 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %276, i32 0, i32 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 1
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 2
  store i32* %275, i32** %280, align 8
  %281 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %282 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %281, i32 0, i32 8
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i64 1
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  store i32 2, i32* %285, align 8
  %286 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %287 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %286, i32 0, i32 7
  %288 = call i32 @spi_message_init(i32* %287)
  %289 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %290 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %289, i32 0, i32 8
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i64 0
  %293 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %294 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %293, i32 0, i32 7
  %295 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %292, i32* %294)
  %296 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %297 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %296, i32 0, i32 8
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i64 1
  %300 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %301 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %300, i32 0, i32 7
  %302 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %299, i32* %301)
  %303 = load i32, i32* @AD9832_SLEEP, align 4
  %304 = load i32, i32* @AD9832_RESET, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @AD9832_CLR, align 4
  %307 = or i32 %305, %306
  %308 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %309 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* @AD9832_CMD_SLEEPRESCLR, align 4
  %311 = load i32, i32* @CMD_SHIFT, align 4
  %312 = shl i32 %310, %311
  %313 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %314 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %312, %315
  %317 = call i32 @cpu_to_be16(i32 %316)
  %318 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %319 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %318, i32 0, i32 6
  store i32 %317, i32* %319, align 8
  %320 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %321 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %320, i32 0, i32 5
  %322 = load %struct.spi_device*, %struct.spi_device** %321, align 8
  %323 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %324 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %323, i32 0, i32 4
  %325 = call i32 @spi_sync(%struct.spi_device* %322, i32* %324)
  store i32 %325, i32* %7, align 4
  %326 = load i32, i32* %7, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %112
  %329 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %330 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %329, i32 0, i32 0
  %331 = call i32 @dev_err(i32* %330, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %399

332:                                              ; preds = %112
  %333 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %334 = load i32, i32* @AD9832_FREQ0HM, align 4
  %335 = load %struct.ad9832_platform_data*, %struct.ad9832_platform_data** %4, align 8
  %336 = getelementptr inbounds %struct.ad9832_platform_data, %struct.ad9832_platform_data* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @ad9832_write_frequency(%struct.ad9832_state* %333, i32 %334, i32 %337)
  store i32 %338, i32* %7, align 4
  %339 = load i32, i32* %7, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %332
  br label %399

342:                                              ; preds = %332
  %343 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %344 = load i32, i32* @AD9832_FREQ1HM, align 4
  %345 = load %struct.ad9832_platform_data*, %struct.ad9832_platform_data** %4, align 8
  %346 = getelementptr inbounds %struct.ad9832_platform_data, %struct.ad9832_platform_data* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @ad9832_write_frequency(%struct.ad9832_state* %343, i32 %344, i32 %347)
  store i32 %348, i32* %7, align 4
  %349 = load i32, i32* %7, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %342
  br label %399

352:                                              ; preds = %342
  %353 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %354 = load i32, i32* @AD9832_PHASE0H, align 4
  %355 = load %struct.ad9832_platform_data*, %struct.ad9832_platform_data** %4, align 8
  %356 = getelementptr inbounds %struct.ad9832_platform_data, %struct.ad9832_platform_data* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @ad9832_write_phase(%struct.ad9832_state* %353, i32 %354, i32 %357)
  store i32 %358, i32* %7, align 4
  %359 = load i32, i32* %7, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %352
  br label %399

362:                                              ; preds = %352
  %363 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %364 = load i32, i32* @AD9832_PHASE1H, align 4
  %365 = load %struct.ad9832_platform_data*, %struct.ad9832_platform_data** %4, align 8
  %366 = getelementptr inbounds %struct.ad9832_platform_data, %struct.ad9832_platform_data* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @ad9832_write_phase(%struct.ad9832_state* %363, i32 %364, i32 %367)
  store i32 %368, i32* %7, align 4
  %369 = load i32, i32* %7, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %362
  br label %399

372:                                              ; preds = %362
  %373 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %374 = load i32, i32* @AD9832_PHASE2H, align 4
  %375 = load %struct.ad9832_platform_data*, %struct.ad9832_platform_data** %4, align 8
  %376 = getelementptr inbounds %struct.ad9832_platform_data, %struct.ad9832_platform_data* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @ad9832_write_phase(%struct.ad9832_state* %373, i32 %374, i32 %377)
  store i32 %378, i32* %7, align 4
  %379 = load i32, i32* %7, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %372
  br label %399

382:                                              ; preds = %372
  %383 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %384 = load i32, i32* @AD9832_PHASE3H, align 4
  %385 = load %struct.ad9832_platform_data*, %struct.ad9832_platform_data** %4, align 8
  %386 = getelementptr inbounds %struct.ad9832_platform_data, %struct.ad9832_platform_data* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @ad9832_write_phase(%struct.ad9832_state* %383, i32 %384, i32 %387)
  store i32 %388, i32* %7, align 4
  %389 = load i32, i32* %7, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %382
  br label %399

392:                                              ; preds = %382
  %393 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %394 = call i32 @iio_device_register(%struct.iio_dev* %393)
  store i32 %394, i32* %7, align 4
  %395 = load i32, i32* %7, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %392
  br label %399

398:                                              ; preds = %392
  store i32 0, i32* %2, align 4
  br label %415

399:                                              ; preds = %397, %391, %381, %371, %361, %351, %341, %328
  %400 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %401 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %400, i32 0, i32 3
  %402 = load i8*, i8** %401, align 8
  %403 = call i32 @clk_disable_unprepare(i8* %402)
  br label %404

404:                                              ; preds = %399, %111, %99
  %405 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %406 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %405, i32 0, i32 2
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @regulator_disable(i8* %407)
  br label %409

409:                                              ; preds = %404, %84, %72
  %410 = load %struct.ad9832_state*, %struct.ad9832_state** %6, align 8
  %411 = getelementptr inbounds %struct.ad9832_state, %struct.ad9832_state* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = call i32 @regulator_disable(i8* %412)
  %414 = load i32, i32* %7, align 4
  store i32 %414, i32* %2, align 4
  br label %415

415:                                              ; preds = %409, %398, %56, %44, %25, %13
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local %struct.ad9832_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ad9832_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @ad9832_write_frequency(%struct.ad9832_state*, i32, i32) #1

declare dso_local i32 @ad9832_write_phase(%struct.ad9832_state*, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
