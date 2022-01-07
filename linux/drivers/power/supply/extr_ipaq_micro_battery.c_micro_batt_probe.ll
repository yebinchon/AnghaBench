; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_micro_batt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_micro_batt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.micro_battery = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ipaq-battery-wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@micro_battery_work = common dso_local global i32 0, align 4
@micro_batt_power_desc = common dso_local global i32 0, align 4
@micro_batt_power = common dso_local global i32 0, align 4
@micro_ac_power_desc = common dso_local global i32 0, align 4
@micro_ac_power = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"iPAQ micro battery driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @micro_batt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micro_batt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.micro_battery*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.micro_battery* @devm_kzalloc(%struct.TYPE_4__* %7, i32 12, i32 %8)
  store %struct.micro_battery* %9, %struct.micro_battery** %4, align 8
  %10 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %11 = icmp ne %struct.micro_battery* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_get_drvdata(i32 %19)
  %21 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %22 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %24 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 0)
  %25 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %26 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %28 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %83

34:                                               ; preds = %15
  %35 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %36 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %35, i32 0, i32 1
  %37 = load i32, i32* @micro_battery_work, align 4
  %38 = call i32 @INIT_DELAYED_WORK(i32* %36, i32 %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.micro_battery* %40)
  %42 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %43 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %46 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %45, i32 0, i32 1
  %47 = call i32 @queue_delayed_work(i32 %44, i32* %46, i32 1)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @power_supply_register(%struct.TYPE_4__* %49, i32* @micro_batt_power_desc, i32* null)
  store i32 %50, i32* @micro_batt_power, align 4
  %51 = load i32, i32* @micro_batt_power, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %34
  %55 = load i32, i32* @micro_batt_power, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %34
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @power_supply_register(%struct.TYPE_4__* %59, i32* @micro_ac_power_desc, i32* null)
  store i32 %60, i32* @micro_ac_power, align 4
  %61 = load i32, i32* @micro_ac_power, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @micro_ac_power, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_info(%struct.TYPE_4__* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %83

71:                                               ; preds = %64
  %72 = load i32, i32* @micro_batt_power, align 4
  %73 = call i32 @power_supply_unregister(i32 %72)
  br label %74

74:                                               ; preds = %71, %54
  %75 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %76 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %75, i32 0, i32 1
  %77 = call i32 @cancel_delayed_work_sync(i32* %76)
  %78 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %79 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @destroy_workqueue(i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %67, %31, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.micro_battery* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.micro_battery*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @power_supply_register(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
