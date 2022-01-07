; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, i32, i32, i32 }

@poll_interval = common dso_local global i64 0, align 8
@bq27xxx_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bq27xxx_battery_teardown(%struct.bq27xxx_device_info* %0) #0 {
  %2 = alloca %struct.bq27xxx_device_info*, align 8
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %2, align 8
  store i64 0, i64* @poll_interval, align 8
  %3 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %4 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %3, i32 0, i32 3
  %5 = call i32 @cancel_delayed_work_sync(i32* %4)
  %6 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %7 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @power_supply_unregister(i32 %8)
  %10 = call i32 @mutex_lock(i32* @bq27xxx_list_lock)
  %11 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %12 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %11, i32 0, i32 1
  %13 = call i32 @list_del(i32* %12)
  %14 = call i32 @mutex_unlock(i32* @bq27xxx_list_lock)
  %15 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %2, align 8
  %16 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %15, i32 0, i32 0
  %17 = call i32 @mutex_destroy(i32* %16)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
