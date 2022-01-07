; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel_scu_watchdog.c_check_timer_margin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel_scu_watchdog.c_check_timer_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_TIME_CYCLE = common dso_local global i32 0, align 4
@MAX_TIME = common dso_local global i32 0, align 4
@timer_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"value of new_margin %d is out of the range %d to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_timer_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_timer_margin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MIN_TIME_CYCLE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_TIME, align 4
  %10 = load i32, i32* @timer_set, align 4
  %11 = sub nsw i32 %9, %10
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MIN_TIME_CYCLE, align 4
  %16 = load i32, i32* @MAX_TIME, align 4
  %17 = load i32, i32* @timer_set, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
