; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_battery_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_battery_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MAX17042_AvgVCELL = common dso_local global i32 0, align 4
@MAX17042_VCELL = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@MAX17042_VMAX_TOLERANCE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max17042_chip*, i32*)* @max17042_get_battery_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max17042_get_battery_health(%struct.max17042_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max17042_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max17042_chip* %0, %struct.max17042_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %12 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MAX17042_AvgVCELL, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %10)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %94

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %20, 625
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %7, align 4
  %25 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %26 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX17042_VCELL, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %10)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %94

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %34, 625
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, 1000
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %41 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %93

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %52 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX17042_VMAX_TOLERANCE, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp sgt i32 %50, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %93

62:                                               ; preds = %49
  %63 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %64 = call i32 @max17042_get_temperature(%struct.max17042_chip* %63, i32* %6)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %94

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %71 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  br label %93

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %82 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %80, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %93

90:                                               ; preds = %79
  %91 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87, %76, %59, %46
  store i32 0, i32* %3, align 4
  br label %96

94:                                               ; preds = %67, %32, %18
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @max17042_get_temperature(%struct.max17042_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
