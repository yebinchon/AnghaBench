; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_set_ad_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_set_ad_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev_attr = type { i64 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i64, i64)*, i32 }

@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT73XX = common dso_local global i32 0, align 4
@ADT7316_EX_TEMP_LOW = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ID_ADT75XX = common dso_local global i32 0, align 4
@ADT7516_SEL_AIN1_2_EX_TEMP_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_set_ad_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_set_ad_bound(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev_attr*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.adt7316_chip_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %16)
  store %struct.iio_dev_attr* %17, %struct.iio_dev_attr** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %18)
  store %struct.iio_dev* %19, %struct.iio_dev** %11, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %21 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %20)
  store %struct.adt7316_chip_info* %21, %struct.adt7316_chip_info** %12, align 8
  %22 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %12, align 8
  %23 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ID_FAMILY_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @ID_ADT73XX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %10, align 8
  %31 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ADT7316_EX_TEMP_LOW, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* @EPERM, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %110

38:                                               ; preds = %29, %4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @kstrtoint(i8* %39, i32 10, i32* %13)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %110

46:                                               ; preds = %38
  %47 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %12, align 8
  %48 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ID_FAMILY_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ID_ADT75XX, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %46
  %55 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %12, align 8
  %56 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ADT7516_SEL_AIN1_2_EX_TEMP_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 255
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61
  %68 = load i64, i64* @EINVAL, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %110

70:                                               ; preds = %64
  br label %87

71:                                               ; preds = %54, %46
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 127
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, -128
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %71
  %78 = load i64, i64* @EINVAL, align 8
  %79 = sub i64 0, %78
  store i64 %79, i64* %5, align 8
  br label %110

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 256
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %14, align 8
  %90 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %12, align 8
  %91 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %92, align 8
  %94 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %12, align 8
  %95 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %10, align 8
  %99 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i32 %93(i32 %97, i64 %100, i64 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %87
  %106 = load i64, i64* @EIO, align 8
  %107 = sub i64 0, %106
  store i64 %107, i64* %5, align 8
  br label %110

108:                                              ; preds = %87
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %108, %105, %77, %67, %43, %35
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
