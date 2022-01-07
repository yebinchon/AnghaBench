; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_show_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_show_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7816_chip_info = type { i64 }

@EIO = common dso_local global i32 0, align 4
@AD7816_VALUE_OFFSET = common dso_local global i32 0, align 4
@AD7816_TEMP_FLOAT_OFFSET = common dso_local global i32 0, align 4
@AD7816_TEMP_FLOAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%.2d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ad7816_show_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7816_show_value(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.ad7816_chip_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %8, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %16 = call %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad7816_chip_info* %16, %struct.ad7816_chip_info** %9, align 8
  %17 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %18 = call i32 @ad7816_spi_read(%struct.ad7816_chip_info* %17, i32* %10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %59

24:                                               ; preds = %3
  %25 = load i32, i32* @AD7816_VALUE_OFFSET, align 4
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %9, align 8
  %29 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @AD7816_TEMP_FLOAT_OFFSET, align 4
  %35 = ashr i32 %33, %34
  %36 = sub nsw i32 %35, 103
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* @AD7816_TEMP_FLOAT_MASK, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i64, i64* %11, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @AD7816_TEMP_FLOAT_OFFSET, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %32
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %52, 25
  %54 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %24
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %48, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7816_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad7816_spi_read(%struct.ad7816_chip_info*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
