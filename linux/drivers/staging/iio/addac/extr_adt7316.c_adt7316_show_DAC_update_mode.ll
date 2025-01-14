; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_DAC_update_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_DAC_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32 }

@ADT7316_DA_EN_VIA_DAC_LDAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"manual\0A\00", align 1
@ADT7316_DA_EN_MODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"0 - auto at any MSB DAC writing\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"1 - auto at MSB DAC AB and CD writing\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"2 - auto at MSB DAC ABCD writing\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"3 - manual\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adt7316_show_DAC_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_DAC_update_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ADT7316_DA_EN_VIA_DAC_LDAC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %3
  %24 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %25 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ADT7316_DA_EN_MODE_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %38 [
    i32 128, label %29
    i32 129, label %32
    i32 130, label %35
  ]

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %23
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %23
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %29, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
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
