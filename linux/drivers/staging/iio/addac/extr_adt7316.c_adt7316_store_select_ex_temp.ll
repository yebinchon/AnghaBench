; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_select_ex_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_select_ex_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@ADT7516_SEL_EX_TEMP = common dso_local global i32 0, align 4
@ADT7316_CONFIG1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_store_select_ex_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_select_ex_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.adt7316_chip_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %16)
  store %struct.adt7316_chip_info* %17, %struct.adt7316_chip_info** %11, align 8
  %18 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %19 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ID_FAMILY_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @ID_ADT75XX, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EPERM, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %66

28:                                               ; preds = %4
  %29 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %30 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ADT7516_SEL_EX_TEMP, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 49
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @ADT7516_SEL_EX_TEMP, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %28
  %45 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %46 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %47, align 8
  %49 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %50 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ADT7316_CONFIG1, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 %48(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i64, i64* @EIO, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %5, align 8
  br label %66

61:                                               ; preds = %44
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %64 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %61, %58, %25
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
