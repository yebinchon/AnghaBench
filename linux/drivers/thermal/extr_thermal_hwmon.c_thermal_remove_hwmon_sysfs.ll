; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_hwmon.c_thermal_remove_hwmon_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_hwmon.c_thermal_remove_hwmon_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }
%struct.thermal_hwmon_device = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.thermal_hwmon_temp = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }

@.str = private unnamed_addr constant [29 x i8] c"hwmon device lookup failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"temperature input lookup failed!\0A\00", align 1
@thermal_hwmon_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thermal_remove_hwmon_sysfs(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca %struct.thermal_zone_device*, align 8
  %3 = alloca %struct.thermal_hwmon_device*, align 8
  %4 = alloca %struct.thermal_hwmon_temp*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %2, align 8
  %5 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %6 = call %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_by_type(%struct.thermal_zone_device* %5)
  %7 = bitcast %struct.thermal_hwmon_temp* %6 to %struct.thermal_hwmon_device*
  store %struct.thermal_hwmon_device* %7, %struct.thermal_hwmon_device** %3, align 8
  %8 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %9 = icmp ne %struct.thermal_hwmon_device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %16 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %77

18:                                               ; preds = %1
  %19 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %20 = bitcast %struct.thermal_hwmon_device* %19 to %struct.thermal_hwmon_temp*
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %22 = call %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_temp(%struct.thermal_hwmon_temp* %20, %struct.thermal_zone_device* %21)
  store %struct.thermal_hwmon_temp* %22, %struct.thermal_hwmon_temp** %4, align 8
  %23 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %4, align 8
  %24 = icmp ne %struct.thermal_hwmon_temp* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %31 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %77

33:                                               ; preds = %18
  %34 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %35 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %4, align 8
  %38 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @device_remove_file(i32 %36, i32* %39)
  %41 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %42 = call i64 @thermal_zone_crit_temp_valid(%struct.thermal_zone_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %46 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %4, align 8
  %49 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @device_remove_file(i32 %47, i32* %50)
  br label %52

52:                                               ; preds = %44, %33
  %53 = call i32 @mutex_lock(i32* @thermal_hwmon_list_lock)
  %54 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %4, align 8
  %55 = getelementptr inbounds %struct.thermal_hwmon_temp, %struct.thermal_hwmon_temp* %54, i32 0, i32 3
  %56 = call i32 @list_del(i32* %55)
  %57 = load %struct.thermal_hwmon_temp*, %struct.thermal_hwmon_temp** %4, align 8
  %58 = call i32 @kfree(%struct.thermal_hwmon_temp* %57)
  %59 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %60 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %59, i32 0, i32 2
  %61 = call i32 @list_empty(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  %64 = call i32 @mutex_unlock(i32* @thermal_hwmon_list_lock)
  br label %77

65:                                               ; preds = %52
  %66 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %67 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %66, i32 0, i32 1
  %68 = call i32 @list_del(i32* %67)
  %69 = call i32 @mutex_unlock(i32* @thermal_hwmon_list_lock)
  %70 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %71 = getelementptr inbounds %struct.thermal_hwmon_device, %struct.thermal_hwmon_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @hwmon_device_unregister(i32 %72)
  %74 = load %struct.thermal_hwmon_device*, %struct.thermal_hwmon_device** %3, align 8
  %75 = bitcast %struct.thermal_hwmon_device* %74 to %struct.thermal_hwmon_temp*
  %76 = call i32 @kfree(%struct.thermal_hwmon_temp* %75)
  br label %77

77:                                               ; preds = %65, %63, %29, %14
  ret void
}

declare dso_local %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_by_type(%struct.thermal_zone_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.thermal_hwmon_temp* @thermal_hwmon_lookup_temp(%struct.thermal_hwmon_temp*, %struct.thermal_zone_device*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i64 @thermal_zone_crit_temp_valid(%struct.thermal_zone_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.thermal_hwmon_temp*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
