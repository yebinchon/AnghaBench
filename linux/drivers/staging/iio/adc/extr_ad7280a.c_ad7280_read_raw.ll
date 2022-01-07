; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad7280_state = type { i32, i32 }

@AD7280A_ALL_CELLS = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@AD7280A_CELL_VOLTAGE_6 = common dso_local global i32 0, align 4
@AD7280A_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7280_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7280_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7280_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7280_state* %15, %struct.ad7280_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %70 [
    i64 129, label %17
    i64 128, label %55
  ]

17:                                               ; preds = %5
  %18 = load %struct.ad7280_state*, %struct.ad7280_state** %12, align 8
  %19 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AD7280A_ALL_CELLS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.ad7280_state*, %struct.ad7280_state** %12, align 8
  %28 = load %struct.ad7280_state*, %struct.ad7280_state** %12, align 8
  %29 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ad7280_read_all_channels(%struct.ad7280_state* %27, i32 %30, i32* null)
  store i32 %31, i32* %13, align 4
  br label %43

32:                                               ; preds = %17
  %33 = load %struct.ad7280_state*, %struct.ad7280_state** %12, align 8
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = call i32 @ad7280_read_channel(%struct.ad7280_state* %33, i32 %37, i32 %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %32, %26
  %44 = load %struct.ad7280_state*, %struct.ad7280_state** %12, align 8
  %45 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %73

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %6, align 4
  br label %73

55:                                               ; preds = %5
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 255
  %60 = load i32, i32* @AD7280A_CELL_VOLTAGE_6, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** %9, align 8
  store i32 4000, i32* %63, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32*, i32** %9, align 8
  store i32 5000, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* @AD7280A_BITS, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %69, i32* %6, align 4
  br label %73

70:                                               ; preds = %5
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %66, %51, %49
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7280_read_all_channels(%struct.ad7280_state*, i32, i32*) #1

declare dso_local i32 @ad7280_read_channel(%struct.ad7280_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
