; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_get_charger_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_get_charger_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_charger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@MAX14577_CHG_REG_CHG_CTRL2 = common dso_local global i32 0, align 4
@CHGCTRL2_MBCHOSTEN_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@MAX14577_CHG_REG_STATUS3 = common dso_local global i32 0, align 4
@STATUS3_CGMBC_MASK = common dso_local global i32 0, align 4
@STATUS3_EOC_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_charger*, i32*)* @max14577_get_charger_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_get_charger_state(%struct.max14577_charger* %0, i32* %1) #0 {
  %3 = alloca %struct.max14577_charger*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max14577_charger* %0, %struct.max14577_charger** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %9 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load %struct.regmap*, %struct.regmap** %5, align 8
  %14 = load i32, i32* @MAX14577_CHG_REG_CHG_CTRL2, align 4
  %15 = call i32 @max14577_read_reg(%struct.regmap* %13, i32 %14, i32* %7)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %54

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CHGCTRL2_MBCHOSTEN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %54

27:                                               ; preds = %19
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  %29 = load i32, i32* @MAX14577_CHG_REG_STATUS3, align 4
  %30 = call i32 @max14577_read_reg(%struct.regmap* %28, i32 %29, i32* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %54

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @STATUS3_CGMBC_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @STATUS3_EOC_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %50, %33, %24, %18
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @max14577_read_reg(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
