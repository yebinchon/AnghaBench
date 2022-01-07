; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sd3078.c_sd3078_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sd3078.c_sd3078_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.sd3078 = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap allocation failed\0A\00", align 1
@sd3078_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sd3078_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd3078_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd3078*, align 8
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
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sd3078* @devm_kzalloc(i32* %19, i32 16, i32 %20)
  store %struct.sd3078* %21, %struct.sd3078** %7, align 8
  %22 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %23 = icmp ne %struct.sd3078* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %90

27:                                               ; preds = %17
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call %struct.TYPE_6__* @devm_regmap_init_i2c(%struct.i2c_client* %28, i32* @regmap_config)
  %30 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %31 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %30, i32 0, i32 1
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %33 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i64 @IS_ERR(%struct.TYPE_6__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %42 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @PTR_ERR(%struct.TYPE_6__* %43)
  store i32 %44, i32* %3, align 4
  br label %90

45:                                               ; preds = %27
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %48 = call i32 @i2c_set_clientdata(%struct.i2c_client* %46, %struct.sd3078* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %50)
  %52 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %53 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %52, i32 0, i32 0
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %55 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i64 @IS_ERR(%struct.TYPE_6__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %61 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.TYPE_6__* %62)
  store i32 %63, i32* %3, align 4
  br label %90

64:                                               ; preds = %45
  %65 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %66 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32* @sd3078_rtc_ops, i32** %68, align 8
  %69 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %70 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %71 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %75 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %76 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %80 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = call i32 @rtc_register_device(%struct.TYPE_6__* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %64
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %90

87:                                               ; preds = %64
  %88 = load %struct.sd3078*, %struct.sd3078** %7, align 8
  %89 = call i32 @sd3078_enable_reg_write(%struct.sd3078* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %85, %59, %37, %24, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.sd3078* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sd3078*) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @sd3078_enable_reg_write(%struct.sd3078*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
