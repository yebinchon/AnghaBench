; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1390.c_ds1390_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1390.c_ds1390_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ds1390 = type { i32 }

@SPI_MODE_3 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DS1390_REG_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unable to read device\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ds1390\00", align 1
@ds1390_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ds1390_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1390_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ds1390*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load i32, i32* @SPI_MODE_3, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  store i32 8, i32* %11, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call i32 @spi_setup(%struct.spi_device* %12)
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ds1390* @devm_kzalloc(%struct.TYPE_5__* %15, i32 4, i32 %16)
  store %struct.ds1390* %17, %struct.ds1390** %5, align 8
  %18 = load %struct.ds1390*, %struct.ds1390** %5, align 8
  %19 = icmp ne %struct.ds1390* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.ds1390*, %struct.ds1390** %5, align 8
  %26 = call i32 @spi_set_drvdata(%struct.spi_device* %24, %struct.ds1390* %25)
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 1
  %29 = load i32, i32* @DS1390_REG_SECONDS, align 4
  %30 = call i32 @ds1390_get_reg(%struct.TYPE_5__* %28, i32 %29, i8* %4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = call i32 @dev_err(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %23
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = call i32 @ds1390_trickle_of_init(%struct.spi_device* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 1
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = call i32 @devm_rtc_device_register(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* @ds1390_rtc_ops, i32 %50)
  %52 = load %struct.ds1390*, %struct.ds1390** %5, align 8
  %53 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ds1390*, %struct.ds1390** %5, align 8
  %55 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  %62 = call i32 @dev_err(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.ds1390*, %struct.ds1390** %5, align 8
  %64 = getelementptr inbounds %struct.ds1390, %struct.ds1390* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %47
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %33, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.ds1390* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ds1390*) #1

declare dso_local i32 @ds1390_get_reg(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ds1390_trickle_of_init(%struct.spi_device*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_5__*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
