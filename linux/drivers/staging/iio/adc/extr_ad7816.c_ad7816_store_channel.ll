; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_store_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_store_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7816_chip_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AD7816_CS_MAX = common dso_local global i64 0, align 8
@AD7816_CS_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid channel id %lu for %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ad7818\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid channel id %lu for ad7818.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ad7816\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid channel id %lu for ad7816.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7816_store_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7816_store_channel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad7816_chip_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = call %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad7816_chip_info* %17, %struct.ad7816_chip_info** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %88

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @AD7816_CS_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @AD7816_CS_MASK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %34 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %88

44:                                               ; preds = %28, %24
  %45 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i64, i64* %12, align 8
  %52 = icmp ugt i64 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %55 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %12, align 8
  %59 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %88

62:                                               ; preds = %50, %44
  %63 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strcmp(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i64, i64* %12, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %73 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %12, align 8
  %77 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %88

80:                                               ; preds = %68, %62
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %11, align 8
  %85 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %71, %53, %32, %22
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
