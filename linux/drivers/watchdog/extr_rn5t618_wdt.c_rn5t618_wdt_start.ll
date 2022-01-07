; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rn5t618_wdt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RN5T618_REPCNT = common dso_local global i32 0, align 4
@RN5T618_REPCNT_REPWRON = common dso_local global i32 0, align 4
@RN5T618_WATCHDOG = common dso_local global i32 0, align 4
@RN5T618_WATCHDOG_WDOGEN = common dso_local global i32 0, align 4
@RN5T618_PWRIREN = common dso_local global i32 0, align 4
@RN5T618_PWRIRQ_IR_WDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rn5t618_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn5t618_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.rn5t618_wdt*, align 8
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.rn5t618_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.rn5t618_wdt* %7, %struct.rn5t618_wdt** %4, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rn5t618_wdt_set_timeout(%struct.watchdog_device* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %4, align 8
  %19 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RN5T618_REPCNT, align 4
  %24 = load i32, i32* @RN5T618_REPCNT_REPWRON, align 4
  %25 = load i32, i32* @RN5T618_REPCNT_REPWRON, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %17
  %32 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %4, align 8
  %33 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RN5T618_WATCHDOG, align 4
  %38 = load i32, i32* @RN5T618_WATCHDOG_WDOGEN, align 4
  %39 = load i32, i32* @RN5T618_WATCHDOG_WDOGEN, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %31
  %46 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %4, align 8
  %47 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RN5T618_PWRIREN, align 4
  %52 = load i32, i32* @RN5T618_PWRIRQ_IR_WDOG, align 4
  %53 = load i32, i32* @RN5T618_PWRIRQ_IR_WDOG, align 4
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %45, %43, %29, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.rn5t618_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @rn5t618_wdt_set_timeout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
