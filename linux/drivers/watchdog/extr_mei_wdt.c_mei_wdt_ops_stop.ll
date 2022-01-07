; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_ops_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_ops_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.mei_wdt = type { i64 }

@MEI_WDT_RUNNING = common dso_local global i64 0, align 8
@MEI_WDT_STOPPING = common dso_local global i64 0, align 8
@MEI_WDT_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @mei_wdt_ops_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_wdt_ops_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.mei_wdt*, align 8
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.mei_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.mei_wdt* %7, %struct.mei_wdt** %4, align 8
  %8 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %9 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MEI_WDT_RUNNING, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load i64, i64* @MEI_WDT_STOPPING, align 8
  %16 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %17 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %19 = call i32 @mei_wdt_stop(%struct.mei_wdt* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i64, i64* @MEI_WDT_IDLE, align 8
  %26 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %27 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %22, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.mei_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mei_wdt_stop(%struct.mei_wdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
