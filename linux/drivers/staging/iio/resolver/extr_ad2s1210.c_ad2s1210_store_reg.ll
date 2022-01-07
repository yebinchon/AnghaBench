; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad2s1210_state = type { i32 }
%struct.iio_dev_attr = type { i8 }

@EINVAL = common dso_local global i32 0, align 4
@AD2S1210_MSB_IS_LOW = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad2s1210_store_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_store_reg(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ad2s1210_state*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.iio_dev_attr*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @dev_to_iio_dev(%struct.device* %14)
  %16 = call %struct.ad2s1210_state* @iio_priv(i32 %15)
  store %struct.ad2s1210_state* %16, %struct.ad2s1210_state** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %17)
  store %struct.iio_dev_attr* %18, %struct.iio_dev_attr** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtou8(i8* %19, i32 10, i8* %11)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %28 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %31 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %13, align 8
  %32 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %30, i8 zeroext %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %47

38:                                               ; preds = %26
  %39 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @AD2S1210_MSB_IS_LOW, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = trunc i32 %44 to i8
  %46 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %39, i8 zeroext %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %38, %37
  %48 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %49 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  br label %58

56:                                               ; preds = %47
  %57 = load i64, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i64 [ %55, %53 ], [ %57, %56 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.ad2s1210_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad2s1210_config_write(%struct.ad2s1210_state*, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
