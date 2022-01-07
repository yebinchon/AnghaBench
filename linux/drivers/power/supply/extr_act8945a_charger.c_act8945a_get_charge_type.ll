; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_charge_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_charge_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@ACT8945A_APCH_STATUS = common dso_local global i32 0, align 4
@ACT8945A_APCH_STATE = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@APCH_STATUS_INDAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32*)* @act8945a_get_charge_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_get_charge_type(%struct.regmap* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.regmap*, %struct.regmap** %4, align 8
  %10 = load i32, i32* @ACT8945A_APCH_STATUS, align 4
  %11 = call i32 @regmap_read(%struct.regmap* %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.regmap*, %struct.regmap** %4, align 8
  %18 = load i32, i32* @ACT8945A_APCH_STATE, align 4
  %19 = call i32 @regmap_read(%struct.regmap* %17, i32 %18, i32* %8)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %16
  %25 = load i32, i32* @APCH_STATE_CSTATE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @APCH_STATE_CSTATE_SHIFT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = lshr i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %42 [
    i32 128, label %32
    i32 129, label %35
    i32 130, label %38
    i32 131, label %41
  ]

32:                                               ; preds = %24
  %33 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %54

35:                                               ; preds = %24
  %36 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %54

38:                                               ; preds = %24
  %39 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %54

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %24, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @APCH_STATUS_INDAT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_UNKNOWN, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %38, %35, %32
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %22, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
