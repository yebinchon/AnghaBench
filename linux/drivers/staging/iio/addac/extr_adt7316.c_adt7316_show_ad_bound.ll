; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_ad_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_ad_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev_attr = type { i64 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i64, i64*)*, i32 }

@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT73XX = common dso_local global i32 0, align 4
@ADT7316_EX_TEMP_LOW = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@ADT7516_SEL_AIN1_2_EX_TEMP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adt7316_show_ad_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_ad_bound(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev_attr*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.adt7316_chip_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %14)
  store %struct.iio_dev_attr* %15, %struct.iio_dev_attr** %8, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %16)
  store %struct.iio_dev* %17, %struct.iio_dev** %9, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %18)
  store %struct.adt7316_chip_info* %19, %struct.adt7316_chip_info** %10, align 8
  %20 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %10, align 8
  %21 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ID_FAMILY_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @ID_ADT73XX, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %29 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ADT7316_EX_TEMP_LOW, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %83

36:                                               ; preds = %27, %3
  %37 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %10, align 8
  %38 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32, i64, i64*)*, i32 (i32, i64, i64*)** %39, align 8
  %41 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %10, align 8
  %42 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %46 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 %40(i32 %44, i64 %47, i64* %11)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %83

54:                                               ; preds = %36
  %55 = load i64, i64* %11, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %10, align 8
  %58 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ID_FAMILY_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @ID_ADT75XX, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %10, align 8
  %66 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ADT7516_SEL_AIN1_2_EX_TEMP_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %64, %54
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %76, 256
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %51, %33
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
