; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_temp_thermal_threshold_work_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_temp_thermal_threshold_work_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.zone_device = type { i32, %struct.thermal_zone_device* }

@thermal_zone_mutex = common dso_local global i32 0, align 4
@pkg_temp_lock = common dso_local global i32 0, align 4
@pkg_work_cnt = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_STATUS = common dso_local global i32 0, align 4
@THERM_LOG_THRESHOLD0 = common dso_local global i32 0, align 4
@THERM_LOG_THRESHOLD1 = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @pkg_temp_thermal_threshold_work_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkg_temp_thermal_threshold_work_fn(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %3, align 8
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %4, align 4
  %9 = call i32 @mutex_lock(i32* @thermal_zone_mutex)
  %10 = call i32 @spin_lock_irq(i32* @pkg_temp_lock)
  %11 = load i32, i32* @pkg_work_cnt, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @pkg_work_cnt, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %13)
  store %struct.zone_device* %14, %struct.zone_device** %5, align 8
  %15 = load %struct.zone_device*, %struct.zone_device** %5, align 8
  %16 = icmp ne %struct.zone_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i32 @spin_unlock_irq(i32* @pkg_temp_lock)
  %19 = call i32 @mutex_unlock(i32* @thermal_zone_mutex)
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.zone_device*, %struct.zone_device** %5, align 8
  %22 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* @MSR_IA32_PACKAGE_THERM_STATUS, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @rdmsrl(i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @THERM_LOG_THRESHOLD0, align 4
  %28 = load i32, i32* @THERM_LOG_THRESHOLD1, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load i32, i32* @MSR_IA32_PACKAGE_THERM_STATUS, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @wrmsrl(i32 %36, i32 %37)
  %39 = load %struct.zone_device*, %struct.zone_device** %5, align 8
  %40 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %39, i32 0, i32 1
  %41 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %40, align 8
  store %struct.thermal_zone_device* %41, %struct.thermal_zone_device** %3, align 8
  br label %42

42:                                               ; preds = %35, %20
  %43 = call i32 (...) @enable_pkg_thres_interrupt()
  %44 = call i32 @spin_unlock_irq(i32* @pkg_temp_lock)
  %45 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %46 = icmp ne %struct.thermal_zone_device* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %49 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %50 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = call i32 @mutex_unlock(i32* @thermal_zone_mutex)
  br label %53

53:                                               ; preds = %51, %17
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.zone_device* @pkg_temp_thermal_get_dev(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @enable_pkg_thres_interrupt(...) #1

declare dso_local i32 @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
