; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_usb_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_usb_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sc2731_charger_info = type { i32, i32 }

@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sc2731_charger_usb_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc2731_charger_usb_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.sc2731_charger_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = call %struct.sc2731_charger_info* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.sc2731_charger_info* %11, %struct.sc2731_charger_info** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %13 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %71 [
    i32 128, label %16
    i32 130, label %31
    i32 129, label %51
  ]

16:                                               ; preds = %3
  %17 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %18 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %23 = call i32 @sc2731_charger_get_status(%struct.sc2731_charger_info* %22)
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %21
  br label %74

31:                                               ; preds = %3
  %32 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %33 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  store i32 0, i32* %38, align 4
  br label %50

39:                                               ; preds = %31
  %40 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %41 = call i32 @sc2731_charger_get_current(%struct.sc2731_charger_info* %40, i32* %9)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %75

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 1000
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %36
  br label %74

51:                                               ; preds = %3
  %52 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %53 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 0, i32* %58, align 4
  br label %70

59:                                               ; preds = %51
  %60 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %61 = call i32 @sc2731_charger_get_current_limit(%struct.sc2731_charger_info* %60, i32* %9)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %75

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 1000
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %56
  br label %74

71:                                               ; preds = %3
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %70, %50, %30
  br label %75

75:                                               ; preds = %74, %64, %44
  %76 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %7, align 8
  %77 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.sc2731_charger_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc2731_charger_get_status(%struct.sc2731_charger_info*) #1

declare dso_local i32 @sc2731_charger_get_current(%struct.sc2731_charger_info*, i32*) #1

declare dso_local i32 @sc2731_charger_get_current_limit(%struct.sc2731_charger_info*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
