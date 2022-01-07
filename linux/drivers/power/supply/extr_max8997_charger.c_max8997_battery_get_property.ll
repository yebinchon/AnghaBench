; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8997_charger.c_max8997_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8997_charger.c_max8997_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.charger_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX8997_REG_STATUS4 = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max8997_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.charger_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %13 = call %struct.charger_data* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.charger_data* %13, %struct.charger_data** %8, align 8
  %14 = load %struct.charger_data*, %struct.charger_data** %8, align 8
  %15 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %9, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %75 [
    i32 128, label %20
    i32 129, label %39
    i32 130, label %57
  ]

20:                                               ; preds = %3
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 0, i32* %22, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %24 = load i32, i32* @MAX8997_REG_STATUS4, align 4
  %25 = call i32 @max8997_read_reg(%struct.i2c_client* %23, i32 %24, i32* %11)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %79

30:                                               ; preds = %20
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %78

39:                                               ; preds = %3
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 0, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %43 = load i32, i32* @MAX8997_REG_STATUS4, align 4
  %44 = call i32 @max8997_read_reg(%struct.i2c_client* %42, i32 %43, i32* %11)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %79

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %49
  br label %78

57:                                               ; preds = %3
  %58 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %59 = bitcast %union.power_supply_propval* %58 to i32*
  store i32 0, i32* %59, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %61 = load i32, i32* @MAX8997_REG_STATUS4, align 4
  %62 = call i32 @max8997_read_reg(%struct.i2c_client* %60, i32 %61, i32* %11)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %79

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %73 = bitcast %union.power_supply_propval* %72 to i32*
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %67
  br label %78

75:                                               ; preds = %3
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %74, %56, %38
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %75, %65, %47, %28
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.charger_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @max8997_read_reg(%struct.i2c_client*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
