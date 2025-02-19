; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adt7316_chip_info = type { i32 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adt7316_store_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_enabled(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.adt7316_chip_info*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %16 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %15)
  store %struct.adt7316_chip_info* %16, %struct.adt7316_chip_info** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 49
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %24

23:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @_adt7316_store_enabled(%struct.adt7316_chip_info* %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @EIO, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @_adt7316_store_enabled(%struct.adt7316_chip_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
