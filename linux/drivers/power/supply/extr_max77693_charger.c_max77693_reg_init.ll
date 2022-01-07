; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_reg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_charger = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHG_CNFG_06_CHGPROT_SHIFT = common dso_local global i32 0, align 4
@MAX77693_CHG_REG_CHG_CNFG_06 = common dso_local global i32 0, align 4
@CHG_CNFG_06_CHGPROT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error unlocking registers: %d\0A\00", align 1
@DEFAULT_FAST_CHARGE_TIMER = common dso_local global i32 0, align 4
@DEFAULT_TOP_OFF_THRESHOLD_CURRENT = common dso_local global i32 0, align 4
@DEFAULT_TOP_OFF_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_charger*)* @max77693_reg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_reg_init(%struct.max77693_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77693_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.max77693_charger* %0, %struct.max77693_charger** %3, align 8
  %6 = load i32, i32* @CHG_CNFG_06_CHGPROT_SHIFT, align 4
  %7 = shl i32 3, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %9 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX77693_CHG_REG_CHG_CNFG_06, align 4
  %14 = load i32, i32* @CHG_CNFG_06_CHGPROT_MASK, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %21 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %96

26:                                               ; preds = %1
  %27 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %28 = load i32, i32* @DEFAULT_FAST_CHARGE_TIMER, align 4
  %29 = call i32 @max77693_set_fast_charge_timer(%struct.max77693_charger* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %96

34:                                               ; preds = %26
  %35 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %36 = load i32, i32* @DEFAULT_TOP_OFF_THRESHOLD_CURRENT, align 4
  %37 = call i32 @max77693_set_top_off_threshold_current(%struct.max77693_charger* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %96

42:                                               ; preds = %34
  %43 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %44 = load i32, i32* @DEFAULT_TOP_OFF_TIMER, align 4
  %45 = call i32 @max77693_set_top_off_timer(%struct.max77693_charger* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %96

50:                                               ; preds = %42
  %51 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %52 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %53 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @max77693_set_constant_volt(%struct.max77693_charger* %51, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %96

60:                                               ; preds = %50
  %61 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %62 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %63 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @max77693_set_min_system_volt(%struct.max77693_charger* %61, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %96

70:                                               ; preds = %60
  %71 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %72 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %73 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @max77693_set_thermal_regulation_temp(%struct.max77693_charger* %71, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %96

80:                                               ; preds = %70
  %81 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %82 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %83 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @max77693_set_batttery_overcurrent(%struct.max77693_charger* %81, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %96

90:                                               ; preds = %80
  %91 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %92 = load %struct.max77693_charger*, %struct.max77693_charger** %3, align 8
  %93 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @max77693_set_charge_input_threshold_volt(%struct.max77693_charger* %91, i32 %94)
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %88, %78, %68, %58, %48, %40, %32, %19
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77693_set_fast_charge_timer(%struct.max77693_charger*, i32) #1

declare dso_local i32 @max77693_set_top_off_threshold_current(%struct.max77693_charger*, i32) #1

declare dso_local i32 @max77693_set_top_off_timer(%struct.max77693_charger*, i32) #1

declare dso_local i32 @max77693_set_constant_volt(%struct.max77693_charger*, i32) #1

declare dso_local i32 @max77693_set_min_system_volt(%struct.max77693_charger*, i32) #1

declare dso_local i32 @max77693_set_thermal_regulation_temp(%struct.max77693_charger*, i32) #1

declare dso_local i32 @max77693_set_batttery_overcurrent(%struct.max77693_charger*, i32) #1

declare dso_local i32 @max77693_set_charge_input_threshold_volt(%struct.max77693_charger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
