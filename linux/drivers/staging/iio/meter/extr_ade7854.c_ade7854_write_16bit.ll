; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854.c_ade7854_write_16bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854.c_ade7854_write_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev_attr = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ade7854_state = type { i32 (%struct.device*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ade7854_write_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_write_16bit(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_dev_attr*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ade7854_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %14)
  store %struct.iio_dev_attr* %15, %struct.iio_dev_attr** %9, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %16)
  store %struct.iio_dev* %17, %struct.iio_dev** %10, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %19 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.ade7854_state* %19, %struct.ade7854_state** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @kstrtou16(i8* %20, i32 10, i32* %13)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %35

25:                                               ; preds = %4
  %26 = load %struct.ade7854_state*, %struct.ade7854_state** %11, align 8
  %27 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %26, i32 0, i32 0
  %28 = load i32 (%struct.device*, i32, i32, i32)*, i32 (%struct.device*, i32, i32, i32)** %27, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %9, align 8
  %31 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 %28(%struct.device* %29, i32 %32, i32 %33, i32 16)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %25, %24
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  br label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i64 [ %40, %38 ], [ %42, %41 ]
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
