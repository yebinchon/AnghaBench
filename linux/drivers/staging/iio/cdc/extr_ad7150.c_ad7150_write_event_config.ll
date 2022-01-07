; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.ad7150_chip_info = type { i64, i32, i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD7150_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @ad7150_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ad7150_chip_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad7150_chip_info* %20, %struct.ad7150_chip_info** %16, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %122

30:                                               ; preds = %5
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @IIO_UNMOD_EVENT_CODE(i32 %33, i32 %36, i32 %37, i32 %38)
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %18, align 8
  %41 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %42 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %122

46:                                               ; preds = %30
  %47 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %48 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %51 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AD7150_CFG, align 4
  %54 = call i32 @i2c_smbus_read_byte_data(i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %117

58:                                               ; preds = %46
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @BIT(i32 7)
  %61 = or i32 96, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %59, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  switch i32 %64, label %83 [
    i32 130, label %65
    i32 128, label %71
    i32 129, label %77
  ]

65:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %12, align 4
  br label %70

69:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %86

71:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 3, i32* %12, align 4
  br label %76

75:                                               ; preds = %71
  store i32 2, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %86

77:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 1, i32* %12, align 4
  br label %82

81:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %86

83:                                               ; preds = %58
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  br label %117

86:                                               ; preds = %82, %76, %70
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = shl i32 %90, 7
  %92 = load i32, i32* %12, align 4
  %93 = shl i32 %92, 5
  %94 = or i32 %91, %93
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %98 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AD7150_CFG, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @i2c_smbus_write_byte_data(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  br label %117

106:                                              ; preds = %86
  %107 = load i64, i64* %18, align 8
  %108 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %109 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %111 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %112 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @ad7150_write_event_params(%struct.iio_dev* %110, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %106, %105, %83, %57
  %118 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %16, align 8
  %119 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %117, %45, %27
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @ad7150_write_event_params(%struct.iio_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
