; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_watchdog_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_watchdog_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.uniphier_wdt_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @uniphier_watchdog_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_watchdog_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uniphier_wdt_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %10 = call %struct.uniphier_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.uniphier_wdt_dev* %10, %struct.uniphier_wdt_dev** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @roundup_pow_of_two(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %21 = call i64 @watchdog_active(%struct.watchdog_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %6, align 8
  %25 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__uniphier_watchdog_restart(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %37 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %31, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.uniphier_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @__uniphier_watchdog_restart(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
