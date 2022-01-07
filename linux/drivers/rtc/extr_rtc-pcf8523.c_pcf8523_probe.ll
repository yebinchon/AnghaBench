; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.pcf8523 = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to set xtal load capacitance: %d\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@pcf8523_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf8523_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8523_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pcf8523*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_I2C, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pcf8523* @devm_kzalloc(i32* %19, i32 4, i32 %20)
  store %struct.pcf8523* %21, %struct.pcf8523** %6, align 8
  %22 = load %struct.pcf8523*, %struct.pcf8523** %6, align 8
  %23 = icmp ne %struct.pcf8523* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %17
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @pcf8523_load_capacitance(%struct.i2c_client* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @pcf8523_set_pm(%struct.i2c_client* %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %37
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* @DRIVER_NAME, align 4
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = call i32 @devm_rtc_device_register(i32* %46, i32 %47, i32* @pcf8523_rtc_ops, i32 %48)
  %50 = load %struct.pcf8523*, %struct.pcf8523** %6, align 8
  %51 = getelementptr inbounds %struct.pcf8523, %struct.pcf8523* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pcf8523*, %struct.pcf8523** %6, align 8
  %53 = getelementptr inbounds %struct.pcf8523, %struct.pcf8523* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.pcf8523*, %struct.pcf8523** %6, align 8
  %59 = getelementptr inbounds %struct.pcf8523, %struct.pcf8523* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %44
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load %struct.pcf8523*, %struct.pcf8523** %6, align 8
  %65 = call i32 @i2c_set_clientdata(%struct.i2c_client* %63, %struct.pcf8523* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %57, %42, %24, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.pcf8523* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pcf8523_load_capacitance(%struct.i2c_client*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pcf8523_set_pm(%struct.i2c_client*, i32) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pcf8523*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
