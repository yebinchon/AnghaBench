; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.z2_charger = type { i32, %struct.z2_battery_info* }
%struct.z2_battery_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @z2_batt_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z2_batt_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.z2_charger*, align 8
  %9 = alloca %struct.z2_battery_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.z2_charger* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.z2_charger* %11, %struct.z2_charger** %8, align 8
  %12 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %13 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %12, i32 0, i32 1
  %14 = load %struct.z2_battery_info*, %struct.z2_battery_info** %13, align 8
  store %struct.z2_battery_info* %14, %struct.z2_battery_info** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %75 [
    i32 132, label %16
    i32 131, label %22
    i32 128, label %28
    i32 130, label %42
    i32 129, label %57
    i32 133, label %72
  ]

16:                                               ; preds = %3
  %17 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %18 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %24 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %27 = bitcast %union.power_supply_propval* %26 to i32*
  store i32 %25, i32* %27, align 4
  br label %78

28:                                               ; preds = %3
  %29 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %30 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %35 = call i32 @z2_read_bat(%struct.z2_charger* %34)
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %79

41:                                               ; preds = %33
  br label %78

42:                                               ; preds = %3
  %43 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %44 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %49 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %79

56:                                               ; preds = %47
  br label %78

57:                                               ; preds = %3
  %58 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %59 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %64 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %67 = bitcast %union.power_supply_propval* %66 to i32*
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %79

71:                                               ; preds = %62
  br label %78

72:                                               ; preds = %3
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 1, i32* %74, align 4
  br label %78

75:                                               ; preds = %3
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %72, %71, %56, %41, %22, %16
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %75, %68, %53, %38
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.z2_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @z2_read_bat(%struct.z2_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
