; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_BATT_SUPPLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm8350_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.wm8350*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.wm8350* @dev_get_drvdata(i32 %12)
  store %struct.wm8350* %13, %struct.wm8350** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %46 [
    i32 129, label %15
    i32 130, label %20
    i32 128, label %31
    i32 131, label %36
    i32 132, label %41
  ]

15:                                               ; preds = %3
  %16 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %17 = call i32 @wm8350_batt_status(%struct.wm8350* %16)
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %19 = bitcast %union.power_supply_propval* %18 to i32*
  store i32 %17, i32* %19, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %22 = call i32 @wm8350_get_supplies(%struct.wm8350* %21)
  %23 = load i32, i32* @WM8350_BATT_SUPPLY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %49

31:                                               ; preds = %3
  %32 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %33 = call i32 @wm8350_read_battery_uvolts(%struct.wm8350* %32)
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %49

36:                                               ; preds = %3
  %37 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %38 = call i32 @wm8350_bat_check_health(%struct.wm8350* %37)
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %49

41:                                               ; preds = %3
  %42 = load %struct.wm8350*, %struct.wm8350** %7, align 8
  %43 = call i32 @wm8350_bat_get_charge_type(%struct.wm8350* %42)
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %41, %36, %31, %20, %15
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.wm8350* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm8350_batt_status(%struct.wm8350*) #1

declare dso_local i32 @wm8350_get_supplies(%struct.wm8350*) #1

declare dso_local i32 @wm8350_read_battery_uvolts(%struct.wm8350*) #1

declare dso_local i32 @wm8350_bat_check_health(%struct.wm8350*) #1

declare dso_local i32 @wm8350_bat_get_charge_type(%struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
