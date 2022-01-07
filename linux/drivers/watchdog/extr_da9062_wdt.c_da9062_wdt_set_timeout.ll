; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.da9062_watchdog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to set watchdog timeout (err = %d)\0A\00", align 1
@wdt_timeout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @da9062_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da9062_watchdog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = call %struct.da9062_watchdog* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.da9062_watchdog* %9, %struct.da9062_watchdog** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @da9062_wdt_timeout_to_sel(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @da9062_wdt_update_timeout_register(%struct.da9062_watchdog* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %5, align 8
  %19 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %33

25:                                               ; preds = %2
  %26 = load i32*, i32** @wdt_timeout, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %32 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.da9062_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @da9062_wdt_timeout_to_sel(i32) #1

declare dso_local i32 @da9062_wdt_update_timeout_register(%struct.da9062_watchdog*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
