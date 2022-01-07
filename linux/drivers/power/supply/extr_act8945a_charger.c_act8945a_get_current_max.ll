; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_current_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_current_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.act8945a_charger = type { i32 }
%struct.regmap = type { i32 }

@ACT8945A_APCH_STATUS = common dso_local global i32 0, align 4
@ACT8945A_APCH_STATE = common dso_local global i32 0, align 4
@APCH_STATE_ACINSTAT = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE_SHIFT = common dso_local global i32 0, align 4
@MAX_CURRENT_AC_HIGH_PRE = common dso_local global i32 0, align 4
@MAX_CURRENT_AC_LOW_PRE = common dso_local global i32 0, align 4
@MAX_CURRENT_USB_PRE = common dso_local global i32 0, align 4
@MAX_CURRENT_AC_HIGH = common dso_local global i32 0, align 4
@MAX_CURRENT_AC_LOW = common dso_local global i32 0, align 4
@MAX_CURRENT_USB_HIGH = common dso_local global i32 0, align 4
@MAX_CURRENT_USB_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.act8945a_charger*, %struct.regmap*, i32*)* @act8945a_get_current_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_get_current_max(%struct.act8945a_charger* %0, %struct.regmap* %1, i32* %2) #0 {
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
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.regmap*, %struct.regmap** %6, align 8
  %26 = load i32, i32* @ACT8945A_APCH_STATE, align 4
  %27 = call i32 @regmap_read(%struct.regmap* %25, i32 %26, i32* %10)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %89

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @APCH_STATE_ACINSTAT, align 4
  %35 = and i32 %33, %34
  %36 = lshr i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @APCH_STATE_CSTATE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @APCH_STATE_CSTATE_SHIFT, align 4
  %41 = load i32, i32* %10, align 4
  %42 = lshr i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %86 [
    i32 128, label %44
    i32 129, label %61
    i32 130, label %85
    i32 131, label %85
  ]

44:                                               ; preds = %32
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @MAX_CURRENT_AC_HIGH_PRE, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @MAX_CURRENT_AC_LOW_PRE, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @MAX_CURRENT_USB_PRE, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %56
  br label %88

61:                                               ; preds = %32
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @MAX_CURRENT_AC_HIGH, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @MAX_CURRENT_AC_LOW, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %84

74:                                               ; preds = %61
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @MAX_CURRENT_USB_HIGH, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @MAX_CURRENT_USB_LOW, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %73
  br label %88

85:                                               ; preds = %32, %32
  br label %86

86:                                               ; preds = %32, %85
  %87 = load i32*, i32** %7, align 8
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %84, %60
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %30, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
