; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_show_oti.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_show_oti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7816_chip_info = type { i64, i32* }

@AD7816_CS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid oti channel id %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AD7816_BOUND_VALUE_MIN = common dso_local global i32 0, align 4
@AD7816_BOUND_VALUE_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ad7816_show_oti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7816_show_oti(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.ad7816_chip_info*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = call %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev* %13)
  store %struct.ad7816_chip_info* %14, %struct.ad7816_chip_info** %9, align 8
  %15 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %16 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AD7816_CS_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %23 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %30 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32, i32* @AD7816_BOUND_VALUE_MIN, align 4
  %35 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %36 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %39 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AD7816_BOUND_VALUE_BASE, align 4
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %34, %44
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %4, align 4
  br label %61

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %53 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %56 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %50, %33, %20
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
