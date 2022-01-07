; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_usb_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_usb_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sc2731_charger_info = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set charge current failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"set input current limit failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sc2731_charger_usb_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc2731_charger_usb_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.sc2731_charger_info*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.sc2731_charger_info* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.sc2731_charger_info* %11, %struct.sc2731_charger_info** %8, align 8
  %12 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %13 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %16 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %21 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %57 [
    i32 129, label %27
    i32 128, label %42
  ]

27:                                               ; preds = %25
  %28 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  %33 = call i32 @sc2731_charger_set_current(%struct.sc2731_charger_info* %28, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %38 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %27
  br label %60

42:                                               ; preds = %25
  %43 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 1000
  %48 = call i32 @sc2731_charger_set_current_limit(%struct.sc2731_charger_info* %43, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %53 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %42
  br label %60

57:                                               ; preds = %25
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %56, %41
  %61 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %8, align 8
  %62 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.sc2731_charger_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sc2731_charger_set_current(%struct.sc2731_charger_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sc2731_charger_set_current_limit(%struct.sc2731_charger_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
