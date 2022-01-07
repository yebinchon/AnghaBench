; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.da9052_battery = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DA9052_NOCHARGER = common dso_local global i32 0, align 4
@DA9052_BAT_CUTOFF_VOLT = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @da9052_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.da9052_battery*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.da9052_battery* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.da9052_battery* %12, %struct.da9052_battery** %10, align 8
  %13 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %14 = call i32 @da9052_bat_check_presence(%struct.da9052_battery* %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 133
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %94

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %89 [
    i32 132, label %30
    i32 134, label %35
    i32 133, label %45
    i32 135, label %50
    i32 128, label %55
    i32 129, label %60
    i32 136, label %65
    i32 137, label %70
    i32 130, label %75
    i32 131, label %85
  ]

30:                                               ; preds = %28
  %31 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  %34 = call i32 @da9052_bat_check_status(%struct.da9052_battery* %31, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %92

35:                                               ; preds = %28
  %36 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %37 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DA9052_NOCHARGER, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %92

45:                                               ; preds = %28
  %46 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  %49 = call i32 @da9052_bat_check_presence(%struct.da9052_battery* %46, i32* %48)
  store i32 %49, i32* %8, align 4
  br label %92

50:                                               ; preds = %28
  %51 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  %54 = call i32 @da9052_bat_check_health(%struct.da9052_battery* %51, i32* %53)
  store i32 %54, i32* %8, align 4
  br label %92

55:                                               ; preds = %28
  %56 = load i32, i32* @DA9052_BAT_CUTOFF_VOLT, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %59 = bitcast %union.power_supply_propval* %58 to i32*
  store i32 %57, i32* %59, align 4
  br label %92

60:                                               ; preds = %28
  %61 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  %64 = call i32 @da9052_bat_read_volt(%struct.da9052_battery* %61, i32* %63)
  store i32 %64, i32* %8, align 4
  br label %92

65:                                               ; preds = %28
  %66 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %67 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %68 = bitcast %union.power_supply_propval* %67 to i32*
  %69 = call i32 @da9052_read_chg_current(%struct.da9052_battery* %66, i32* %68)
  store i32 %69, i32* %8, align 4
  br label %92

70:                                               ; preds = %28
  %71 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %72 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %73 = bitcast %union.power_supply_propval* %72 to i32*
  %74 = call i32 @da9052_bat_read_capacity(%struct.da9052_battery* %71, i32* %73)
  store i32 %74, i32* %8, align 4
  br label %92

75:                                               ; preds = %28
  %76 = load %struct.da9052_battery*, %struct.da9052_battery** %10, align 8
  %77 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @da9052_adc_read_temp(i32 %78)
  %80 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %81 = bitcast %union.power_supply_propval* %80 to i32*
  store i32 %79, i32* %81, align 4
  %82 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %83 = bitcast %union.power_supply_propval* %82 to i32*
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  br label %92

85:                                               ; preds = %28
  %86 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %87 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %88 = bitcast %union.power_supply_propval* %87 to i32*
  store i32 %86, i32* %88, align 4
  br label %92

89:                                               ; preds = %28
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %85, %75, %70, %65, %60, %55, %50, %45, %35, %30
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %89, %25, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.da9052_battery* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @da9052_bat_check_presence(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @da9052_bat_check_status(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @da9052_bat_check_health(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @da9052_bat_read_volt(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @da9052_read_chg_current(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @da9052_bat_read_capacity(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @da9052_adc_read_temp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
