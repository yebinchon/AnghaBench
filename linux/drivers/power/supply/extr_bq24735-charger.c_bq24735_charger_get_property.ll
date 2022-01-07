; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.bq24735 = type { i32 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq24735_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24735_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.bq24735*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.bq24735* @to_bq24735(%struct.power_supply* %9)
  store %struct.bq24735* %10, %struct.bq24735** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %36 [
    i32 129, label %12
    i32 128, label %20
  ]

12:                                               ; preds = %3
  %13 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %14 = call i32 @bq24735_charger_is_present(%struct.bq24735* %13)
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %19 = bitcast %union.power_supply_propval* %18 to i32*
  store i32 %17, i32* %19, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.bq24735*, %struct.bq24735** %8, align 8
  %22 = call i32 @bq24735_charger_is_charging(%struct.bq24735* %21)
  switch i32 %22, label %31 [
    i32 1, label %23
    i32 0, label %27
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %27, %23
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %35, %12
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.bq24735* @to_bq24735(%struct.power_supply*) #1

declare dso_local i32 @bq24735_charger_is_present(%struct.bq24735*) #1

declare dso_local i32 @bq24735_charger_is_charging(%struct.bq24735*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
