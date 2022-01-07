; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ad7192_state = type { i32, i32**, i32, i32, i32, i32 }

@AD7192_CONF_UNIPOLAR = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7192_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7192_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7192_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7192_state* %15, %struct.ad7192_state** %12, align 8
  %16 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %17 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AD7192_CONF_UNIPOLAR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i64, i64* %11, align 8
  switch i64 %25, label %127 [
    i64 132, label %26
    i64 130, label %31
    i64 133, label %77
    i64 131, label %105
    i64 134, label %121
  ]

26:                                               ; preds = %5
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @ad_sigma_delta_single_conversion(%struct.iio_dev* %27, %struct.iio_chan_spec* %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %130

31:                                               ; preds = %5
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %74 [
    i32 128, label %35
    i32 129, label %67
  ]

35:                                               ; preds = %31
  %36 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %37 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %36, i32 0, i32 5
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %40 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %43 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @AD7192_CONF_GAIN(i32 %44)
  %46 = getelementptr inbounds i32*, i32** %41, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %52 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %55 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @AD7192_CONF_GAIN(i32 %56)
  %58 = getelementptr inbounds i32*, i32** %53, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %64 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %63, i32 0, i32 5
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %66, i32* %6, align 4
  br label %130

67:                                               ; preds = %31
  %68 = load i32*, i32** %9, align 8
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @ad7192_get_temp_scale(i32 %69)
  %71 = sdiv i32 1000000000, %70
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %73, i32* %6, align 4
  br label %130

74:                                               ; preds = %31
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %130

77:                                               ; preds = %5
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = shl i32 1, %85
  %87 = sub nsw i32 0, %86
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %91

89:                                               ; preds = %77
  %90 = load i32*, i32** %9, align 8
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %80
  %92 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %93 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 129
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @ad7192_get_temp_scale(i32 %97)
  %99 = mul nsw i32 273, %98
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %104, i32* %6, align 4
  br label %130

105:                                              ; preds = %5
  %106 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %107 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %110 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 1024
  %113 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %114 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @AD7192_MODE_RATE(i32 %115)
  %117 = mul nsw i32 %112, %116
  %118 = sdiv i32 %108, %117
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %120, i32* %6, align 4
  br label %130

121:                                              ; preds = %5
  %122 = load %struct.ad7192_state*, %struct.ad7192_state** %12, align 8
  %123 = call i32 @ad7192_get_3db_filter_freq(%struct.ad7192_state* %122)
  %124 = load i32*, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %10, align 8
  store i32 1000, i32* %125, align 4
  %126 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %126, i32* %6, align 4
  br label %130

127:                                              ; preds = %5
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %121, %105, %103, %74, %67, %35, %26
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.ad7192_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad_sigma_delta_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @AD7192_CONF_GAIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ad7192_get_temp_scale(i32) #1

declare dso_local i32 @AD7192_MODE_RATE(i32) #1

declare dso_local i32 @ad7192_get_3db_filter_freq(%struct.ad7192_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
