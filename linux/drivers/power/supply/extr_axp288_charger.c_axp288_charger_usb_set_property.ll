; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_usb_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_usb_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp288_chrg_info = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"set charge current failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"set charge voltage failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"set input current limit failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @axp288_charger_usb_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_charger_usb_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.axp288_chrg_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = call %struct.axp288_chrg_info* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.axp288_chrg_info* %11, %struct.axp288_chrg_info** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %72 [
    i32 130, label %13
    i32 129, label %35
    i32 128, label %57
  ]

13:                                               ; preds = %3
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %18 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @min(i32 %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @DIV_ROUND_CLOSEST(i32 %21, i32 1000)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @axp288_charger_set_cc(%struct.axp288_chrg_info* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %13
  %29 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %30 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %13
  br label %75

35:                                               ; preds = %3
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %40 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @min(i32 %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @DIV_ROUND_CLOSEST(i32 %43, i32 1000)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @axp288_charger_set_cv(%struct.axp288_chrg_info* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %52 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %35
  br label %75

57:                                               ; preds = %3
  %58 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %59 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %60 = bitcast %union.power_supply_propval* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @axp288_charger_set_vbus_inlmt(%struct.axp288_chrg_info* %58, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %7, align 8
  %67 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %65, %57
  br label %75

72:                                               ; preds = %3
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %71, %56, %34
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local %struct.axp288_chrg_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @axp288_charger_set_cc(%struct.axp288_chrg_info*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @axp288_charger_set_cv(%struct.axp288_chrg_info*, i32) #1

declare dso_local i32 @axp288_charger_set_vbus_inlmt(%struct.axp288_chrg_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
