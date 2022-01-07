; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.da9063 = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to set watchdog timeout (err = %d)\0A\00", align 1
@wdt_timeout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @da9063_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da9063*, align 8
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.da9063* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.da9063* %8, %struct.da9063** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = call i64 @watchdog_active(%struct.watchdog_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.da9063*, %struct.da9063** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @da9063_wdt_update_timeout(%struct.da9063* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.da9063*, %struct.da9063** %5, align 8
  %21 = getelementptr inbounds %struct.da9063, %struct.da9063* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %33

25:                                               ; preds = %16
  %26 = load i32*, i32** @wdt_timeout, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @da9063_wdt_timeout_to_sel(i32 %27)
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %32 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.da9063* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @da9063_wdt_update_timeout(%struct.da9063*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @da9063_wdt_timeout_to_sel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
