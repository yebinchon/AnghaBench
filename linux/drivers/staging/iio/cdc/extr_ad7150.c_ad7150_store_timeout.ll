; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_store_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_store_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7150_chip_info = type { i32, i8***, i8*** }
%struct.iio_dev_attr = type { i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7150_store_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_store_timeout(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad7150_chip_info*, align 8
  %12 = alloca %struct.iio_dev_attr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %19)
  store %struct.iio_dev* %20, %struct.iio_dev** %10, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %22 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %21)
  store %struct.ad7150_chip_info* %22, %struct.ad7150_chip_info** %11, align 8
  %23 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %24 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %23)
  store %struct.iio_dev_attr* %24, %struct.iio_dev_attr** %12, align 8
  %25 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %26 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IIO_EVENT_CODE_EXTRACT_CHAN(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %30 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IIO_EVENT_CODE_EXTRACT_TYPE(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %34 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IIO_EVENT_CODE_EXTRACT_DIR(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %16, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @kstrtou8(i8* %41, i32 10, i8** %17)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %5, align 4
  br label %96

47:                                               ; preds = %4
  %48 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %11, align 8
  %49 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* %15, align 4
  switch i32 %51, label %76 [
    i32 129, label %52
    i32 128, label %64
  ]

52:                                               ; preds = %47
  %53 = load i8*, i8** %17, align 8
  %54 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %11, align 8
  %55 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %54, i32 0, i32 2
  %56 = load i8***, i8**** %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8**, i8*** %56, i64 %58
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %53, i8** %63, align 8
  br label %79

64:                                               ; preds = %47
  %65 = load i8*, i8** %17, align 8
  %66 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %11, align 8
  %67 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %66, i32 0, i32 1
  %68 = load i8***, i8**** %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8**, i8*** %68, i64 %70
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* %65, i8** %75, align 8
  br label %79

76:                                               ; preds = %47
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %18, align 4
  br label %85

79:                                               ; preds = %64, %52
  %80 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @ad7150_write_event_params(%struct.iio_dev* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %11, align 8
  %87 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %5, align 4
  br label %96

93:                                               ; preds = %85
  %94 = load i64, i64* %9, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %91, %45
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_CHAN(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_TYPE(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_DIR(i32) #1

declare dso_local i32 @kstrtou8(i8*, i32, i8**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7150_write_event_params(%struct.iio_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
