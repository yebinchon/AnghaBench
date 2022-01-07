; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_softdog.c_softdog_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_softdog.c_softdog_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i64, i64 }

@softdog_ticktock = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@CONFIG_SOFT_WATCHDOG_PRETIMEOUT = common dso_local global i32 0, align 4
@softdog_preticktock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @softdog_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdog_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %3 = call i32 @hrtimer_active(i32* @softdog_ticktock)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @THIS_MODULE, align 4
  %7 = call i32 @__module_get(i32 %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @ktime_set(i64 %11, i32 0)
  %13 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %14 = call i32 @hrtimer_start(i32* @softdog_ticktock, i32 %12, i32 %13)
  %15 = load i32, i32* @CONFIG_SOFT_WATCHDOG_PRETIMEOUT, align 4
  %16 = call i64 @IS_ENABLED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %8
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %20 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %25 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %28 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i32 @ktime_set(i64 %30, i32 0)
  %32 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %33 = call i32 @hrtimer_start(i32* @softdog_preticktock, i32 %31, i32 %32)
  br label %36

34:                                               ; preds = %18
  %35 = call i32 @hrtimer_cancel(i32* @softdog_preticktock)
  br label %36

36:                                               ; preds = %34, %23
  br label %37

37:                                               ; preds = %36, %8
  ret i32 0
}

declare dso_local i32 @hrtimer_active(i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_set(i64, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
