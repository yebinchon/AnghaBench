; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_ac_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_ac_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ab8500_charger = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ab8500_charger_ac_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_ac_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ab8500_charger*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call i32 @psy_to_ux500_charger(%struct.power_supply* %10)
  %12 = call %struct.ab8500_charger* @to_ab8500_charger_ac_device_info(i32 %11)
  store %struct.ab8500_charger* %12, %struct.ab8500_charger** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %119 [
    i32 132, label %14
    i32 131, label %57
    i32 130, label %64
    i32 128, label %71
    i32 129, label %89
    i32 133, label %101
  ]

14:                                               ; preds = %3
  %15 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %16 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i32*
  store i32 %21, i32* %23, align 4
  br label %56

24:                                               ; preds = %14
  %25 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %26 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %32 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %55

40:                                               ; preds = %30
  %41 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %42 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %20
  br label %122

57:                                               ; preds = %3
  %58 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %59 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  store i32 %61, i32* %63, align 4
  br label %122

64:                                               ; preds = %3
  %65 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %66 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 %68, i32* %70, align 4
  br label %122

71:                                               ; preds = %3
  %72 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %73 = call i32 @ab8500_charger_get_ac_voltage(%struct.ab8500_charger* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %79 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %83 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 1000
  %87 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %88 = bitcast %union.power_supply_propval* %87 to i32*
  store i32 %86, i32* %88, align 4
  br label %122

89:                                               ; preds = %3
  %90 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %91 = call i32 @ab8500_charger_ac_cv(%struct.ab8500_charger* %90)
  %92 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %93 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %96 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %100 = bitcast %union.power_supply_propval* %99 to i32*
  store i32 %98, i32* %100, align 4
  br label %122

101:                                              ; preds = %3
  %102 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %103 = call i32 @ab8500_charger_get_ac_current(%struct.ab8500_charger* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %109 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %113 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 1000
  %117 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %118 = bitcast %union.power_supply_propval* %117 to i32*
  store i32 %116, i32* %118, align 4
  br label %122

119:                                              ; preds = %3
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %123

122:                                              ; preds = %111, %89, %81, %64, %57, %56
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.ab8500_charger* @to_ab8500_charger_ac_device_info(i32) #1

declare dso_local i32 @psy_to_ux500_charger(%struct.power_supply*) #1

declare dso_local i32 @ab8500_charger_get_ac_voltage(%struct.ab8500_charger*) #1

declare dso_local i32 @ab8500_charger_ac_cv(%struct.ab8500_charger*) #1

declare dso_local i32 @ab8500_charger_get_ac_current(%struct.ab8500_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
