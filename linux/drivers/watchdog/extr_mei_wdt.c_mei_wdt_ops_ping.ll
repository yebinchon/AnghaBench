; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_ops_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_ops_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.mei_wdt = type { i64, i32, i64 }

@MEI_WDT_START = common dso_local global i64 0, align 8
@MEI_WDT_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @mei_wdt_ops_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_wdt_ops_ping(%struct.watchdog_device* %0) #0 {
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
  %11 = load i64, i64* @MEI_WDT_START, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %15 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MEI_WDT_RUNNING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %50

20:                                               ; preds = %13, %1
  %21 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %22 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %27 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %26, i32 0, i32 1
  %28 = call i32 @init_completion(i32* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i64, i64* @MEI_WDT_RUNNING, align 8
  %31 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %32 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %34 = call i32 @mei_wdt_ping(%struct.mei_wdt* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %29
  %40 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %41 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.mei_wdt*, %struct.mei_wdt** %4, align 8
  %46 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %45, i32 0, i32 1
  %47 = call i32 @wait_for_completion_killable(i32* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %37, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.mei_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mei_wdt_ping(%struct.mei_wdt*) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
