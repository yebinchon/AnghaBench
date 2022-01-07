; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_DAC_internal_Vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_DAC_internal_Vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ADT7516_DAC_IN_VREF_MASK = common dso_local global i32 0, align 4
@ADT7516_DAC_AB_IN_VREF = common dso_local global i32 0, align 4
@ADT7516_DAC_CD_IN_VREF = common dso_local global i32 0, align 4
@ADT7316_DAC_IN_VREF = common dso_local global i32 0, align 4
@ADT7316_LDAC_CONFIG = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_store_DAC_internal_Vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_DAC_internal_Vref(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %22 = load i32, i32* @ID_FAMILY_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ID_ADT75XX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtou8(i8* %27, i32 16, i32* %13)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %26
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %106

37:                                               ; preds = %31
  %38 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %39 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ADT7516_DAC_IN_VREF_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* @ADT7516_DAC_AB_IN_VREF, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %47, %37
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @ADT7516_DAC_CD_IN_VREF, align 4
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %84

60:                                               ; preds = %4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @kstrtou8(i8* %61, i32 16, i32* %13)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, i64* @EINVAL, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %5, align 8
  br label %106

68:                                               ; preds = %60
  %69 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %70 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ADT7316_DAC_IN_VREF, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %79 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ADT7316_DAC_IN_VREF, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %77, %68
  br label %84

84:                                               ; preds = %83, %59
  %85 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %86 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %87, align 8
  %89 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %90 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ADT7316_LDAC_CONFIG, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 %88(i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %84
  %99 = load i64, i64* @EIO, align 8
  %100 = sub i64 0, %99
  store i64 %100, i64* %5, align 8
  br label %106

101:                                              ; preds = %84
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %104 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %101, %98, %65, %34
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
