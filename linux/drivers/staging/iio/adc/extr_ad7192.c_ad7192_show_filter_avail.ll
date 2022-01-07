; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_show_filter_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_show_filter_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7192_state = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d.%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @ad7192_show_filter_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ad7192_show_filter_avail(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.ad7192_state*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7192_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7192_state* %15, %struct.ad7192_state** %8, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.ad7192_state*, %struct.ad7192_state** %8, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %18 = call i32 @ad7192_get_available_filter_freq(%struct.ad7192_state* %16, i32* %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %44, %3
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub i64 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = udiv i32 %34, 1000
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = urem i32 %39, 1000
  %41 = call i64 @scnprintf(i8* %27, i64 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 10, i8* %51, align 1
  %52 = load i64, i64* %11, align 8
  ret i64 %52
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7192_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad7192_get_available_filter_freq(%struct.ad7192_state*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
