; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.ad7150_chip_info = type { %struct.i2c_client*, i32 }
%struct.iio_dev = type { %struct.TYPE_6__, i32, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@ENOMEM = common dso_local global i32 0, align 4
@ad7150_channels = common dso_local global i32 0, align 4
@ad7150_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7150_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ad7150_irq1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ad7150_irq2\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s capacitive sensor registered,irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad7150_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad7150_chip_info*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %8, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %18)
  store %struct.ad7150_chip_info* %19, %struct.ad7150_chip_info** %7, align 8
  %20 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %21 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %20, i32 0, i32 1
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.iio_dev* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %28 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %27, i32 0, i32 0
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ad7150_channels, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ad7150_channels, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  store i32* @ad7150_info, i32** %47, align 8
  %48 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %17
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %62 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IRQF_ONESHOT, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %67 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %57, i32 %60, i32* null, i32* @ad7150_event_handler, i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.iio_dev* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %121

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %17
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 1
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %89 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IRQF_ONESHOT, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %94 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %81, i32 %87, i32* null, i32* @ad7150_event_handler, i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.iio_dev* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %121

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %73
  %101 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %106 = call i32 @devm_iio_device_register(%struct.TYPE_7__* %104, %struct.iio_dev* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %121

111:                                              ; preds = %100
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %115 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_info(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %111, %109, %97, %70, %14
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32*, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_7__*, %struct.iio_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
