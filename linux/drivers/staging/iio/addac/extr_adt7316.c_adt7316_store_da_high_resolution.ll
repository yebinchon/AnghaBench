; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_da_high_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_da_high_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@ID_ADT7318 = common dso_local global i64 0, align 8
@ID_ADT7519 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ADT7316_DA_HIGH_RESOLUTION = common dso_local global i32 0, align 4
@ADT7316_CONFIG3 = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_store_da_high_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_da_high_resolution(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ID_ADT7318, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %25 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ID_ADT7519, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %4
  %30 = load i64, i64* @EPERM, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %70

32:                                               ; preds = %23
  %33 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %34 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ADT7316_DA_HIGH_RESOLUTION, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 49
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @ADT7316_DA_HIGH_RESOLUTION, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %44, %32
  %49 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %50 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %51, align 8
  %53 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %54 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ADT7316_CONFIG3, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 %52(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i64, i64* @EIO, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %70

65:                                               ; preds = %48
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %68 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %65, %62, %29
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
