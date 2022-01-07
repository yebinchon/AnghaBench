; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_watchdog_check_min_max_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_watchdog_check_min_max_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i64, i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Invalid min and max timeout values, resetting to 0!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.watchdog_device*)* @watchdog_check_min_max_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_check_min_max_timeout(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %3 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %9 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %12 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %18 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %20 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %7, %1
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
