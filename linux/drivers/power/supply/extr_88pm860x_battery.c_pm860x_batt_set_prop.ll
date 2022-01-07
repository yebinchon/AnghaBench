; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_batt_set_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_batt_set_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.pm860x_battery_info = type { i32, i32 }

@ccnt_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"chg done, update soc = %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @pm860x_batt_set_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_batt_set_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.pm860x_battery_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pm860x_battery_info* @dev_get_drvdata(i32 %12)
  store %struct.pm860x_battery_info* %13, %struct.pm860x_battery_info** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %27 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %17 = call i32 @clear_ccnt(%struct.pm860x_battery_info* %16, i32* @ccnt_data)
  %18 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %19 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %18, i32 0, i32 0
  store i32 100, i32* %19, align 4
  %20 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %21 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %8, align 8
  %24 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.pm860x_battery_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @clear_ccnt(%struct.pm860x_battery_info*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
