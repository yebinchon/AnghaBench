; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lego_ev3_battery.c_lego_ev3_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lego_ev3_battery.c_lego_ev3_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.lego_ev3_battery = type { i32, i32, i32, i32, i32 }

@POWER_SUPPLY_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @lego_ev3_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lego_ev3_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.lego_ev3_battery*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.lego_ev3_battery* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.lego_ev3_battery* %12, %struct.lego_ev3_battery** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %94 [
    i32 131, label %14
    i32 128, label %20
    i32 130, label %58
    i32 129, label %64
    i32 133, label %70
    i32 132, label %90
  ]

14:                                               ; preds = %3
  %15 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %16 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %19 = bitcast %union.power_supply_propval* %18 to i32*
  store i32 %17, i32* %19, align 4
  br label %97

20:                                               ; preds = %3
  %21 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %22 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  %26 = call i32 @iio_read_channel_processed(i32 %23, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %98

31:                                               ; preds = %20
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2000
  store i32 %35, i32* %33, align 4
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 50000
  store i32 %39, i32* %37, align 4
  %40 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %41 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @iio_read_channel_processed(i32 %42, i32* %10)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %98

48:                                               ; preds = %31
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 1000
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sdiv i32 %51, 15
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %97

58:                                               ; preds = %3
  %59 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %60 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  store i32 %61, i32* %63, align 4
  br label %97

64:                                               ; preds = %3
  %65 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %66 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %97

70:                                               ; preds = %3
  %71 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %72 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i32*
  %76 = call i32 @iio_read_channel_processed(i32 %73, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %98

81:                                               ; preds = %70
  %82 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %83 = bitcast %union.power_supply_propval* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 20000
  store i32 %85, i32* %83, align 4
  %86 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %87 = bitcast %union.power_supply_propval* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 15
  store i32 %89, i32* %87, align 4
  br label %97

90:                                               ; preds = %3
  %91 = load i32, i32* @POWER_SUPPLY_SCOPE_SYSTEM, align 4
  %92 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %93 = bitcast %union.power_supply_propval* %92 to i32*
  store i32 %91, i32* %93, align 4
  br label %97

94:                                               ; preds = %3
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %90, %81, %64, %58, %48, %14
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %94, %79, %46, %29
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.lego_ev3_battery* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @iio_read_channel_processed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
