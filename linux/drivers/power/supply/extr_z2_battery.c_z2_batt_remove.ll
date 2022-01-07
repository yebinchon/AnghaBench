; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.z2_charger = type { %struct.TYPE_2__, i32, i32, %struct.z2_battery_info* }
%struct.TYPE_2__ = type { %struct.z2_charger* }
%struct.z2_battery_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @z2_batt_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z2_batt_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.z2_charger*, align 8
  %4 = alloca %struct.z2_battery_info*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.z2_charger* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.z2_charger* %6, %struct.z2_charger** %3, align 8
  %7 = load %struct.z2_charger*, %struct.z2_charger** %3, align 8
  %8 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %7, i32 0, i32 3
  %9 = load %struct.z2_battery_info*, %struct.z2_battery_info** %8, align 8
  store %struct.z2_battery_info* %9, %struct.z2_battery_info** %4, align 8
  %10 = load %struct.z2_charger*, %struct.z2_charger** %3, align 8
  %11 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %10, i32 0, i32 2
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.z2_charger*, %struct.z2_charger** %3, align 8
  %14 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @power_supply_unregister(i32 %15)
  %17 = load %struct.z2_charger*, %struct.z2_charger** %3, align 8
  %18 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.z2_charger*, %struct.z2_charger** %19, align 8
  %21 = call i32 @kfree(%struct.z2_charger* %20)
  %22 = load %struct.z2_battery_info*, %struct.z2_battery_info** %4, align 8
  %23 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.z2_battery_info*, %struct.z2_battery_info** %4, align 8
  %28 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @gpio_is_valid(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.z2_battery_info*, %struct.z2_battery_info** %4, align 8
  %34 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @gpio_to_irq(i64 %35)
  %37 = load %struct.z2_charger*, %struct.z2_charger** %3, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.z2_charger* %37)
  %39 = load %struct.z2_battery_info*, %struct.z2_battery_info** %4, align 8
  %40 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpio_free(i64 %41)
  br label %43

43:                                               ; preds = %32, %26, %1
  %44 = load %struct.z2_charger*, %struct.z2_charger** %3, align 8
  %45 = call i32 @kfree(%struct.z2_charger* %44)
  ret i32 0
}

declare dso_local %struct.z2_charger* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @kfree(%struct.z2_charger*) #1

declare dso_local i64 @gpio_is_valid(i64) #1

declare dso_local i32 @free_irq(i32, %struct.z2_charger*) #1

declare dso_local i32 @gpio_to_irq(i64) #1

declare dso_local i32 @gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
