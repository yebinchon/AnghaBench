; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rn5t618_wdt.c_rn5t618_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rn5t618_wdt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RN5T618_WATCHDOG = common dso_local global i32 0, align 4
@RN5T618_PWRIRQ = common dso_local global i32 0, align 4
@RN5T618_PWRIRQ_IR_WDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rn5t618_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn5t618_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.rn5t618_wdt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.rn5t618_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.rn5t618_wdt* %8, %struct.rn5t618_wdt** %4, align 8
  %9 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %4, align 8
  %10 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RN5T618_WATCHDOG, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %4, align 8
  %22 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RN5T618_WATCHDOG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @regmap_write(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %20
  %34 = load %struct.rn5t618_wdt*, %struct.rn5t618_wdt** %4, align 8
  %35 = getelementptr inbounds %struct.rn5t618_wdt, %struct.rn5t618_wdt* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RN5T618_PWRIRQ, align 4
  %40 = load i32, i32* @RN5T618_PWRIRQ_IR_WDOG, align 4
  %41 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %31, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.rn5t618_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
