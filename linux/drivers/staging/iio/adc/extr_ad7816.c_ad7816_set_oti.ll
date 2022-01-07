; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_set_oti.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_set_oti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7816_chip_info = type { i64, i64* }

@AD7816_CS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid oti channel id %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AD7816_BOUND_VALUE_MIN = common dso_local global i64 0, align 8
@AD7816_BOUND_VALUE_MAX = common dso_local global i64 0, align 8
@AD7816_BOUND_VALUE_BASE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7816_set_oti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7816_set_oti(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad7816_chip_info*, align 8
  %12 = alloca i64, align 8
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
  %18 = call %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7816_chip_info* %18, %struct.ad7816_chip_info** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtol(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %94

25:                                               ; preds = %4
  %26 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %27 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AD7816_CS_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %34 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %94

39:                                               ; preds = %25
  %40 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %41 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @AD7816_BOUND_VALUE_MIN, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @AD7816_BOUND_VALUE_MAX, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %94

55:                                               ; preds = %48
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @AD7816_BOUND_VALUE_MIN, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* @AD7816_BOUND_VALUE_BASE, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %13, align 8
  br label %73

61:                                               ; preds = %39
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @AD7816_BOUND_VALUE_BASE, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %12, align 8
  %67 = icmp sgt i64 %66, 255
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %94

71:                                               ; preds = %65
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %71, %55
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @ad7816_spi_write(%struct.ad7816_chip_info* %75, i64 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %94

83:                                               ; preds = %74
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %86 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %89 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 %84, i64* %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %83, %80, %68, %52, %31, %23
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @ad7816_spi_write(%struct.ad7816_chip_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
