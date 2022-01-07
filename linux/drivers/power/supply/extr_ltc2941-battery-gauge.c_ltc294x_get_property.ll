; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ltc294x_info = type { i32 }

@LTC294X_REG_CHARGE_THR_HIGH_MSB = common dso_local global i32 0, align 4
@LTC294X_REG_CHARGE_THR_LOW_MSB = common dso_local global i32 0, align 4
@LTC294X_REG_ACC_CHARGE_MSB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ltc294x_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ltc294x_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.ltc294x_info* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.ltc294x_info* %10, %struct.ltc294x_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %50 [
    i32 132, label %12
    i32 133, label %18
    i32 131, label %24
    i32 134, label %30
    i32 128, label %35
    i32 130, label %40
    i32 129, label %45
  ]

12:                                               ; preds = %3
  %13 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %14 = load i32, i32* @LTC294X_REG_CHARGE_THR_HIGH_MSB, align 4
  %15 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %16 = bitcast %union.power_supply_propval* %15 to i32*
  %17 = call i32 @ltc294x_get_charge(%struct.ltc294x_info* %13, i32 %14, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %20 = load i32, i32* @LTC294X_REG_CHARGE_THR_LOW_MSB, align 4
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  %23 = call i32 @ltc294x_get_charge(%struct.ltc294x_info* %19, i32 %20, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %26 = load i32, i32* @LTC294X_REG_ACC_CHARGE_MSB, align 4
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %28 = bitcast %union.power_supply_propval* %27 to i32*
  %29 = call i32 @ltc294x_get_charge(%struct.ltc294x_info* %25, i32 %26, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  %34 = call i32 @ltc294x_get_charge_counter(%struct.ltc294x_info* %31, i32* %33)
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %3
  %36 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  %39 = call i32 @ltc294x_get_voltage(%struct.ltc294x_info* %36, i32* %38)
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %3
  %41 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i32*
  %44 = call i32 @ltc294x_get_current(%struct.ltc294x_info* %41, i32* %43)
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %3
  %46 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  %49 = call i32 @ltc294x_get_temperature(%struct.ltc294x_info* %46, i32* %48)
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %45, %40, %35, %30, %24, %18, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ltc294x_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @ltc294x_get_charge(%struct.ltc294x_info*, i32, i32*) #1

declare dso_local i32 @ltc294x_get_charge_counter(%struct.ltc294x_info*, i32*) #1

declare dso_local i32 @ltc294x_get_voltage(%struct.ltc294x_info*, i32*) #1

declare dso_local i32 @ltc294x_get_current(%struct.ltc294x_info*, i32*) #1

declare dso_local i32 @ltc294x_get_temperature(%struct.ltc294x_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
