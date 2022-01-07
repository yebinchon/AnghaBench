; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_lb_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_lb_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lb_throttle.last_access = internal global i64 0, align 8
@lb_mutex = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@lb_interval_jiffies = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lb_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_throttle() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @lb_mutex)
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* @lb_throttle.last_access, align 8
  %8 = load i64, i64* @lb_interval_jiffies, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @time_before(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %1, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %3, align 8
  %18 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %19 = call i32 @set_current_state(i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @schedule_timeout(i64 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @EINTR, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %14
  %27 = load i64, i64* @jiffies, align 8
  store i64 %27, i64* %1, align 8
  br label %28

28:                                               ; preds = %26, %0
  %29 = load i64, i64* %1, align 8
  store i64 %29, i64* @lb_throttle.last_access, align 8
  br label %30

30:                                               ; preds = %28, %23
  %31 = call i32 @mutex_unlock(i32* @lb_mutex)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
