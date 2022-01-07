; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ipaq_micro_battery.c_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.micro_battery = type { i32 }

@MICRO_BATT_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@MICRO_BATT_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@MICRO_BATT_STATUS_CHARGING = common dso_local global i32 0, align 4
@MICRO_BATT_STATUS_CHARGEMAIN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*)* @get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_status(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  %4 = alloca %struct.micro_battery*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %5 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.micro_battery* @dev_get_drvdata(i32 %8)
  store %struct.micro_battery* %9, %struct.micro_battery** %4, align 8
  %10 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %11 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MICRO_BATT_STATUS_UNKNOWN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %19 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MICRO_BATT_STATUS_FULL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %28 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MICRO_BATT_STATUS_CHARGING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.micro_battery*, %struct.micro_battery** %4, align 8
  %35 = getelementptr inbounds %struct.micro_battery, %struct.micro_battery* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MICRO_BATT_STATUS_CHARGEMAIN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %26
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %24, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.micro_battery* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
