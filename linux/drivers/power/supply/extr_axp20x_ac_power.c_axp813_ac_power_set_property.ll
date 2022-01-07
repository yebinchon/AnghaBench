; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_ac_power.c_axp813_ac_power_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_ac_power.c_axp813_ac_power_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp20x_ac_power = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP813_ACIN_PATH_CTRL = common dso_local global i32 0, align 4
@AXP813_VHOLD_MASK = common dso_local global i32 0, align 4
@AXP813_CURR_LIMIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @axp813_ac_power_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp813_ac_power_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.axp20x_ac_power*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.axp20x_ac_power* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.axp20x_ac_power* %10, %struct.axp20x_ac_power** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %60 [
    i32 128, label %12
    i32 129, label %36
  ]

12:                                               ; preds = %3
  %13 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %14 = bitcast %union.power_supply_propval* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 4000000
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %19 = bitcast %union.power_supply_propval* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 4700000
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %63

25:                                               ; preds = %17
  %26 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %27 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AXP813_ACIN_PATH_CTRL, align 4
  %30 = load i32, i32* @AXP813_VHOLD_MASK, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AXP813_VHOLD_UV_TO_BIT(i32 %33)
  %35 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %3
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 1500000
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 4000000
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %41
  %50 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %51 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AXP813_ACIN_PATH_CTRL, align 4
  %54 = load i32, i32* @AXP813_CURR_LIMIT_MASK, align 4
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AXP813_CURR_LIMIT_UA_TO_BIT(i32 %57)
  %59 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %49, %46, %25, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.axp20x_ac_power* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @AXP813_VHOLD_UV_TO_BIT(i32) #1

declare dso_local i32 @AXP813_CURR_LIMIT_UA_TO_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
