; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_channels_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_channels_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.iio_dev = type { i32, %struct.iio_chan_spec*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ad7192_state = type { i32 }

@ad7193_channels = common dso_local global %struct.iio_chan_spec* null, align 8
@ad7192_channels = common dso_local global %struct.iio_chan_spec* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i64 0, align 8
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad7192_channels_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_channels_config(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad7192_state*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.ad7192_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.ad7192_state* %9, %struct.ad7192_state** %4, align 8
  %10 = load %struct.ad7192_state*, %struct.ad7192_state** %4, align 8
  %11 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %20 [
    i32 128, label %13
  ]

13:                                               ; preds = %1
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** @ad7193_channels, align 8
  store %struct.iio_chan_spec* %14, %struct.iio_chan_spec** %5, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** @ad7193_channels, align 8
  %16 = call i8* @ARRAY_SIZE(%struct.iio_chan_spec* %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** @ad7192_channels, align 8
  store %struct.iio_chan_spec* %21, %struct.iio_chan_spec** %5, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** @ad7192_channels, align 8
  %23 = call i8* @ARRAY_SIZE(%struct.iio_chan_spec* %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %13
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.iio_chan_spec* @devm_kcalloc(i32 %31, i32 %34, i32 16, i32 %35)
  store %struct.iio_chan_spec* %36, %struct.iio_chan_spec** %6, align 8
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %38 = icmp ne %struct.iio_chan_spec* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %85

42:                                               ; preds = %27
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 1
  store %struct.iio_chan_spec* %43, %struct.iio_chan_spec** %45, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %81, %42
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i64 %56
  %58 = bitcast %struct.iio_chan_spec* %53 to i8*
  %59 = bitcast %struct.iio_chan_spec* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load i32, i32* @IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %67 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IIO_TEMP, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %52
  %72 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %52
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 1
  store %struct.iio_chan_spec* %80, %struct.iio_chan_spec** %6, align 8
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %46

84:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %39
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.ad7192_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @ARRAY_SIZE(%struct.iio_chan_spec*) #1

declare dso_local %struct.iio_chan_spec* @devm_kcalloc(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
