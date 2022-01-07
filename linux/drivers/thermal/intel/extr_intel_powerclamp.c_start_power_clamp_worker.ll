; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_start_power_clamp_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_start_power_clamp_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerclamp_worker_data = type { i64, i32, i32, %struct.kthread_worker*, i32, i64 }
%struct.kthread_worker = type { i32 }

@worker_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"kidle_inj/%ld\00", align 1
@cpu_clamping_mask = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@sparam = common dso_local global i32 0, align 4
@clamp_balancing_func = common dso_local global i32 0, align 4
@clamp_idle_injection_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @start_power_clamp_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_power_clamp_worker(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.powerclamp_worker_data*, align 8
  %4 = alloca %struct.kthread_worker*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @worker_data, align 4
  %6 = load i64, i64* %2, align 8
  %7 = call %struct.powerclamp_worker_data* @per_cpu_ptr(i32 %5, i64 %6)
  store %struct.powerclamp_worker_data* %7, %struct.powerclamp_worker_data** %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call %struct.kthread_worker* @kthread_create_worker_on_cpu(i64 %8, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %9)
  store %struct.kthread_worker* %10, %struct.kthread_worker** %4, align 8
  %11 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %12 = call i64 @IS_ERR(%struct.kthread_worker* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %17 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %18 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %17, i32 0, i32 3
  store %struct.kthread_worker* %16, %struct.kthread_worker** %18, align 8
  %19 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %20 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %23 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %25 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i32, i32* @cpu_clamping_mask, align 4
  %28 = call i32 @set_bit(i64 %26, i32 %27)
  %29 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %30 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCHED_FIFO, align 4
  %33 = call i32 @sched_setscheduler(i32 %31, i32 %32, i32* @sparam)
  %34 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %35 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %34, i32 0, i32 2
  %36 = load i32, i32* @clamp_balancing_func, align 4
  %37 = call i32 @kthread_init_work(i32* %35, i32 %36)
  %38 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %39 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %38, i32 0, i32 4
  %40 = load i32, i32* @clamp_idle_injection_func, align 4
  %41 = call i32 @kthread_init_delayed_work(i32* %39, i32 %40)
  %42 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %43 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %42, i32 0, i32 3
  %44 = load %struct.kthread_worker*, %struct.kthread_worker** %43, align 8
  %45 = load %struct.powerclamp_worker_data*, %struct.powerclamp_worker_data** %3, align 8
  %46 = getelementptr inbounds %struct.powerclamp_worker_data, %struct.powerclamp_worker_data* %45, i32 0, i32 2
  %47 = call i32 @kthread_queue_work(%struct.kthread_worker* %44, i32* %46)
  br label %48

48:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.powerclamp_worker_data* @per_cpu_ptr(i32, i64) #1

declare dso_local %struct.kthread_worker* @kthread_create_worker_on_cpu(i64, i32, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.kthread_worker*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @sched_setscheduler(i32, i32, i32*) #1

declare dso_local i32 @kthread_init_work(i32*, i32) #1

declare dso_local i32 @kthread_init_delayed_work(i32*, i32) #1

declare dso_local i32 @kthread_queue_work(%struct.kthread_worker*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
