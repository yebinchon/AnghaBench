; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_ad_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_show_ad_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32, i32 }

@ADT7316_AD_SINGLE_CH_MODE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ADT7516_AD_SINGLE_CH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"0 - VDD\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"1 - Internal Temperature\0A\00", align 1
@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@ADT7516_SEL_AIN1_2_EX_TEMP_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"2 - AIN1\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"2 - External Temperature\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"3 - AIN2\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"N/A\0A\00", align 1
@ADT7516_SEL_AIN3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"4 - AIN3\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"5 - AIN4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adt7316_show_ad_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_show_ad_channel(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  %17 = load i32, i32* @ADT7316_AD_SINGLE_CH_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %3
  %24 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %25 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ADT7516_AD_SINGLE_CH_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %85 [
    i32 131, label %29
    i32 132, label %32
    i32 133, label %35
    i32 130, label %56
    i32 129, label %69
    i32 128, label %82
  ]

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  br label %88

32:                                               ; preds = %23
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %88

35:                                               ; preds = %23
  %36 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %37 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ID_FAMILY_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @ID_ADT75XX, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %45 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ADT7516_SEL_AIN1_2_EX_TEMP_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %4, align 4
  br label %88

53:                                               ; preds = %43, %35
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  br label %88

56:                                               ; preds = %23
  %57 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %58 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ADT7516_SEL_AIN1_2_EX_TEMP_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %88

66:                                               ; preds = %56
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  br label %88

69:                                               ; preds = %23
  %70 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %9, align 8
  %71 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ADT7516_SEL_AIN3, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %78, i32* %4, align 4
  br label %88

79:                                               ; preds = %69
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %81, i32* %4, align 4
  br label %88

82:                                               ; preds = %23
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @sprintf(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 %84, i32* %4, align 4
  br label %88

85:                                               ; preds = %23
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %82, %79, %76, %66, %63, %53, %50, %32, %29, %20
  %89 = load i32, i32* %4, align 4
  ret i32 %89
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
