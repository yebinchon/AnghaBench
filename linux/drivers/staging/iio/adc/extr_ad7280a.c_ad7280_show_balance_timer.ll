; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_show_balance_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_show_balance_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7280_state = type { i32 }
%struct.iio_dev_attr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ad7280_show_balance_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_show_balance_timer(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.ad7280_state*, align 8
  %10 = alloca %struct.iio_dev_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %8, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %16 = call %struct.ad7280_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad7280_state* %16, %struct.ad7280_state** %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %17)
  store %struct.iio_dev_attr* %18, %struct.iio_dev_attr** %10, align 8
  %19 = load %struct.ad7280_state*, %struct.ad7280_state** %9, align 8
  %20 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ad7280_state*, %struct.ad7280_state** %9, align 8
  %23 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %10, align 8
  %24 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %10, align 8
  %28 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @ad7280_read(%struct.ad7280_state* %22, i32 %26, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ad7280_state*, %struct.ad7280_state** %9, align 8
  %33 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 3
  %42 = mul nsw i32 %41, 71500
  store i32 %42, i32* %12, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %37
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7280_read(%struct.ad7280_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
