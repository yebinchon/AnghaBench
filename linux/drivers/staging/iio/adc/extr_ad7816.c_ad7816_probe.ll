; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64 }
%struct.ad7816_chip_info = type { i32*, i64, i8*, i8*, i8*, %struct.spi_device* }
%struct.iio_dev = type { i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AD7816_CS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rdwr\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to request rdwr GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"convert\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to request convert GPIO: %d\0A\00", align 1
@ID_AD7816 = common dso_local global i64 0, align 8
@ID_AD7817 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to request busy GPIO: %d\0A\00", align 1
@ad7816_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7816_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"%s temperature sensor and ADC registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7816_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7816_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7816_chip_info*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 48)
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %181

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7816_chip_info* %18, %struct.ad7816_chip_info** %4, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = call i32 @dev_set_drvdata(i32* %20, %struct.iio_dev* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %25 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %24, i32 0, i32 5
  store %struct.spi_device* %23, %struct.spi_device** %25, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %37, %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AD7816_CS_MAX, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %32 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 203, i32* %36, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %46 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %50 = call i8* @devm_gpiod_get(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %52 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %54 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %40
  %59 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %60 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %181

68:                                               ; preds = %40
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %72 = call i8* @devm_gpiod_get(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %74 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %76 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %68
  %81 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %82 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %86 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %181

90:                                               ; preds = %68
  %91 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %92 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ID_AD7816, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %98 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ID_AD7817, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %96, %90
  %103 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %104 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %103, i32 0, i32 0
  %105 = load i32, i32* @GPIOD_IN, align 4
  %106 = call i8* @devm_gpiod_get(i32* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %108 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %110 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %102
  %115 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %116 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %7, align 4
  %119 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %120 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %119, i32 0, i32 0
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %181

124:                                              ; preds = %102
  br label %125

125:                                              ; preds = %124, %96
  %126 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %127 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %133 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %132, i32 0, i32 0
  %134 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %135 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32* %133, i32** %136, align 8
  %137 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %138 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %137, i32 0, i32 2
  store i32* @ad7816_info, i32** %138, align 8
  %139 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %140 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %141 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %143 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %125
  %147 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %148 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %147, i32 0, i32 0
  %149 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %150 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %153 = load i32, i32* @IRQF_ONESHOT, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %156 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %159 = call i32 @devm_request_threaded_irq(i32* %148, i64 %151, i32* null, i32* @ad7816_event_handler, i32 %154, i32 %157, %struct.iio_dev* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %146
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %181

164:                                              ; preds = %146
  br label %165

165:                                              ; preds = %164, %125
  %166 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %167 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %166, i32 0, i32 0
  %168 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %169 = call i32 @devm_iio_device_register(i32* %167, %struct.iio_dev* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %181

174:                                              ; preds = %165
  %175 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %176 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %175, i32 0, i32 0
  %177 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %178 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dev_info(i32* %176, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %174, %172, %162, %114, %80, %58, %13
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32*, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
