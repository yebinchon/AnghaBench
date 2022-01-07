; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_stop_power_clamp_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_stop_power_clamp_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerclamp_worker_data = type { i32, i32*, i32, i32, i32 }

@worker_data = common dso_local global i32 0, align 4
@cpu_clamping_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @stop_power_clamp_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_power_clamp_worker(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.powerclamp_worker_data*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @worker_data, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.powerclamp_worker_data* @per_cpu_ptr(i32 %4, i64 %5)
  store %struct.powerclamp_worker_data* %6, %struct.powerclamp_worker_data** %3, align 8
  %7 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %8 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %14 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = call i32 (...) @smp_wmb()
  %16 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %17 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %16, i32 0, i32 4
  %18 = call i32 @kthread_cancel_work_sync(i32* %17)
  %19 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %20 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %19, i32 0, i32 3
  %21 = call i32 @kthread_cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %23 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @cpu_clamping_mask, align 4
  %26 = call i32 @clear_bit(i32 %24, i32 %25)
  %27 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %28 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kthread_destroy_worker(i32* %29)
  %31 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %32 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.powerclamp_worker_data* @per_cpu_ptr(i32, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @kthread_cancel_work_sync(i32*) #1

declare dso_local i32 @kthread_cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kthread_destroy_worker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
