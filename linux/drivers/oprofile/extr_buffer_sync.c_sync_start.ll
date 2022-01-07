; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_sync_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@marked_cpus = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@task_free_nb = common dso_local global i32 0, align 4
@PROFILE_TASK_EXIT = common dso_local global i32 0, align 4
@task_exit_nb = common dso_local global i32 0, align 4
@PROFILE_MUNMAP = common dso_local global i32 0, align 4
@munmap_nb = common dso_local global i32 0, align 4
@module_load_nb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call i32 @zalloc_cpumask_var(i32* @marked_cpus, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %47

9:                                                ; preds = %0
  %10 = call i32 @task_handoff_register(i32* @task_free_nb)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %44

14:                                               ; preds = %9
  %15 = load i32, i32* @PROFILE_TASK_EXIT, align 4
  %16 = call i32 @profile_event_register(i32 %15, i32* @task_exit_nb)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %41

20:                                               ; preds = %14
  %21 = load i32, i32* @PROFILE_MUNMAP, align 4
  %22 = call i32 @profile_event_register(i32 %21, i32* @munmap_nb)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  %27 = call i32 @register_module_notifier(i32* @module_load_nb)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %35

31:                                               ; preds = %26
  %32 = call i32 (...) @start_cpu_work()
  br label %33

33:                                               ; preds = %44, %31
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* %1, align 4
  br label %47

35:                                               ; preds = %30
  %36 = load i32, i32* @PROFILE_MUNMAP, align 4
  %37 = call i32 @profile_event_unregister(i32 %36, i32* @munmap_nb)
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* @PROFILE_TASK_EXIT, align 4
  %40 = call i32 @profile_event_unregister(i32 %39, i32* @task_exit_nb)
  br label %41

41:                                               ; preds = %38, %19
  %42 = call i32 @task_handoff_unregister(i32* @task_free_nb)
  %43 = call i32 (...) @free_all_tasks()
  br label %44

44:                                               ; preds = %41, %13
  %45 = load i32, i32* @marked_cpus, align 4
  %46 = call i32 @free_cpumask_var(i32 %45)
  br label %33

47:                                               ; preds = %33, %6
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @task_handoff_register(i32*) #1

declare dso_local i32 @profile_event_register(i32, i32*) #1

declare dso_local i32 @register_module_notifier(i32*) #1

declare dso_local i32 @start_cpu_work(...) #1

declare dso_local i32 @profile_event_unregister(i32, i32*) #1

declare dso_local i32 @task_handoff_unregister(i32*) #1

declare dso_local i32 @free_all_tasks(...) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
