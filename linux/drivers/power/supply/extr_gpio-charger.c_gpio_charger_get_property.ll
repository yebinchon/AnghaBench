; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.gpio_charger = type { i32, i32 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @gpio_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.gpio_charger*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.gpio_charger* @psy_to_gpio_charger(%struct.power_supply* %9)
  store %struct.gpio_charger* %10, %struct.gpio_charger** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %34 [
    i32 129, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %3
  %13 = load %struct.gpio_charger*, %struct.gpio_charger** %8, align 8
  %14 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_get_value_cansleep(i32 %15)
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  store i32 %16, i32* %18, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.gpio_charger*, %struct.gpio_charger** %8, align 8
  %21 = getelementptr inbounds %struct.gpio_charger, %struct.gpio_charger* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpiod_get_value_cansleep(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %28 = bitcast %union.power_supply_propval* %27 to i32*
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %33, %12
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.gpio_charger* @psy_to_gpio_charger(%struct.power_supply*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
