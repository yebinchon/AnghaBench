; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_get_charger_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_get_charger_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5061_state = type { i32 }
%union.power_supply_propval = type { i32 }

@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp5061_state*, %union.power_supply_propval*)* @adp5061_get_charger_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5061_get_charger_status(%struct.adp5061_state* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adp5061_state*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adp5061_state* %0, %struct.adp5061_state** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.adp5061_state*, %struct.adp5061_state** %4, align 8
  %10 = call i32 @adp5061_get_status(%struct.adp5061_state* %9, i32* %6, i32* %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ADP5061_CHG_STATUS_1_CHG_STATUS(i32 %16)
  switch i32 %17, label %34 [
    i32 130, label %18
    i32 128, label %22
    i32 132, label %22
    i32 131, label %22
    i32 133, label %26
    i32 129, label %30
  ]

18:                                               ; preds = %15
  %19 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %38

22:                                               ; preds = %15, %15, %15
  %23 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %38

26:                                               ; preds = %15
  %27 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %38

30:                                               ; preds = %15
  %31 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %15
  %35 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %30, %26, %22, %18
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @adp5061_get_status(%struct.adp5061_state*, i32*, i32*) #1

declare dso_local i32 @ADP5061_CHG_STATUS_1_CHG_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
