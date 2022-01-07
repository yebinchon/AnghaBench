; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_set_int_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_set_int_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@ADT7316_VDD_INT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ADT7316_INT_MASK2_VDD = common dso_local global i32 0, align 4
@ADT7316_INT_MASK2 = common dso_local global i32 0, align 4
@ADT7316_TEMP_AIN_INT_MASK = common dso_local global i32 0, align 4
@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT73XX = common dso_local global i32 0, align 4
@ADT7316_TEMP_INT_MASK = common dso_local global i32 0, align 4
@ADT7316_INT_MASK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_set_int_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_set_int_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.adt7316_chip_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %18 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %17)
  store %struct.adt7316_chip_info* %18, %struct.adt7316_chip_info** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtou16(i8* %19, i32 16, i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @ADT7316_VDD_INT_MASK, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %4
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %107

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ADT7316_VDD_INT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ADT7316_INT_MASK2_VDD, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %41 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %42, align 8
  %44 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %45 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ADT7316_INT_MASK2, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 %43(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @ADT7316_VDD_INT_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %57 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @ADT7316_VDD_INT_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %64 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %53, %39
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @ADT7316_TEMP_AIN_INT_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %74 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ID_FAMILY_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @ID_ADT73XX, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @ADT7316_TEMP_INT_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %14, align 4
  br label %90

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* @ADT7316_TEMP_AIN_INT_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %90, %67
  %92 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %93 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %94, align 8
  %96 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %97 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ADT7316_INT_MASK1, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 %95(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %105 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* %9, align 8
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %91, %28
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
