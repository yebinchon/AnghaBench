; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*)* @bq27xxx_battery_read_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_read_health(%struct.bq27xxx_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq27xxx_device_info*, align 8
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %3, align 8
  %4 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %5 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %6 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bq27xxx_battery_overtemp(%struct.bq27xxx_device_info* %4, i32 %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %16 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %17 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bq27xxx_battery_undertemp(%struct.bq27xxx_device_info* %15, i32 %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %14
  %26 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %27 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %28 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bq27xxx_battery_dead(%struct.bq27xxx_device_info* %26, i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %34, %23, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bq27xxx_battery_overtemp(%struct.bq27xxx_device_info*, i32) #1

declare dso_local i32 @bq27xxx_battery_undertemp(%struct.bq27xxx_device_info*, i32) #1

declare dso_local i32 @bq27xxx_battery_dead(%struct.bq27xxx_device_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
