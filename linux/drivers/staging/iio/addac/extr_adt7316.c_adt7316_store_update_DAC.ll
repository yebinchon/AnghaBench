; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_update_DAC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_update_DAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@ADT7316_DA_EN_VIA_DAC_LDAC = common dso_local global i32 0, align 4
@ADT7316_DA_EN_MODE_MASK = common dso_local global i32 0, align 4
@ADT7316_DA_EN_MODE_LDAC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@ADT7316_LDAC_EN_DA_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ADT7316_LDAC_CONFIG = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_store_update_DAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_update_DAC(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %19 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %20 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ADT7316_DA_EN_VIA_DAC_LDAC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %4
  %26 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %27 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ADT7316_DA_EN_MODE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @ADT7316_DA_EN_MODE_LDAC, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i64, i64* @EPERM, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %86

36:                                               ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @kstrtou8(i8* %37, i32 16, i32* %13)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @ADT7316_LDAC_EN_DA_MASK, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %36
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %86

48:                                               ; preds = %41
  %49 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %50 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ADT7316_LDAC_EN_DA_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %59 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %60, align 8
  %62 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %63 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ADT7316_LDAC_CONFIG, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 %61(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %48
  %72 = load i64, i64* @EIO, align 8
  %73 = sub i64 0, %72
  store i64 %73, i64* %5, align 8
  br label %86

74:                                               ; preds = %48
  br label %84

75:                                               ; preds = %4
  %76 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %77 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gpiod_set_value(i32 %78, i32 0)
  %80 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %81 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @gpiod_set_value(i32 %82, i32 1)
  br label %84

84:                                               ; preds = %75, %74
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %84, %71, %45, %33
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
