; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm8350 = type { i32, %struct.wm8350_power }
%struct.wm8350_power = type { i8*, i8*, i8*, %struct.wm8350_charger_policy* }
%struct.wm8350_charger_policy = type { i32 }

@wm8350_ac_desc = common dso_local global i32 0, align 4
@wm8350_battery_desc = common dso_local global i32 0, align 4
@wm8350_usb_desc = common dso_local global i32 0, align 4
@dev_attr_charger_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to add charge sysfs: %d\0A\00", align 1
@WM8350_POWER_MGMT_5 = common dso_local global i32 0, align 4
@WM8350_CHG_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8350_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca %struct.wm8350_power*, align 8
  %6 = alloca %struct.wm8350_charger_policy*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.wm8350* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.wm8350* %9, %struct.wm8350** %4, align 8
  %10 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %11 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %10, i32 0, i32 1
  store %struct.wm8350_power* %11, %struct.wm8350_power** %5, align 8
  %12 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %13 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %12, i32 0, i32 3
  %14 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %13, align 8
  store %struct.wm8350_charger_policy* %14, %struct.wm8350_charger_policy** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i8* @power_supply_register(i32* %16, i32* @wm8350_ac_desc, i32* null)
  %18 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %19 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %21 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %27 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  store i32 %29, i32* %2, align 4
  br label %103

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i8* @power_supply_register(i32* %32, i32* @wm8350_battery_desc, i32* null)
  %34 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %35 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %37 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %43 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %7, align 4
  br label %97

46:                                               ; preds = %30
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i8* @power_supply_register(i32* %48, i32* @wm8350_usb_desc, i32* null)
  %50 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %51 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %53 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %59 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %7, align 4
  br label %92

62:                                               ; preds = %46
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @device_create_file(i32* %64, i32* @dev_attr_charger_state)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %70 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  store i32 0, i32* %7, align 4
  %75 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %76 = call i32 @wm8350_init_charger(%struct.wm8350* %75)
  %77 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %78 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %6, align 8
  %79 = call i64 @wm8350_charger_config(%struct.wm8350* %77, %struct.wm8350_charger_policy* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %83 = call i32 @wm8350_reg_unlock(%struct.wm8350* %82)
  %84 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %85 = load i32, i32* @WM8350_POWER_MGMT_5, align 4
  %86 = load i32, i32* @WM8350_CHG_ENA, align 4
  %87 = call i32 @wm8350_set_bits(%struct.wm8350* %84, i32 %85, i32 %86)
  %88 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %89 = call i32 @wm8350_reg_lock(%struct.wm8350* %88)
  br label %90

90:                                               ; preds = %81, %74
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %57
  %93 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %94 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @power_supply_unregister(i8* %95)
  br label %97

97:                                               ; preds = %92, %41
  %98 = load %struct.wm8350_power*, %struct.wm8350_power** %5, align 8
  %99 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @power_supply_unregister(i8* %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %90, %25
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.wm8350* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @power_supply_register(i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @wm8350_init_charger(%struct.wm8350*) #1

declare dso_local i64 @wm8350_charger_config(%struct.wm8350*, %struct.wm8350_charger_policy*) #1

declare dso_local i32 @wm8350_reg_unlock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_lock(%struct.wm8350*) #1

declare dso_local i32 @power_supply_unregister(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
