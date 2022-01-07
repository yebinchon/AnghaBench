; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max8903_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max8903_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8903_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.max8903_data*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.max8903_data* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.max8903_data* %10, %struct.max8903_data** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %85 [
    i32 128, label %12
    i32 129, label %56
    i32 130, label %72
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load %struct.max8903_data*, %struct.max8903_data** %8, align 8
  %17 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpio_is_valid(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %12
  %24 = load %struct.max8903_data*, %struct.max8903_data** %8, align 8
  %25 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpio_get_value(i32 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %54

35:                                               ; preds = %23
  %36 = load %struct.max8903_data*, %struct.max8903_data** %8, align 8
  %37 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.max8903_data*, %struct.max8903_data** %8, align 8
  %42 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %12
  br label %88

56:                                               ; preds = %3
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 0, i32* %58, align 4
  %59 = load %struct.max8903_data*, %struct.max8903_data** %8, align 8
  %60 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load %struct.max8903_data*, %struct.max8903_data** %8, align 8
  %65 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %56
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %88

72:                                               ; preds = %3
  %73 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i32*
  store i32 %73, i32* %75, align 4
  %76 = load %struct.max8903_data*, %struct.max8903_data** %8, align 8
  %77 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %82 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %83 = bitcast %union.power_supply_propval* %82 to i32*
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %72
  br label %88

85:                                               ; preds = %3
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %89

88:                                               ; preds = %84, %71, %55
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.max8903_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
