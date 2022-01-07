; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.adp5061_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @adp5061_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5061_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.adp5061_state*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.adp5061_state* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.adp5061_state* %10, %struct.adp5061_state** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %60 [
    i32 132, label %12
    i32 129, label %18
    i32 128, label %24
    i32 133, label %30
    i32 134, label %36
    i32 131, label %42
    i32 130, label %48
    i32 135, label %54
  ]

12:                                               ; preds = %3
  %13 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @adp5061_set_input_current_limit(%struct.adp5061_state* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @adp5061_set_max_voltage(%struct.adp5061_state* %19, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %27 = bitcast %union.power_supply_propval* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @adp5061_set_min_voltage(%struct.adp5061_state* %25, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %63

30:                                               ; preds = %3
  %31 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @adp5061_set_const_chg_vmax(%struct.adp5061_state* %31, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %3
  %37 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @adp5061_set_const_chg_current(%struct.adp5061_state* %37, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %63

42:                                               ; preds = %3
  %43 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @adp5061_set_prechg_current(%struct.adp5061_state* %43, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %63

48:                                               ; preds = %3
  %49 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @adp5061_set_vweak_th(%struct.adp5061_state* %49, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %3
  %55 = load %struct.adp5061_state*, %struct.adp5061_state** %8, align 8
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @adp5061_set_termination_current(%struct.adp5061_state* %55, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %54, %48, %42, %36, %30, %24, %18, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.adp5061_state* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @adp5061_set_input_current_limit(%struct.adp5061_state*, i32) #1

declare dso_local i32 @adp5061_set_max_voltage(%struct.adp5061_state*, i32) #1

declare dso_local i32 @adp5061_set_min_voltage(%struct.adp5061_state*, i32) #1

declare dso_local i32 @adp5061_set_const_chg_vmax(%struct.adp5061_state*, i32) #1

declare dso_local i32 @adp5061_set_const_chg_current(%struct.adp5061_state*, i32) #1

declare dso_local i32 @adp5061_set_prechg_current(%struct.adp5061_state*, i32) #1

declare dso_local i32 @adp5061_set_vweak_th(%struct.adp5061_state*, i32) #1

declare dso_local i32 @adp5061_set_termination_current(%struct.adp5061_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
