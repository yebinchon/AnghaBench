; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7150_chip_info = type { i32, i32 }

@AD7150_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@AD7150_STATUS_OUT1 = common dso_local global i32 0, align 4
@IIO_CAPACITANCE = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@AD7150_STATUS_OUT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad7150_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad7150_chip_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %13)
  store %struct.ad7150_chip_info* %14, %struct.ad7150_chip_info** %7, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call i32 @iio_get_time_ns(%struct.iio_dev* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %18 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AD7150_STATUS, align 4
  %21 = call i32 @i2c_smbus_read_byte_data(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %114

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AD7150_STATUS_OUT1, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %34 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AD7150_STATUS_OUT1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = load i32, i32* @IIO_CAPACITANCE, align 4
  %42 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %43 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %44 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %41, i32 0, i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @iio_push_event(%struct.iio_dev* %40, i32 %44, i32 %45)
  br label %68

47:                                               ; preds = %32, %26
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @AD7150_STATUS_OUT1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %54 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AD7150_STATUS_OUT1, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = load i32, i32* @IIO_CAPACITANCE, align 4
  %62 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %63 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %64 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %61, i32 0, i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @iio_push_event(%struct.iio_dev* %60, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %52, %47
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @AD7150_STATUS_OUT2, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %75 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AD7150_STATUS_OUT2, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %73
  %81 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %82 = load i32, i32* @IIO_CAPACITANCE, align 4
  %83 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %84 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %85 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %82, i32 1, i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @iio_push_event(%struct.iio_dev* %81, i32 %85, i32 %86)
  br label %109

88:                                               ; preds = %73, %68
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @AD7150_STATUS_OUT2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %88
  %94 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %95 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AD7150_STATUS_OUT2, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %102 = load i32, i32* @IIO_CAPACITANCE, align 4
  %103 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %104 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %105 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %102, i32 1, i32 %103, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @iio_push_event(%struct.iio_dev* %101, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %93, %88
  br label %109

109:                                              ; preds = %108, %80
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %7, align 8
  %112 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %24
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
