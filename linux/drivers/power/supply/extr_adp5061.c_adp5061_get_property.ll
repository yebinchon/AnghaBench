; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.adp5061_state = type { i32 }

@ADP5061_NO_BATTERY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @adp5061_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5061_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.adp5061_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.adp5061_state* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.adp5061_state* %14, %struct.adp5061_state** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %80 [
    i32 132, label %16
    i32 137, label %36
    i32 134, label %40
    i32 129, label %44
    i32 128, label %48
    i32 135, label %52
    i32 136, label %56
    i32 133, label %60
    i32 130, label %64
    i32 131, label %68
    i32 139, label %72
    i32 138, label %76
  ]

16:                                               ; preds = %3
  %17 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %18 = call i32 @adp5061_get_status(%struct.adp5061_state* %17, i32* %9, i32* %10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %84

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @ADP5061_CHG_STATUS_2_BAT_STATUS(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @ADP5061_NO_BATTERY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 0, i32* %31, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %83

36:                                               ; preds = %3
  %37 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = call i32 @adp5061_get_chg_type(%struct.adp5061_state* %37, %union.power_supply_propval* %38)
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %3
  %41 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %43 = call i32 @adp5061_get_input_current_limit(%struct.adp5061_state* %41, %union.power_supply_propval* %42)
  store i32 %43, i32* %4, align 4
  br label %84

44:                                               ; preds = %3
  %45 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = call i32 @adp5061_get_max_voltage(%struct.adp5061_state* %45, %union.power_supply_propval* %46)
  store i32 %47, i32* %4, align 4
  br label %84

48:                                               ; preds = %3
  %49 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = call i32 @adp5061_get_min_voltage(%struct.adp5061_state* %49, %union.power_supply_propval* %50)
  store i32 %51, i32* %4, align 4
  br label %84

52:                                               ; preds = %3
  %53 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = call i32 @adp5061_get_chg_volt_lim(%struct.adp5061_state* %53, %union.power_supply_propval* %54)
  store i32 %55, i32* %4, align 4
  br label %84

56:                                               ; preds = %3
  %57 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %58 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %59 = call i32 @adp5061_get_const_chg_current(%struct.adp5061_state* %57, %union.power_supply_propval* %58)
  store i32 %59, i32* %4, align 4
  br label %84

60:                                               ; preds = %3
  %61 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = call i32 @adp5061_get_prechg_current(%struct.adp5061_state* %61, %union.power_supply_propval* %62)
  store i32 %63, i32* %4, align 4
  br label %84

64:                                               ; preds = %3
  %65 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %66 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %67 = call i32 @adp5061_get_vweak_th(%struct.adp5061_state* %65, %union.power_supply_propval* %66)
  store i32 %67, i32* %4, align 4
  br label %84

68:                                               ; preds = %3
  %69 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %70 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %71 = call i32 @adp5061_get_charger_status(%struct.adp5061_state* %69, %union.power_supply_propval* %70)
  store i32 %71, i32* %4, align 4
  br label %84

72:                                               ; preds = %3
  %73 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %75 = call i32 @adp5061_get_battery_status(%struct.adp5061_state* %73, %union.power_supply_propval* %74)
  store i32 %75, i32* %4, align 4
  br label %84

76:                                               ; preds = %3
  %77 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %78 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %79 = call i32 @adp5061_get_termination_current(%struct.adp5061_state* %77, %union.power_supply_propval* %78)
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %3
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.adp5061_state* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @adp5061_get_status(%struct.adp5061_state*, i32*, i32*) #1

declare dso_local i32 @ADP5061_CHG_STATUS_2_BAT_STATUS(i32) #1

declare dso_local i32 @adp5061_get_chg_type(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_input_current_limit(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_max_voltage(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_min_voltage(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_chg_volt_lim(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_const_chg_current(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_prechg_current(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_vweak_th(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_charger_status(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_battery_status(%struct.adp5061_state*, %union.power_supply_propval*) #1

declare dso_local i32 @adp5061_get_termination_current(%struct.adp5061_state*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
