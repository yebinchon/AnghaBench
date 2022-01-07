; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ds2780_device_info = type { i32 }

@model = common dso_local global i32 0, align 4
@manufacturer = common dso_local global i32 0, align 4
@CURRENT_NOW = common dso_local global i32 0, align 4
@CURRENT_AVG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ds2780_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2780_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ds2780_device_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.ds2780_device_info* @to_ds2780_device_info(%struct.power_supply* %9)
  store %struct.ds2780_device_info* %10, %struct.ds2780_device_info** %8, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %62 [
    i32 128, label %12
    i32 129, label %17
    i32 131, label %22
    i32 132, label %26
    i32 133, label %30
    i32 134, label %36
    i32 130, label %42
    i32 137, label %47
    i32 136, label %52
    i32 135, label %57
  ]

12:                                               ; preds = %3
  %13 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = call i32 @ds2780_get_voltage(%struct.ds2780_device_info* %13, i32* %15)
  store i32 %16, i32* %7, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  %21 = call i32 @ds2780_get_temperature(%struct.ds2780_device_info* %18, i32* %20)
  store i32 %21, i32* %7, align 4
  br label %65

22:                                               ; preds = %3
  %23 = load i32, i32* @model, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %65

26:                                               ; preds = %3
  %27 = load i32, i32* @manufacturer, align 4
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %65

30:                                               ; preds = %3
  %31 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %32 = load i32, i32* @CURRENT_NOW, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  %35 = call i32 @ds2780_get_current(%struct.ds2780_device_info* %31, i32 %32, i32* %34)
  store i32 %35, i32* %7, align 4
  br label %65

36:                                               ; preds = %3
  %37 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %38 = load i32, i32* @CURRENT_AVG, align 4
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  %41 = call i32 @ds2780_get_current(%struct.ds2780_device_info* %37, i32 %38, i32* %40)
  store i32 %41, i32* %7, align 4
  br label %65

42:                                               ; preds = %3
  %43 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  %46 = call i32 @ds2780_get_status(%struct.ds2780_device_info* %43, i32* %45)
  store i32 %46, i32* %7, align 4
  br label %65

47:                                               ; preds = %3
  %48 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %49 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %50 = bitcast %union.power_supply_propval* %49 to i32*
  %51 = call i32 @ds2780_get_capacity(%struct.ds2780_device_info* %48, i32* %50)
  store i32 %51, i32* %7, align 4
  br label %65

52:                                               ; preds = %3
  %53 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  %56 = call i32 @ds2780_get_accumulated_current(%struct.ds2780_device_info* %53, i32* %55)
  store i32 %56, i32* %7, align 4
  br label %65

57:                                               ; preds = %3
  %58 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %8, align 8
  %59 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %60 = bitcast %union.power_supply_propval* %59 to i32*
  %61 = call i32 @ds2780_get_charge_now(%struct.ds2780_device_info* %58, i32* %60)
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %57, %52, %47, %42, %36, %30, %26, %22, %17, %12
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.ds2780_device_info* @to_ds2780_device_info(%struct.power_supply*) #1

declare dso_local i32 @ds2780_get_voltage(%struct.ds2780_device_info*, i32*) #1

declare dso_local i32 @ds2780_get_temperature(%struct.ds2780_device_info*, i32*) #1

declare dso_local i32 @ds2780_get_current(%struct.ds2780_device_info*, i32, i32*) #1

declare dso_local i32 @ds2780_get_status(%struct.ds2780_device_info*, i32*) #1

declare dso_local i32 @ds2780_get_capacity(%struct.ds2780_device_info*, i32*) #1

declare dso_local i32 @ds2780_get_accumulated_current(%struct.ds2780_device_info*, i32*) #1

declare dso_local i32 @ds2780_get_charge_now(%struct.ds2780_device_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
