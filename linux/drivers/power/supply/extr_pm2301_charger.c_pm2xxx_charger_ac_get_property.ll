; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_ac_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_ac_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.pm2xxx_charger = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @pm2xxx_charger_ac_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2xxx_charger_ac_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.pm2xxx_charger*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call i32 @psy_to_ux500_charger(%struct.power_supply* %9)
  %11 = call %struct.pm2xxx_charger* @to_pm2xxx_charger_ac_device_info(i32 %10)
  store %struct.pm2xxx_charger* %11, %struct.pm2xxx_charger** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %87 [
    i32 131, label %13
    i32 130, label %61
    i32 129, label %68
    i32 128, label %75
  ]

13:                                               ; preds = %3
  %14 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %15 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %60

23:                                               ; preds = %13
  %24 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %25 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %59

33:                                               ; preds = %23
  %34 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %35 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %58

43:                                               ; preds = %33
  %44 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %45 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %29
  br label %60

60:                                               ; preds = %59, %19
  br label %90

61:                                               ; preds = %3
  %62 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %63 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %67 = bitcast %union.power_supply_propval* %66 to i32*
  store i32 %65, i32* %67, align 4
  br label %90

68:                                               ; preds = %3
  %69 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %70 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 %72, i32* %74, align 4
  br label %90

75:                                               ; preds = %3
  %76 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %77 = call i32 @pm2xxx_charger_get_ac_cv(%struct.pm2xxx_charger* %76)
  %78 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %79 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %8, align 8
  %82 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %90

87:                                               ; preds = %3
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %75, %68, %61, %60
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.pm2xxx_charger* @to_pm2xxx_charger_ac_device_info(i32) #1

declare dso_local i32 @psy_to_ux500_charger(%struct.power_supply*) #1

declare dso_local i32 @pm2xxx_charger_get_ac_cv(%struct.pm2xxx_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
