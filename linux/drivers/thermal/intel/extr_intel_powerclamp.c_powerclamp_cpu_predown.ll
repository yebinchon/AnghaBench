; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_powerclamp_cpu_predown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_powerclamp_cpu_predown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clamping = common dso_local global i32 0, align 4
@control_cpu = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @powerclamp_cpu_predown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerclamp_cpu_predown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @clamping, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @stop_power_clamp_worker(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @control_cpu, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %26

14:                                               ; preds = %7
  %15 = load i32, i32* @cpu_online_mask, align 4
  %16 = call i32 @cpumask_first(i32 %15)
  store i32 %16, i32* @control_cpu, align 4
  %17 = load i32, i32* @control_cpu, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @cpu_online_mask, align 4
  %23 = call i32 @cpumask_next(i32 %21, i32 %22)
  store i32 %23, i32* @control_cpu, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = call i32 (...) @smp_mb()
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %13, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @stop_power_clamp_worker(i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
