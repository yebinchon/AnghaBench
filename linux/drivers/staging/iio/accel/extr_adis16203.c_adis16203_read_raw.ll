; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/accel/extr_adis16203.c_adis16203_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/accel/extr_adis16203.c_adis16203_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.adis = type { i32 }

@ADIS16203_ERROR_ACTIVE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@adis16203_addresses = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16203_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16203_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.adis* @iio_priv(%struct.iio_dev* %16)
  store %struct.adis* %17, %struct.adis** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %75 [
    i64 132, label %19
    i64 131, label %25
    i64 133, label %53
    i64 134, label %56
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = load i32, i32* @ADIS16203_ERROR_ACTIVE, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @adis_single_conversion(%struct.iio_dev* %20, %struct.iio_chan_spec* %21, i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %78

25:                                               ; preds = %5
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %50 [
    i32 128, label %29
    i32 129, label %42
    i32 130, label %46
  ]

29:                                               ; preds = %25
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  store i32 1, i32* %35, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 220000, i32* %36, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32*, i32** %9, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 610000, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %41, i32* %6, align 4
  br label %78

42:                                               ; preds = %25
  %43 = load i32*, i32** %9, align 8
  store i32 -470, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %45, i32* %6, align 4
  br label %78

46:                                               ; preds = %25
  %47 = load i32*, i32** %9, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 25000, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %49, i32* %6, align 4
  br label %78

50:                                               ; preds = %25
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %78

53:                                               ; preds = %5
  %54 = load i32*, i32** %9, align 8
  store i32 -1331, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %6, align 4
  br label %78

56:                                               ; preds = %5
  %57 = load i32*, i32** @adis16203_addresses, align 8
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.adis*, %struct.adis** %12, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @adis_read_reg_16(%struct.adis* %63, i32 %64, i32* %15)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %78

70:                                               ; preds = %56
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @sign_extend32(i32 %71, i32 13)
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %74, i32* %6, align 4
  br label %78

75:                                               ; preds = %5
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %70, %68, %53, %50, %46, %42, %40, %19
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.adis* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @adis_read_reg_16(%struct.adis*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
