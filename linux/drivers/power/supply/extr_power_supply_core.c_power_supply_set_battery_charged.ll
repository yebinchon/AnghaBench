; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_set_battery_charged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_set_battery_charged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, {}* }

@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_set_battery_charged(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %4 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %5 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 1
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @POWER_SUPPLY_TYPE_BATTERY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %8
  %17 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %18 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = bitcast {}** %20 to i32 (%struct.power_supply*)**
  %22 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %21, align 8
  %23 = icmp ne i32 (%struct.power_supply*)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %26 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = bitcast {}** %28 to i32 (%struct.power_supply*)**
  %30 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %29, align 8
  %31 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %32 = call i32 %30(%struct.power_supply* %31)
  store i32 0, i32* %2, align 4
  br label %36

33:                                               ; preds = %16, %8, %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
