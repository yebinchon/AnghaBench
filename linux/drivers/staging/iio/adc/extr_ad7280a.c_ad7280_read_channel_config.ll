; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_channel_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_read_channel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7280_state = type { i32, i32, i32, i32 }
%struct.iio_dev_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ad7280_read_channel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_read_channel_config(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.ad7280_state*, align 8
  %10 = alloca %struct.iio_dev_attr*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %8, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %15 = call %struct.ad7280_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7280_state* %15, %struct.ad7280_state** %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %16)
  store %struct.iio_dev_attr* %17, %struct.iio_dev_attr** %10, align 8
  %18 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %10, align 8
  %19 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %47 [
    i32 129, label %21
    i32 128, label %28
    i32 131, label %35
    i32 130, label %41
  ]

21:                                               ; preds = %3
  %22 = load %struct.ad7280_state*, %struct.ad7280_state** %9, align 8
  %23 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1568
  %26 = sdiv i32 %25, 100
  %27 = add nsw i32 1000, %26
  store i32 %27, i32* %11, align 4
  br label %50

28:                                               ; preds = %3
  %29 = load %struct.ad7280_state*, %struct.ad7280_state** %9, align 8
  %30 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 1568
  %33 = sdiv i32 %32, 100
  %34 = add nsw i32 1000, %33
  store i32 %34, i32* %11, align 4
  br label %50

35:                                               ; preds = %3
  %36 = load %struct.ad7280_state*, %struct.ad7280_state** %9, align 8
  %37 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 196
  %40 = sdiv i32 %39, 10
  store i32 %40, i32* %11, align 4
  br label %50

41:                                               ; preds = %3
  %42 = load %struct.ad7280_state*, %struct.ad7280_state** %9, align 8
  %43 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 196
  %46 = sdiv i32 %45, 10
  store i32 %46, i32* %11, align 4
  br label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %41, %35, %28, %21
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
