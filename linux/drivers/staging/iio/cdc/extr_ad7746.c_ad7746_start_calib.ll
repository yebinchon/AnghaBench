; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_start_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_start_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7746_chip_info = type { i32, i32, i32 }

@AD7746_REG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64, i32)* @ad7746_start_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7746_start_calib(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iio_dev*, align 8
  %13 = alloca %struct.ad7746_chip_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %12, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %20 = call %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad7746_chip_info* %20, %struct.ad7746_chip_info** %13, align 8
  store i32 10, i32* %15, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @strtobool(i8* %21, i32* %16)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %6, align 4
  br label %82

27:                                               ; preds = %5
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %82

31:                                               ; preds = %27
  %32 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %13, align 8
  %33 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %13, align 8
  %36 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %13, align 8
  %41 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AD7746_REG_CFG, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %77

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %69, %49
  %51 = call i32 @msleep(i32 20)
  %52 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %13, align 8
  %53 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AD7746_REG_CFG, align 4
  %56 = call i32 @i2c_smbus_read_byte_data(i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %77

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %15, align 4
  %68 = icmp ne i32 %66, 0
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ false, %61 ], [ %68, %65 ]
  br i1 %70, label %50, label %71

71:                                               ; preds = %69
  %72 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %13, align 8
  %73 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* %10, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  br label %82

77:                                               ; preds = %59, %48
  %78 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %13, align 8
  %79 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %71, %30, %25
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
