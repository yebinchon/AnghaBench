; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_capacity_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_capacity_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.act8945a_charger = type { i32 }
%struct.regmap = type { i32 }

@ACT8945A_APCH_STATUS = common dso_local global i32 0, align 4
@ACT8945A_APCH_CFG = common dso_local global i32 0, align 4
@ACT8945A_APCH_STATE = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_LOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_HIGH = common dso_local global i32 0, align 4
@APCH_STATUS_CHGDAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@APCH_CFG_SUSCHG = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@APCH_STATUS_INDAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.act8945a_charger*, %struct.regmap*, i32*)* @act8945a_get_capacity_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_get_capacity_level(%struct.act8945a_charger* %0, %struct.regmap* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.act8945a_charger*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.act8945a_charger* %0, %struct.act8945a_charger** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %14 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_get_value(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.regmap*, %struct.regmap** %6, align 8
  %18 = load i32, i32* @ACT8945A_APCH_STATUS, align 4
  %19 = call i32 @regmap_read(%struct.regmap* %17, i32 %18, i32* %9)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %99

24:                                               ; preds = %3
  %25 = load %struct.regmap*, %struct.regmap** %6, align 8
  %26 = load i32, i32* @ACT8945A_APCH_CFG, align 4
  %27 = call i32 @regmap_read(%struct.regmap* %25, i32 %26, i32* %11)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %99

32:                                               ; preds = %24
  %33 = load %struct.regmap*, %struct.regmap** %6, align 8
  %34 = load i32, i32* @ACT8945A_APCH_STATE, align 4
  %35 = call i32 @regmap_read(%struct.regmap* %33, i32 %34, i32* %10)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %99

40:                                               ; preds = %32
  %41 = load i32, i32* @APCH_STATE_CSTATE, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @APCH_STATE_CSTATE_SHIFT, align 4
  %45 = load i32, i32* %10, align 4
  %46 = lshr i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %74 [
    i32 128, label %48
    i32 129, label %51
    i32 130, label %61
    i32 131, label %73
  ]

48:                                               ; preds = %40
  %49 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %98

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_HIGH, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %98

61:                                               ; preds = %40
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @APCH_STATUS_CHGDAT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %98

73:                                               ; preds = %40
  br label %74

74:                                               ; preds = %40, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @APCH_CFG_SUSCHG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %97

82:                                               ; preds = %74
  %83 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @APCH_STATUS_INDAT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %79
  br label %98

98:                                               ; preds = %97, %72, %60, %48
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %38, %30, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
