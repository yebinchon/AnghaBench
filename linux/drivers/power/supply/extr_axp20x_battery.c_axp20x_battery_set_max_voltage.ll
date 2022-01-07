; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_battery_set_max_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_battery_set_max_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_batt_ps = type { i32 }

@AXP20X_CHRG_CTRL1_TGT_4_1V = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1_TGT_4_15V = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1_TGT_4_2V = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1 = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1_TGT_VOLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_batt_ps*, i32)* @axp20x_battery_set_max_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_battery_set_max_voltage(%struct.axp20x_batt_ps* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp20x_batt_ps*, align 8
  %5 = alloca i32, align 4
  store %struct.axp20x_batt_ps* %0, %struct.axp20x_batt_ps** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 4100000, label %7
    i32 4150000, label %9
    i32 4200000, label %11
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @AXP20X_CHRG_CTRL1_TGT_4_1V, align 4
  store i32 %8, i32* %5, align 4
  br label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @AXP20X_CHRG_CTRL1_TGT_4_15V, align 4
  store i32 %10, i32* %5, align 4
  br label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @AXP20X_CHRG_CTRL1_TGT_4_2V, align 4
  store i32 %12, i32* %5, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %11, %9, %7
  %17 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %4, align 8
  %18 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %21 = load i32, i32* @AXP20X_CHRG_CTRL1_TGT_VOLT, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
