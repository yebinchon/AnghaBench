; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad7150_chip_info = type { i32**, i32**, i32**, i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @ad7150_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ad7150_chip_info*, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %18)
  store %struct.ad7150_chip_info* %19, %struct.ad7150_chip_info** %16, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %25 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %67 [
    i32 130, label %28
    i32 128, label %41
    i32 129, label %54
  ]

28:                                               ; preds = %7
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %31 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %29, i32* %40, align 4
  br label %70

41:                                               ; preds = %7
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %44 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %42, i32* %53, align 4
  br label %70

54:                                               ; preds = %7
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %57 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %55, i32* %66, align 4
  br label %70

67:                                               ; preds = %7
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %78

70:                                               ; preds = %54, %41, %28
  %71 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ad7150_write_event_params(%struct.iio_dev* %71, i64 %74, i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %70, %67
  %79 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %80 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %79, i32 0, i32 3
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7150_write_event_params(%struct.iio_dev*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
