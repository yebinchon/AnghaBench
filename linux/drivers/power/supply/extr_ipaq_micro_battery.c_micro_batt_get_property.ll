; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_micro_batt_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_micro_batt_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.micro_battery = type { i32, i32, i32 }

@POWER_SUPPLY_TECHNOLOGY_NiCd = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_NiMH = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LIPO = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @micro_batt_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micro_batt_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.micro_battery*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.micro_battery* @dev_get_drvdata(i32 %12)
  store %struct.micro_battery* %13, %struct.micro_battery** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %65 [
    i32 131, label %15
    i32 132, label %40
    i32 129, label %45
    i32 133, label %48
    i32 130, label %53
    i32 128, label %59
  ]

15:                                               ; preds = %3
  %16 = load %struct.micro_battery*, %struct.micro_battery** %8, align 8
  %17 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 135, label %19
    i32 134, label %23
    i32 137, label %27
    i32 136, label %31
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_NiCd, align 4
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %39

23:                                               ; preds = %15
  %24 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_NiMH, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %39

27:                                               ; preds = %15
  %28 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %39

31:                                               ; preds = %15
  %32 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LIPO, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %15
  %36 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_UNKNOWN, align 4
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31, %27, %23, %19
  br label %68

40:                                               ; preds = %3
  %41 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %42 = call i32 @get_status(%struct.power_supply* %41)
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %68

45:                                               ; preds = %3
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  store i32 4700000, i32* %47, align 4
  br label %68

48:                                               ; preds = %3
  %49 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %50 = call i32 @get_capacity(%struct.power_supply* %49)
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %68

53:                                               ; preds = %3
  %54 = load %struct.micro_battery*, %struct.micro_battery** %8, align 8
  %55 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  br label %68

59:                                               ; preds = %3
  %60 = load %struct.micro_battery*, %struct.micro_battery** %8, align 8
  %61 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %68

65:                                               ; preds = %3
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %59, %53, %48, %45, %40, %39
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.micro_battery* @dev_get_drvdata(i32) #1

declare dso_local i32 @get_status(%struct.power_supply*) #1

declare dso_local i32 @get_capacity(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
