; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_set_open_deadline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_set_open_deadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_core_data = type { i64 }

@open_timeout = common dso_local global i64 0, align 8
@KTIME_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.watchdog_core_data*)* @watchdog_set_open_deadline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_set_open_deadline(%struct.watchdog_core_data* %0) #0 {
  %2 = alloca %struct.watchdog_core_data*, align 8
  store %struct.watchdog_core_data* %0, %struct.watchdog_core_data** %2, align 8
  %3 = load i64, i64* @open_timeout, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = call i64 (...) @ktime_get()
  %7 = load i64, i64* @open_timeout, align 8
  %8 = call i64 @ktime_set(i64 %7, i32 0)
  %9 = add nsw i64 %6, %8
  br label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @KTIME_MAX, align 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i64 [ %9, %5 ], [ %11, %10 ]
  %14 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %2, align 8
  %15 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  ret void
}

declare dso_local i64 @ktime_get(...) #1

declare dso_local i64 @ktime_set(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
