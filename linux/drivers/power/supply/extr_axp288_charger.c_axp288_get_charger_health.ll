; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_get_charger_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_get_charger_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_chrg_info = type { i32 }

@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@AXP20X_PWR_INPUT_STATUS = common dso_local global i32 0, align 4
@PS_STAT_VBUS_PRESENT = common dso_local global i32 0, align 4
@AXP20X_PWR_OP_MODE = common dso_local global i32 0, align 4
@PS_STAT_VBUS_VALID = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@CHRG_STAT_PMIC_OTP = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@CHRG_STAT_BAT_SAFE_MODE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_chrg_info*)* @axp288_get_charger_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_get_charger_health(%struct.axp288_chrg_info* %0) #0 {
  %2 = alloca %struct.axp288_chrg_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.axp288_chrg_info* %0, %struct.axp288_chrg_info** %2, align 8
  %8 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %2, align 8
  %10 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PS_STAT_VBUS_PRESENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %61

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22
  %25 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %2, align 8
  %26 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AXP20X_PWR_OP_MODE, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %7)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %61

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PS_STAT_VBUS_VALID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  store i32 %41, i32* %6, align 4
  br label %60

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CHRG_STAT_PMIC_OTP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %48, i32* %6, align 4
  br label %59

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @CHRG_STAT_BAT_SAFE_MODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %32, %21
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
