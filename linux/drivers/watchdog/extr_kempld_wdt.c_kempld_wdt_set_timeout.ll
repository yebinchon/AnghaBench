; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.kempld_wdt_data = type { i32, %struct.kempld_wdt_stage* }
%struct.kempld_wdt_stage = type { i64 }

@STAGE_TIMEOUT = common dso_local global i64 0, align 8
@STAGE_PRETIMEOUT = common dso_local global i64 0, align 8
@ACTION_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @kempld_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kempld_wdt_data*, align 8
  %7 = alloca %struct.kempld_wdt_stage*, align 8
  %8 = alloca %struct.kempld_wdt_stage*, align 8
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.kempld_wdt_data* %11, %struct.kempld_wdt_data** %6, align 8
  %12 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %13 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %12, i32 0, i32 1
  %14 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %13, align 8
  %15 = load i64, i64* @STAGE_TIMEOUT, align 8
  %16 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %14, i64 %15
  store %struct.kempld_wdt_stage* %16, %struct.kempld_wdt_stage** %8, align 8
  %17 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %18 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %17, i32 0, i32 1
  %19 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %18, align 8
  %20 = load i64, i64* @STAGE_PRETIMEOUT, align 8
  %21 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %19, i64 %20
  store %struct.kempld_wdt_stage* %21, %struct.kempld_wdt_stage** %7, align 8
  %22 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %7, align 8
  %23 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %28 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %33 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26, %2
  %36 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %37 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %8, align 8
  %38 = load i32, i32* @ACTION_RESET, align 4
  %39 = call i32 @kempld_wdt_set_stage_action(%struct.kempld_wdt_data* %36, %struct.kempld_wdt_stage* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %35
  %45 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %6, align 8
  %46 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @kempld_wdt_set_stage_timeout(%struct.kempld_wdt_data* %45, %struct.kempld_wdt_stage* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %56 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %51, %42
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @kempld_wdt_set_stage_action(%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*, i32) #1

declare dso_local i32 @kempld_wdt_set_stage_timeout(%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
