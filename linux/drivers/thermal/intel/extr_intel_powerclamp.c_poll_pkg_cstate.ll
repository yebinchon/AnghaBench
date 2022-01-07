; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_poll_pkg_cstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_poll_pkg_cstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@poll_pkg_cstate.msr_last = internal global i32 0, align 4
@poll_pkg_cstate.tsc_last = internal global i32 0, align 4
@pkg_cstate_ratio_cur = common dso_local global i32 0, align 4
@clamping = common dso_local global i32 0, align 4
@poll_pkg_cstate_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @poll_pkg_cstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_pkg_cstate(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = call i32 (...) @pkg_state_counter()
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @rdtsc()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @poll_pkg_cstate.msr_last, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @poll_pkg_cstate.tsc_last, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  store i32 1, i32* @pkg_cstate_ratio_cur, align 4
  br label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @poll_pkg_cstate.tsc_last, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @poll_pkg_cstate.msr_last, align 4
  %22 = sub nsw i32 %20, %21
  %23 = mul nsw i32 100, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @poll_pkg_cstate.tsc_last, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @do_div(i32 %24, i32 %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* @pkg_cstate_ratio_cur, align 4
  br label %30

30:                                               ; preds = %19, %14
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* @poll_pkg_cstate.msr_last, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* @poll_pkg_cstate.tsc_last, align 4
  %34 = load i32, i32* @clamping, align 4
  %35 = icmp eq i32 1, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @HZ, align 4
  %38 = call i32 @schedule_delayed_work(i32* @poll_pkg_cstate_work, i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @pkg_state_counter(...) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
