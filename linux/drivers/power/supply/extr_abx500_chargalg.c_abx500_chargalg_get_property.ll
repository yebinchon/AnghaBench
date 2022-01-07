; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.abx500_chargalg = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@STATE_SAFETY_TIMER_EXPIRED = common dso_local global i32 0, align 4
@STATE_SAFETY_TIMER_EXPIRED_INIT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @abx500_chargalg_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.abx500_chargalg*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.abx500_chargalg* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.abx500_chargalg* %10, %struct.abx500_chargalg** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %77 [
    i32 128, label %12
    i32 129, label %18
  ]

12:                                               ; preds = %3
  %13 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %8, align 8
  %14 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %8, align 8
  %20 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %27 = bitcast %union.power_supply_propval* %26 to i32*
  store i32 %25, i32* %27, align 4
  br label %76

28:                                               ; preds = %18
  %29 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %8, align 8
  %30 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %8, align 8
  %36 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %8, align 8
  %40 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %38, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %53

49:                                               ; preds = %34
  %50 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %75

54:                                               ; preds = %28
  %55 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %8, align 8
  %56 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @STATE_SAFETY_TIMER_EXPIRED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %8, align 8
  %62 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @STATE_SAFETY_TIMER_EXPIRED_INIT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %74

70:                                               ; preds = %60
  %71 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %72 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %73 = bitcast %union.power_supply_propval* %72 to i32*
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %24
  br label %80

77:                                               ; preds = %3
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %76, %12
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.abx500_chargalg* @power_supply_get_drvdata(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
