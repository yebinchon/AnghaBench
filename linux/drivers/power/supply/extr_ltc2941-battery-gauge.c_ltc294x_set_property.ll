; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ltc294x_info = type { i32 }

@LTC294X_REG_CHARGE_THR_HIGH_MSB = common dso_local global i32 0, align 4
@LTC294X_REG_CHARGE_THR_LOW_MSB = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ltc294x_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
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
  switch i32 %11, label %32 [
    i32 129, label %12
    i32 130, label %19
    i32 128, label %26
  ]

12:                                               ; preds = %3
  %13 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %14 = load i32, i32* @LTC294X_REG_CHARGE_THR_HIGH_MSB, align 4
  %15 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %16 = bitcast %union.power_supply_propval* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ltc294x_set_charge_thr(%struct.ltc294x_info* %13, i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %21 = load i32, i32* @LTC294X_REG_CHARGE_THR_LOW_MSB, align 4
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ltc294x_set_charge_thr(%struct.ltc294x_info* %20, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.ltc294x_info*, %struct.ltc294x_info** %8, align 8
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ltc294x_set_charge_now(%struct.ltc294x_info* %27, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %26, %19, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.ltc294x_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @ltc294x_set_charge_thr(%struct.ltc294x_info*, i32, i32) #1

declare dso_local i32 @ltc294x_set_charge_now(%struct.ltc294x_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
