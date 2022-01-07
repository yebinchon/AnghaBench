; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_init_fast_charge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_init_fast_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maxim_charger_current = type { i32 }
%struct.max14577_charger = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@maxim_charger_currents = common dso_local global %struct.maxim_charger_current* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Wrong value for fast charge: %u\0A\00", align 1
@MAX14577_CHG_REG_CHG_CTRL4 = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCL_MASK = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_charger*, i32)* @max14577_init_fast_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_init_fast_charge(%struct.max14577_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max14577_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.maxim_charger_current*, align 8
  store %struct.max14577_charger* %0, %struct.max14577_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** @maxim_charger_currents, align 8
  %10 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %11 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %9, i64 %14
  store %struct.maxim_charger_current* %15, %struct.maxim_charger_current** %8, align 8
  %16 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @maxim_charger_calc_reg_current(%struct.maxim_charger_current* %16, i32 %17, i32 %18, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %24 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %31 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MAX14577_CHG_REG_CHG_CTRL4, align 4
  %36 = load i32, i32* @CHGCTRL4_MBCICHWRCL_MASK, align 4
  %37 = load i32, i32* @CHGCTRL4_MBCICHWRCH_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @max14577_update_reg(i32 %34, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @maxim_charger_calc_reg_current(%struct.maxim_charger_current*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max14577_update_reg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
