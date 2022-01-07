; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_batt_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_batt_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.pm860x_battery_info = type { i32 }

@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@OCV_MODE_ACTIVE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @pm860x_batt_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_batt_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.pm860x_battery_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pm860x_battery_info* @dev_get_drvdata(i32 %14)
  store %struct.pm860x_battery_info* %15, %struct.pm860x_battery_info** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %109 [
    i32 132, label %17
    i32 134, label %23
    i32 131, label %49
    i32 128, label %53
    i32 129, label %66
    i32 133, label %78
    i32 130, label %89
  ]

17:                                               ; preds = %3
  %18 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %19 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %112

23:                                               ; preds = %3
  %24 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %25 = call i32 @calc_capacity(%struct.pm860x_battery_info* %24, i32* %9)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %113

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 100
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 100, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %41 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 100, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %9, align 4
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %112

49:                                               ; preds = %3
  %50 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %112

53:                                               ; preds = %3
  %54 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %55 = load i32, i32* @OCV_MODE_ACTIVE, align 4
  %56 = call i32 @measure_vbatt(%struct.pm860x_battery_info* %54, i32 %55, i32* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %113

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %112

66:                                               ; preds = %3
  %67 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %68 = call i32 @calc_ocv(%struct.pm860x_battery_info* %67, i32* %9)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %113

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %77 = bitcast %union.power_supply_propval* %76 to i32*
  store i32 %75, i32* %77, align 4
  br label %112

78:                                               ; preds = %3
  %79 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %80 = call i32 @measure_current(%struct.pm860x_battery_info* %79, i32* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %113

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  %87 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %88 = bitcast %union.power_supply_propval* %87 to i32*
  store i32 %86, i32* %88, align 4
  br label %112

89:                                               ; preds = %3
  %90 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %91 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %96 = call i32 @measure_temp(%struct.pm860x_battery_info* %95, i32* %9)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %113

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %102, 10
  store i32 %103, i32* %9, align 4
  br label %105

104:                                              ; preds = %89
  store i32 250, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %9, align 4
  %107 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %108 = bitcast %union.power_supply_propval* %107 to i32*
  store i32 %106, i32* %108, align 4
  br label %112

109:                                              ; preds = %3
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %105, %85, %73, %61, %49, %45, %17
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %109, %99, %83, %71, %59, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.pm860x_battery_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @calc_capacity(%struct.pm860x_battery_info*, i32*) #1

declare dso_local i32 @measure_vbatt(%struct.pm860x_battery_info*, i32, i32*) #1

declare dso_local i32 @calc_ocv(%struct.pm860x_battery_info*, i32*) #1

declare dso_local i32 @measure_current(%struct.pm860x_battery_info*, i32*) #1

declare dso_local i32 @measure_temp(%struct.pm860x_battery_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
