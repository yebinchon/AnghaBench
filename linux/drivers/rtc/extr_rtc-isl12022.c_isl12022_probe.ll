; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12022.c_isl12022_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12022.c_isl12022_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.isl12022 = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@isl12022_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@isl12022_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @isl12022_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12022_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.isl12022*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @I2C_FUNC_I2C, align 4
  %11 = call i32 @i2c_check_functionality(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.isl12022* @devm_kzalloc(i32* %18, i32 4, i32 %19)
  store %struct.isl12022* %20, %struct.isl12022** %6, align 8
  %21 = load %struct.isl12022*, %struct.isl12022** %6, align 8
  %22 = icmp ne %struct.isl12022* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %16
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.isl12022*, %struct.isl12022** %6, align 8
  %29 = call i32 @i2c_set_clientdata(%struct.i2c_client* %27, %struct.isl12022* %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @isl12022_driver, i32 0, i32 0, i32 0), align 4
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = call i32 @devm_rtc_device_register(i32* %31, i32 %32, i32* @isl12022_rtc_ops, i32 %33)
  %35 = load %struct.isl12022*, %struct.isl12022** %6, align 8
  %36 = getelementptr inbounds %struct.isl12022, %struct.isl12022* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.isl12022*, %struct.isl12022** %6, align 8
  %38 = getelementptr inbounds %struct.isl12022, %struct.isl12022* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR_OR_ZERO(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %23, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.isl12022* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.isl12022*) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
