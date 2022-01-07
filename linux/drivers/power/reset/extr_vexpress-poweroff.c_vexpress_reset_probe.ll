; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_vexpress-poweroff.c_vexpress_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_vexpress-poweroff.c_vexpress_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.of_device_id = type { i32 }
%struct.regmap = type { i32 }

@vexpress_reset_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vexpress_power_off_device = common dso_local global i32* null, align 8
@vexpress_power_off = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32 0, align 4
@vexpress_restart_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vexpress_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @vexpress_reset_of_match, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.of_device_id* @of_match_device(i32 %7, i32* %9)
  store %struct.of_device_id* %10, %struct.of_device_id** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %12 = icmp ne %struct.of_device_id* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.regmap* @devm_regmap_init_vexpress_config(i32* %18)
  store %struct.regmap* %19, %struct.regmap** %5, align 8
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = call i64 @IS_ERR(%struct.regmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.regmap*, %struct.regmap** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.regmap* %24)
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  %30 = call i32 @dev_set_drvdata(i32* %28, %struct.regmap* %29)
  %31 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %32 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %50 [
    i32 128, label %34
    i32 129, label %38
    i32 130, label %46
  ]

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  store i32* %36, i32** @vexpress_power_off_device, align 8
  %37 = load i32, i32* @vexpress_power_off, align 4
  store i32 %37, i32* @pm_power_off, align 4
  br label %50

38:                                               ; preds = %26
  %39 = load i32, i32* @vexpress_restart_device, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @_vexpress_register_restart_handler(i32* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %38
  br label %50

46:                                               ; preds = %26
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @_vexpress_register_restart_handler(i32* %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %26, %46, %45, %34
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %23, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.regmap* @devm_regmap_init_vexpress_config(i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.regmap*) #1

declare dso_local i32 @_vexpress_register_restart_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
