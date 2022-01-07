; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_get_charge_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_get_charge_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_charger = type { i32 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_charger*, i32*)* @max14577_get_charge_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_get_charge_type(%struct.max14577_charger* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max14577_charger*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max14577_charger* %0, %struct.max14577_charger** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %9 = call i32 @max14577_get_charger_state(%struct.max14577_charger* %8, i32* %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @max14577_get_charger_state(%struct.max14577_charger*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
