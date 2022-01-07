; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp288_fg_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP288_FG_LOW_CAP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @fuel_gauge_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuel_gauge_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.axp288_fg_info*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.axp288_fg_info* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.axp288_fg_info* %10, %struct.axp288_fg_info** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %7, align 8
  %12 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %48 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 15
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %51

28:                                               ; preds = %20
  %29 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %7, align 8
  %30 = load i32, i32* @AXP288_FG_LOW_CAP_REG, align 4
  %31 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %51

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 240
  store i32 %37, i32* %8, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %7, align 8
  %45 = load i32, i32* @AXP288_FG_LOW_CAP_REG, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @fuel_gauge_reg_writeb(%struct.axp288_fg_info* %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %35, %34, %25
  %52 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %7, align 8
  %53 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.axp288_fg_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info*, i32) #1

declare dso_local i32 @fuel_gauge_reg_writeb(%struct.axp288_fg_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
