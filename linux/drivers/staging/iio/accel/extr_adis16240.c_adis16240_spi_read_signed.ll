; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/accel/extr_adis16240.c_adis16240_spi_read_signed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/accel/extr_adis16240.c_adis16240_spi_read_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adis = type { i32 }
%struct.iio_dev_attr = type { i32 }

@ADIS16240_ERROR_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i32)* @adis16240_spi_read_signed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16240_spi_read_signed(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.adis*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iio_dev_attr*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %16)
  store %struct.iio_dev* %17, %struct.iio_dev** %10, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %19 = call %struct.adis* @iio_priv(%struct.iio_dev* %18)
  store %struct.adis* %19, %struct.adis** %11, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub i32 16, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %22)
  store %struct.iio_dev_attr* %23, %struct.iio_dev_attr** %15, align 8
  %24 = load %struct.adis*, %struct.adis** %11, align 8
  %25 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %15, align 8
  %26 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @adis_read_reg_16(%struct.adis* %24, i32 %27, i32* %13)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ADIS16240_ERROR_ACTIVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.adis*, %struct.adis** %11, align 8
  %40 = call i32 @adis_check_status(%struct.adis* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %31
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adis* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @adis_read_reg_16(%struct.adis*, i32, i32*) #1

declare dso_local i32 @adis_check_status(%struct.adis*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
