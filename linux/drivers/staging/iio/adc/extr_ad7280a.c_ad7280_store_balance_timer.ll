; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_store_balance_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_store_balance_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7280_state = type { i32 }
%struct.iio_dev_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7280_store_balance_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_store_balance_timer(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %65

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  %29 = udiv i64 %28, 71500
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ugt i64 %30, 31
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %65

35:                                               ; preds = %27
  %36 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %37 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %40 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %41 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %45 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = load i64, i64* %13, align 8
  %49 = and i64 %48, 31
  %50 = shl i64 %49, 3
  %51 = call i32 @ad7280_write(%struct.ad7280_state* %39, i32 %43, i32 %47, i32 0, i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %53 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  br label %62

60:                                               ; preds = %35
  %61 = load i64, i64* %9, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i64 [ %59, %57 ], [ %61, %60 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %32, %25
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
