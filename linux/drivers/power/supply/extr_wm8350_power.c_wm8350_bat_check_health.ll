; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_bat_check_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_bat_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@WM8350_CHARGER_OVERRIDES = common dso_local global i32 0, align 4
@WM8350_CHG_BATT_HOT_OVRDE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@WM8350_CHG_BATT_COLD_OVRDE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*)* @wm8350_bat_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_bat_check_health(%struct.wm8350* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm8350*, align 8
  %4 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %3, align 8
  %5 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %6 = call i32 @wm8350_read_battery_uvolts(%struct.wm8350* %5)
  %7 = icmp slt i32 %6, 2850000
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %12 = load i32, i32* @WM8350_CHARGER_OVERRIDES, align 4
  %13 = call i32 @wm8350_reg_read(%struct.wm8350* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @WM8350_CHG_BATT_HOT_OVRDE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @WM8350_CHG_BATT_COLD_OVRDE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %18, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @wm8350_read_battery_uvolts(%struct.wm8350*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
