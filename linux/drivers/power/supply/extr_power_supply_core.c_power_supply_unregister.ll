; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"powers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @power_supply_unregister(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %3 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %4 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %3, i32 0, i32 4
  %5 = call i32 @atomic_dec_return(i32* %4)
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %8 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 3
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %13 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 2
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %16 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @sysfs_remove_link(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %20 = call i32 @power_supply_remove_hwmon_sysfs(%struct.power_supply* %19)
  %21 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %22 = call i32 @power_supply_remove_triggers(%struct.power_supply* %21)
  %23 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %24 = call i32 @psy_unregister_cooler(%struct.power_supply* %23)
  %25 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %26 = call i32 @psy_unregister_thermal(%struct.power_supply* %25)
  %27 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %28 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %27, i32 0, i32 1
  %29 = call i32 @device_init_wakeup(%struct.TYPE_3__* %28, i32 0)
  %30 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %31 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %30, i32 0, i32 1
  %32 = call i32 @device_unregister(%struct.TYPE_3__* %31)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @power_supply_remove_hwmon_sysfs(%struct.power_supply*) #1

declare dso_local i32 @power_supply_remove_triggers(%struct.power_supply*) #1

declare dso_local i32 @psy_unregister_cooler(%struct.power_supply*) #1

declare dso_local i32 @psy_unregister_thermal(%struct.power_supply*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @device_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
