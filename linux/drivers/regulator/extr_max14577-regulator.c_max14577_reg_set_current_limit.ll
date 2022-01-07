; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max14577-regulator.c_max14577_reg_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max14577-regulator.c_max14577_reg_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maxim_charger_current = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.max14577 = type { i64 }

@maxim_charger_currents = common dso_local global %struct.maxim_charger_current* null, align 8
@MAX14577_CHARGER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX14577_CHG_REG_CHG_CTRL4 = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCL_MASK = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @max14577_reg_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_reg_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.max14577*, align 8
  %11 = alloca %struct.maxim_charger_current*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %13 = call %struct.max14577* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.max14577* %13, %struct.max14577** %10, align 8
  %14 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** @maxim_charger_currents, align 8
  %15 = load %struct.max14577*, %struct.max14577** %10, align 8
  %16 = getelementptr inbounds %struct.max14577, %struct.max14577* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %14, i64 %17
  store %struct.maxim_charger_current* %18, %struct.maxim_charger_current** %11, align 8
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %20 = call i64 @rdev_get_id(%struct.regulator_dev* %19)
  %21 = load i64, i64* @MAX14577_CHARGER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @maxim_charger_calc_reg_current(%struct.maxim_charger_current* %27, i32 %28, i32 %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAX14577_CHG_REG_CHG_CTRL4, align 4
  %40 = load i32, i32* @CHGCTRL4_MBCICHWRCL_MASK, align 4
  %41 = load i32, i32* @CHGCTRL4_MBCICHWRCH_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @max14577_update_reg(i32 %38, i32 %39, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %33, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.max14577* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @maxim_charger_calc_reg_current(%struct.maxim_charger_current*, i32, i32, i32*) #1

declare dso_local i32 @max14577_update_reg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
