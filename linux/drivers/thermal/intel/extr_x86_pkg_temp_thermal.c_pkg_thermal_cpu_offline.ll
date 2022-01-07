; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_thermal_cpu_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_thermal_cpu_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_device = type { i32, i32, i64, i32, i32, %struct.thermal_zone_device*, i32 }
%struct.thermal_zone_device = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@thermal_zone_mutex = common dso_local global i32 0, align 4
@pkg_temp_lock = common dso_local global i32 0, align 4
@zones = common dso_local global i32** null, align 8
@MSR_IA32_PACKAGE_THERM_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pkg_thermal_cpu_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_thermal_cpu_offline(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thermal_zone_device*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %9)
  store %struct.zone_device* %10, %struct.zone_device** %4, align 8
  %11 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %12 = icmp ne %struct.zone_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %16 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %15, i32 0, i32 6
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @cpumask_any_but(i32* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %21 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %20, i32 0, i32 6
  %22 = call i32 @cpumask_clear_cpu(i32 %19, i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @nr_cpu_ids, align 4
  %25 = icmp sge i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %14
  %30 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %31 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %30, i32 0, i32 5
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %31, align 8
  store %struct.thermal_zone_device* %32, %struct.thermal_zone_device** %8, align 8
  %33 = call i32 @mutex_lock(i32* @thermal_zone_mutex)
  %34 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %35 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %34, i32 0, i32 5
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %35, align 8
  %36 = call i32 @mutex_unlock(i32* @thermal_zone_mutex)
  %37 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %38 = call i32 @thermal_zone_device_unregister(%struct.thermal_zone_device* %37)
  br label %39

39:                                               ; preds = %29, %14
  %40 = call i32 @spin_lock_irq(i32* @pkg_temp_lock)
  %41 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %42 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %49 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %39
  %53 = load i32**, i32*** @zones, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @topology_logical_die_id(i32 %54)
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %58 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %59 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %62 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wrmsr(i32 %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %52, %39
  %66 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %67 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = call i32 @spin_unlock_irq(i32* @pkg_temp_lock)
  %75 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %76 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %75, i32 0, i32 1
  %77 = call i32 @cancel_delayed_work_sync(i32* %76)
  %78 = call i32 @spin_lock_irq(i32* @pkg_temp_lock)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %73
  %82 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %83 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %89 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %88, i32 0, i32 1
  %90 = call i32 @pkg_thermal_schedule_work(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %81, %73
  br label %92

92:                                               ; preds = %91, %70, %65
  %93 = call i32 @spin_unlock_irq(i32* @pkg_temp_lock)
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %98 = call i32 @kfree(%struct.zone_device* %97)
  br label %99

99:                                               ; preds = %96, %92
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %13
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.zone_device* @pkg_temp_thermal_get_dev(i32) #1

declare dso_local i32 @cpumask_any_but(i32*, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @thermal_zone_device_unregister(%struct.thermal_zone_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @topology_logical_die_id(i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pkg_thermal_schedule_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
