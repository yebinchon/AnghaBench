; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ingenic-battery.c_ingenic_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ingenic-battery.c_ingenic_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ingenic_battery = type { i32, %struct.power_supply_battery_info }
%struct.power_supply_battery_info = type { i32, i32 }

@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ingenic_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ingenic_battery*, align 8
  %9 = alloca %struct.power_supply_battery_info*, align 8
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.ingenic_battery* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.ingenic_battery* %12, %struct.ingenic_battery** %8, align 8
  %13 = load %struct.ingenic_battery*, %struct.ingenic_battery** %8, align 8
  %14 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %13, i32 0, i32 1
  store %struct.power_supply_battery_info* %14, %struct.power_supply_battery_info** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %81 [
    i32 131, label %16
    i32 128, label %57
    i32 129, label %69
    i32 130, label %75
  ]

16:                                               ; preds = %3
  %17 = load %struct.ingenic_battery*, %struct.ingenic_battery** %8, align 8
  %18 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  %22 = call i32 @iio_read_channel_processed(i32 %19, i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %24 = bitcast %union.power_supply_propval* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 1000
  store i32 %26, i32* %24, align 4
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %28 = bitcast %union.power_supply_propval* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %9, align 8
  %31 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %16
  %35 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %55

38:                                               ; preds = %16
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %9, align 8
  %43 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %38
  %51 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %84

57:                                               ; preds = %3
  %58 = load %struct.ingenic_battery*, %struct.ingenic_battery** %8, align 8
  %59 = getelementptr inbounds %struct.ingenic_battery, %struct.ingenic_battery* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  %63 = call i32 @iio_read_channel_processed(i32 %60, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 1000
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %84

69:                                               ; preds = %3
  %70 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %9, align 8
  %71 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %84

75:                                               ; preds = %3
  %76 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %9, align 8
  %77 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %80 = bitcast %union.power_supply_propval* %79 to i32*
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %84

81:                                               ; preds = %3
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %75, %69, %57, %55
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.ingenic_battery* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @iio_read_channel_processed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
