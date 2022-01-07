; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max14577-regulator.c_max14577_reg_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max14577-regulator.c_max14577_reg_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maxim_charger_current = type { i32, i32, i32 }
%struct.regulator_dev = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.max14577 = type { i64 }

@maxim_charger_currents = common dso_local global %struct.maxim_charger_current* null, align 8
@MAX14577_CHARGER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX14577_CHG_REG_CHG_CTRL4 = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCL_MASK = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCH_MASK = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max14577_reg_get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_reg_get_current_limit(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.max14577*, align 8
  %7 = alloca %struct.maxim_charger_current*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %5, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call %struct.max14577* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.max14577* %12, %struct.max14577** %6, align 8
  %13 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** @maxim_charger_currents, align 8
  %14 = load %struct.max14577*, %struct.max14577** %6, align 8
  %15 = getelementptr inbounds %struct.max14577, %struct.max14577* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %13, i64 %16
  store %struct.maxim_charger_current* %17, %struct.maxim_charger_current** %7, align 8
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %19 = call i64 @rdev_get_id(%struct.regulator_dev* %18)
  %20 = load i64, i64* @MAX14577_CHARGER, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = load i32, i32* @MAX14577_CHG_REG_CHG_CTRL4, align 4
  %28 = call i32 @max14577_read_reg(%struct.regmap* %26, i32 %27, i32* %4)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CHGCTRL4_MBCICHWRCL_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %7, align 8
  %35 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @CHGCTRL4_MBCICHWRCH_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @CHGCTRL4_MBCICHWRCH_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %4, align 4
  %43 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %7, align 8
  %44 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %7, align 8
  %48 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = add nsw i32 %45, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %37, %33, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.max14577* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max14577_read_reg(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
