; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lt3651-charger.c_lt3651_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lt3651-charger.c_lt3651_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.lt3651_charger = type { i32, i32, i32 }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @lt3651_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lt3651_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.lt3651_charger*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.lt3651_charger* @psy_to_lt3651_charger(%struct.power_supply* %9)
  store %struct.lt3651_charger* %10, %struct.lt3651_charger** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %85 [
    i32 128, label %12
    i32 129, label %36
    i32 130, label %43
  ]

12:                                               ; preds = %3
  %13 = load %struct.lt3651_charger*, %struct.lt3651_charger** %8, align 8
  %14 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  br label %88

21:                                               ; preds = %12
  %22 = load %struct.lt3651_charger*, %struct.lt3651_charger** %8, align 8
  %23 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_get_value(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %88

36:                                               ; preds = %3
  %37 = load %struct.lt3651_charger*, %struct.lt3651_charger** %8, align 8
  %38 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gpiod_get_value(i32 %39)
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %88

43:                                               ; preds = %3
  %44 = load %struct.lt3651_charger*, %struct.lt3651_charger** %8, align 8
  %45 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %88

52:                                               ; preds = %43
  %53 = load %struct.lt3651_charger*, %struct.lt3651_charger** %8, align 8
  %54 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpiod_get_value(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %60 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %61 = bitcast %union.power_supply_propval* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %88

62:                                               ; preds = %52
  %63 = load %struct.lt3651_charger*, %struct.lt3651_charger** %8, align 8
  %64 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 %68, i32* %70, align 4
  br label %88

71:                                               ; preds = %62
  %72 = load %struct.lt3651_charger*, %struct.lt3651_charger** %8, align 8
  %73 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpiod_get_value(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  br label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i32*
  store i32 %82, i32* %84, align 4
  br label %88

85:                                               ; preds = %3
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %89

88:                                               ; preds = %81, %67, %58, %48, %36, %35, %17
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.lt3651_charger* @psy_to_lt3651_charger(%struct.power_supply*) #1

declare dso_local i32 @gpiod_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
