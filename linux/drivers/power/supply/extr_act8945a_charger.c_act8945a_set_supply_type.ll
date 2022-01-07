; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_set_supply_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_set_supply_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.act8945a_charger = type { i32 }

@ACT8945A_APCH_STATUS = common dso_local global i32 0, align 4
@ACT8945A_APCH_STATE = common dso_local global i32 0, align 4
@APCH_STATUS_INDAT = common dso_local global i32 0, align 4
@APCH_STATE_ACINSTAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.act8945a_charger*, i32*)* @act8945a_set_supply_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_set_supply_type(%struct.act8945a_charger* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.act8945a_charger*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.act8945a_charger* %0, %struct.act8945a_charger** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %10 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ACT8945A_APCH_STATUS, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %20 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACT8945A_APCH_STATE, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @APCH_STATUS_INDAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @APCH_STATE_ACINSTAT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %44
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %26, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
