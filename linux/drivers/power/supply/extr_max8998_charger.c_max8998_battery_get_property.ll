; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8998_charger.c_max8998_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8998_charger.c_max8998_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max8998_battery_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX8998_REG_STATUS2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max8998_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.max8998_battery_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %13 = call %struct.max8998_battery_data* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.max8998_battery_data* %13, %struct.max8998_battery_data** %8, align 8
  %14 = load %struct.max8998_battery_data*, %struct.max8998_battery_data** %8, align 8
  %15 = getelementptr inbounds %struct.max8998_battery_data, %struct.max8998_battery_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %9, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %58 [
    i32 128, label %20
    i32 129, label %39
  ]

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %22 = load i32, i32* @MAX8998_REG_STATUS2, align 4
  %23 = call i32 @max8998_read_reg(%struct.i2c_client* %21, i32 %22, i32* %11)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 0, i32* %34, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %61

39:                                               ; preds = %3
  %40 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %41 = load i32, i32* @MAX8998_REG_STATUS2, align 4
  %42 = call i32 @max8998_read_reg(%struct.i2c_client* %40, i32 %41, i32* %11)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  store i32 0, i32* %53, align 4
  br label %57

54:                                               ; preds = %47
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %61

58:                                               ; preds = %3
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %57, %38
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %45, %26
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.max8998_battery_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @max8998_read_reg(%struct.i2c_client*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
