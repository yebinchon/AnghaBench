; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_write_channel_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_write_channel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7280_state = type { i64, i64, i64, i64, i32 }
%struct.iio_dev_attr = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@AD7280A_DEVADDR_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7280_write_channel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_write_channel_config(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad7280_state*, align 8
  %12 = alloca %struct.iio_dev_attr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %18 = call %struct.ad7280_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7280_state* %18, %struct.ad7280_state** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %19)
  store %struct.iio_dev_attr* %20, %struct.iio_dev_attr** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtol(i8* %21, i32 10, i64* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %89

27:                                               ; preds = %4
  %28 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %29 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %40 [
    i32 129, label %31
    i32 128, label %31
    i32 131, label %36
    i32 130, label %36
  ]

31:                                               ; preds = %27, %27
  %32 = load i64, i64* %13, align 8
  %33 = sub nsw i64 %32, 1000
  %34 = mul nsw i64 %33, 100
  %35 = sdiv i64 %34, 1568
  store i64 %35, i64* %13, align 8
  br label %43

36:                                               ; preds = %27, %27
  %37 = load i64, i64* %13, align 8
  %38 = mul nsw i64 %37, 10
  %39 = sdiv i64 %38, 196
  store i64 %39, i64* %13, align 8
  br label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %89

43:                                               ; preds = %36, %31
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @clamp(i64 %44, i64 0, i32 255)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %47 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %46, i32 0, i32 4
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %50 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %68 [
    i32 129, label %52
    i32 128, label %56
    i32 131, label %60
    i32 130, label %64
  ]

52:                                               ; preds = %43
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %55 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %68

56:                                               ; preds = %43
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %59 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %68

60:                                               ; preds = %43
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %63 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  br label %68

64:                                               ; preds = %43
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %67 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %43, %64, %60, %56, %52
  %69 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %70 = load i32, i32* @AD7280A_DEVADDR_MASTER, align 4
  %71 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %72 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @ad7280_write(%struct.ad7280_state* %69, i32 %70, i32 %73, i32 1, i64 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %77 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %76, i32 0, i32 4
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  br label %86

84:                                               ; preds = %68
  %85 = load i64, i64* %9, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i64 [ %83, %81 ], [ %85, %84 ]
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %40, %25
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp(i64, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
