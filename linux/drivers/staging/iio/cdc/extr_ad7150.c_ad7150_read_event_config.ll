; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_read_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_read_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad7150_chip_info = type { i32 }

@AD7150_CFG = common dso_local global i32 0, align 4
@AD7150_THRESHTYPE_MSK = common dso_local global i32 0, align 4
@AD7150_CFG_FIX = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @ad7150_read_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_read_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ad7150_chip_info*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7150_chip_info* %15, %struct.ad7150_chip_info** %13, align 8
  %16 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %13, align 8
  %17 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AD7150_CFG, align 4
  %20 = call i32 @i2c_smbus_read_byte_data(i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %103

25:                                               ; preds = %4
  %26 = load i32, i32* @AD7150_THRESHTYPE_MSK, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @FIELD_GET(i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @AD7150_CFG_FIX, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @FIELD_GET(i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %99 [
    i32 130, label %33
    i32 128, label %55
    i32 129, label %77
  ]

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 1
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ false, %37 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %103

46:                                               ; preds = %33
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ false, %46 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %103

55:                                               ; preds = %25
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 3
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ false, %59 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %103

68:                                               ; preds = %55
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 2
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ false, %68 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %103

77:                                               ; preds = %25
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ false, %81 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %5, align 4
  br label %103

90:                                               ; preds = %77
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 0
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ false, %90 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %5, align 4
  br label %103

99:                                               ; preds = %25
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %96, %87, %74, %65, %52, %43, %23
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
