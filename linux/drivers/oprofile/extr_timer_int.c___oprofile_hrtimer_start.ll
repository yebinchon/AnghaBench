; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_timer_int.c___oprofile_hrtimer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_timer_int.c___oprofile_hrtimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }

@oprofile_hrtimer = common dso_local global i32 0, align 4
@ctr_running = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@oprofile_hrtimer_notify = common dso_local global i32 0, align 4
@TICK_NSEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__oprofile_hrtimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__oprofile_hrtimer_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hrtimer*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.hrtimer* @this_cpu_ptr(i32* @oprofile_hrtimer)
  store %struct.hrtimer* %4, %struct.hrtimer** %3, align 8
  %5 = load i32, i32* @ctr_running, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %10 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %11 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %12 = call i32 @hrtimer_init(%struct.hrtimer* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @oprofile_hrtimer_notify, align 4
  %14 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %15 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %17 = load i32, i32* @TICK_NSEC, align 4
  %18 = call i32 @ns_to_ktime(i32 %17)
  %19 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %20 = call i32 @hrtimer_start(%struct.hrtimer* %16, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.hrtimer* @this_cpu_ptr(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.hrtimer*, i32, i32) #1

declare dso_local i32 @hrtimer_start(%struct.hrtimer*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
