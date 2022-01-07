; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5933_state = type { i32 }

@AD5933_CTRL_MEASURE_TEMP = common dso_local global i32 0, align 4
@AD5933_STAT_TEMP_VALID = common dso_local global i32 0, align 4
@AD5933_REG_TEMP_DATA = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5933_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5933_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad5933_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad5933_state* %16, %struct.ad5933_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %60 [
    i64 129, label %18
    i64 128, label %56
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %67

25:                                               ; preds = %18
  %26 = load %struct.ad5933_state*, %struct.ad5933_state** %12, align 8
  %27 = load i32, i32* @AD5933_CTRL_MEASURE_TEMP, align 4
  %28 = call i32 @ad5933_cmd(%struct.ad5933_state* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %63

32:                                               ; preds = %25
  %33 = load %struct.ad5933_state*, %struct.ad5933_state** %12, align 8
  %34 = load i32, i32* @AD5933_STAT_TEMP_VALID, align 4
  %35 = call i32 @ad5933_wait_busy(%struct.ad5933_state* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %63

39:                                               ; preds = %32
  %40 = load %struct.ad5933_state*, %struct.ad5933_state** %12, align 8
  %41 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AD5933_REG_TEMP_DATA, align 4
  %44 = call i32 @ad5933_i2c_read(i32 %42, i32 %43, i32 2, i32* %13)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %63

48:                                               ; preds = %39
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %49)
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = call i32 @sign_extend32(i32 %52, i32 13)
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %6, align 4
  br label %67

56:                                               ; preds = %5
  %57 = load i32*, i32** %9, align 8
  store i32 1000, i32* %57, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 5, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %59, i32* %6, align 4
  br label %67

60:                                               ; preds = %5
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %67

63:                                               ; preds = %47, %38, %31
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %64)
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %60, %56, %48, %23
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.ad5933_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ad5933_cmd(%struct.ad5933_state*, i32) #1

declare dso_local i32 @ad5933_wait_busy(%struct.ad5933_state*, i32) #1

declare dso_local i32 @ad5933_i2c_read(i32, i32, i32, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
