; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/accel/extr_adis16240.c_adis16240_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/accel/extr_adis16240.c_adis16240_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.adis = type { i32 }

@ADIS16240_ERROR_ACTIVE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@adis16240_addresses = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16240_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16240_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
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
  switch i64 %18, label %103 [
    i64 131, label %19
    i64 130, label %25
    i64 132, label %53
    i64 134, label %58
    i64 135, label %61
    i64 133, label %82
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = load i32, i32* @ADIS16240_ERROR_ACTIVE, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @adis_single_conversion(%struct.iio_dev* %20, %struct.iio_chan_spec* %21, i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %106

25:                                               ; preds = %5
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %50 [
    i32 128, label %29
    i32 129, label %41
    i32 136, label %45
  ]

29:                                               ; preds = %25
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  store i32 4, i32* %35, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 880000, i32* %36, align 4
  %37 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %37, i32* %6, align 4
  br label %106

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %106

41:                                               ; preds = %25
  %42 = load i32*, i32** %9, align 8
  store i32 244, i32* %42, align 4
  %43 = load i32*, i32** %10, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %44, i32* %6, align 4
  br label %106

45:                                               ; preds = %25
  %46 = load i32*, i32** %9, align 8
  store i32 0, i32* %46, align 4
  %47 = call i32 @IIO_G_TO_M_S_2(i32 51400)
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %49, i32* %6, align 4
  br label %106

50:                                               ; preds = %25
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %106

53:                                               ; preds = %5
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  %55 = call i32 @IIO_G_TO_M_S_2(i32 51400)
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %57, i32* %6, align 4
  br label %106

58:                                               ; preds = %5
  %59 = load i32*, i32** %9, align 8
  store i32 -205, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %6, align 4
  br label %106

61:                                               ; preds = %5
  %62 = load i32**, i32*** @adis16240_addresses, align 8
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32*, i32** %62, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  %70 = load %struct.adis*, %struct.adis** %12, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @adis_read_reg_16(%struct.adis* %70, i32 %71, i32* %15)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %106

77:                                               ; preds = %61
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @sign_extend32(i32 %78, i32 9)
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %81, i32* %6, align 4
  br label %106

82:                                               ; preds = %5
  %83 = load i32**, i32*** @adis16240_addresses, align 8
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32*, i32** %83, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %14, align 4
  %91 = load %struct.adis*, %struct.adis** %12, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @adis_read_reg_16(%struct.adis* %91, i32 %92, i32* %15)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %106

98:                                               ; preds = %82
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @sign_extend32(i32 %99, i32 9)
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %102, i32* %6, align 4
  br label %106

103:                                              ; preds = %5
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %103, %98, %96, %77, %75, %58, %53, %50, %45, %41, %38, %34, %19
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.adis* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @IIO_G_TO_M_S_2(i32) #1

declare dso_local i32 @adis_read_reg_16(%struct.adis*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
