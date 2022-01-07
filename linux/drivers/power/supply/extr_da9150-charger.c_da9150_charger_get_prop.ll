; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.da9150_charger = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @da9150_charger_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.da9150_charger*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.da9150_charger* @dev_get_drvdata(i32 %12)
  store %struct.da9150_charger* %13, %struct.da9150_charger** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %32 [
    i32 130, label %15
    i32 128, label %20
    i32 131, label %24
    i32 129, label %28
  ]

15:                                               ; preds = %3
  %16 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %17 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %19 = call i32 @da9150_charger_supply_online(%struct.da9150_charger* %16, %struct.power_supply* %17, %union.power_supply_propval* %18)
  store i32 %19, i32* %8, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = call i32 @da9150_charger_vbus_voltage_now(%struct.da9150_charger* %21, %union.power_supply_propval* %22)
  store i32 %23, i32* %8, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %27 = call i32 @da9150_charger_ibus_current_avg(%struct.da9150_charger* %25, %union.power_supply_propval* %26)
  store i32 %27, i32* %8, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %31 = call i32 @da9150_charger_tjunc_temp(%struct.da9150_charger* %29, %union.power_supply_propval* %30)
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %28, %24, %20, %15
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.da9150_charger* @dev_get_drvdata(i32) #1

declare dso_local i32 @da9150_charger_supply_online(%struct.da9150_charger*, %struct.power_supply*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_vbus_voltage_now(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_ibus_current_avg(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_tjunc_temp(%struct.da9150_charger*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
