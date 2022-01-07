; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rx51_battery.c_rx51_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rx51_battery.c_rx51_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.rx51_device_info = type { i32 }

@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @rx51_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx51_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.rx51_device_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.rx51_device_info* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.rx51_device_info* %10, %struct.rx51_device_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %42 [
    i32 131, label %12
    i32 129, label %16
    i32 132, label %19
    i32 128, label %27
    i32 130, label %32
    i32 133, label %37
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  store i32 %13, i32* %15, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  store i32 4200000, i32* %18, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.rx51_device_info*, %struct.rx51_device_info** %8, align 8
  %21 = call i32 @rx51_battery_read_voltage(%struct.rx51_device_info* %20)
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.rx51_device_info*, %struct.rx51_device_info** %8, align 8
  %29 = call i32 @rx51_battery_read_voltage(%struct.rx51_device_info* %28)
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %45

32:                                               ; preds = %3
  %33 = load %struct.rx51_device_info*, %struct.rx51_device_info** %8, align 8
  %34 = call i32 @rx51_battery_read_temperature(%struct.rx51_device_info* %33)
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.rx51_device_info*, %struct.rx51_device_info** %8, align 8
  %39 = call i32 @rx51_battery_read_capacity(%struct.rx51_device_info* %38)
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %63

45:                                               ; preds = %37, %32, %27, %19, %16, %12
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @INT_MAX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @INT_MIN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %45
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59, %42
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.rx51_device_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @rx51_battery_read_voltage(%struct.rx51_device_info*) #1

declare dso_local i32 @rx51_battery_read_temperature(%struct.rx51_device_info*) #1

declare dso_local i32 @rx51_battery_read_capacity(%struct.rx51_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
