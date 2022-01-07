; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_thermal_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_thermal_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_device = type { i32, i32, i32 }

@pkg_temp_lock = common dso_local global i32 0, align 4
@pkg_interrupt_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pkg_thermal_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_thermal_notify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.zone_device*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pkg_temp_lock, i64 %7)
  %9 = load i32, i32* @pkg_interrupt_cnt, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @pkg_interrupt_cnt, align 4
  %11 = call i32 (...) @disable_pkg_thres_interrupt()
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.zone_device* @pkg_temp_thermal_get_dev(i32 %12)
  store %struct.zone_device* %13, %struct.zone_device** %4, align 8
  %14 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %15 = icmp ne %struct.zone_device* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %18 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %23 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %25 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.zone_device*, %struct.zone_device** %4, align 8
  %28 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %27, i32 0, i32 1
  %29 = call i32 @pkg_thermal_schedule_work(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %21, %16, %1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @pkg_temp_lock, i64 %31)
  ret i32 0
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @disable_pkg_thres_interrupt(...) #1

declare dso_local %struct.zone_device* @pkg_temp_thermal_get_dev(i32) #1

declare dso_local i32 @pkg_thermal_schedule_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
