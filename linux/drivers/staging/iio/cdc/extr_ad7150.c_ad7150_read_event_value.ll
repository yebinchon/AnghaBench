; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_read_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_read_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad7150_chip_info = type { i32**, i32**, i32** }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @ad7150_read_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_read_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ad7150_chip_info*, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %18)
  store %struct.ad7150_chip_info* %19, %struct.ad7150_chip_info** %16, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %70 [
    i32 130, label %25
    i32 128, label %40
    i32 129, label %55
  ]

25:                                               ; preds = %7
  %26 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %27 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %14, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %8, align 4
  br label %73

40:                                               ; preds = %7
  %41 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %42 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %14, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %8, align 4
  br label %73

55:                                               ; preds = %7
  %56 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %57 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %14, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %69, i32* %8, align 4
  br label %73

70:                                               ; preds = %7
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %55, %40, %25
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
