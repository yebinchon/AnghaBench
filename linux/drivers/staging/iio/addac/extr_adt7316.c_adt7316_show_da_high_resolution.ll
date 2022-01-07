; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_da_high_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_da_high_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i64 }

@ADT7316_DA_HIGH_RESOLUTION = common dso_local global i32 0, align 4
@ID_ADT7318 = common dso_local global i64 0, align 8
@ID_ADT7519 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"1 (10 bits)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"0 (8 bits)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adt7316_show_da_high_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_da_high_resolution(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.adt7316_chip_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %8, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %13 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %12)
  store %struct.adt7316_chip_info* %13, %struct.adt7316_chip_info** %9, align 8
  %14 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %15 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ADT7316_DA_HIGH_RESOLUTION, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %22 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ID_ADT7318, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %28 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ID_ADT7519, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %26, %20
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
