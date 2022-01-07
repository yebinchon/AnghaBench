; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_update_timeouts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_update_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_wdt_data = type { i32, %struct.TYPE_2__, %struct.kempld_wdt_stage*, %struct.kempld_device_data* }
%struct.TYPE_2__ = type { i32 }
%struct.kempld_wdt_stage = type { i32 }
%struct.kempld_device_data = type { i32 }

@STAGE_PRETIMEOUT = common dso_local global i64 0, align 8
@STAGE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kempld_wdt_data*)* @kempld_wdt_update_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kempld_wdt_update_timeouts(%struct.kempld_wdt_data* %0) #0 {
  %2 = alloca %struct.kempld_wdt_data*, align 8
  %3 = alloca %struct.kempld_device_data*, align 8
  %4 = alloca %struct.kempld_wdt_stage*, align 8
  %5 = alloca %struct.kempld_wdt_stage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kempld_wdt_data* %0, %struct.kempld_wdt_data** %2, align 8
  %8 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %9 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %8, i32 0, i32 3
  %10 = load %struct.kempld_device_data*, %struct.kempld_device_data** %9, align 8
  store %struct.kempld_device_data* %10, %struct.kempld_device_data** %3, align 8
  %11 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %12 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %11, i32 0, i32 2
  %13 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %12, align 8
  %14 = load i64, i64* @STAGE_PRETIMEOUT, align 8
  %15 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %13, i64 %14
  store %struct.kempld_wdt_stage* %15, %struct.kempld_wdt_stage** %4, align 8
  %16 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %17 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %16, i32 0, i32 2
  %18 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %17, align 8
  %19 = load i64, i64* @STAGE_TIMEOUT, align 8
  %20 = getelementptr inbounds %struct.kempld_wdt_stage, %struct.kempld_wdt_stage* %18, i64 %19
  store %struct.kempld_wdt_stage* %20, %struct.kempld_wdt_stage** %5, align 8
  %21 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %22 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %21)
  %23 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %24 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %4, align 8
  %25 = call i32 @kempld_wdt_get_timeout(%struct.kempld_wdt_data* %23, %struct.kempld_wdt_stage* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %27 = load %struct.kempld_wdt_stage*, %struct.kempld_wdt_stage** %5, align 8
  %28 = call i32 @kempld_wdt_get_timeout(%struct.kempld_wdt_data* %26, %struct.kempld_wdt_stage* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %30 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %36 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %39 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %41, %42
  %44 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %2, align 8
  %45 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  ret void
}

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_wdt_get_timeout(%struct.kempld_wdt_data*, %struct.kempld_wdt_stage*) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
