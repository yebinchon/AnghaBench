; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_wdt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_wdt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sp805_wdt = type { i32, i32, i64 }

@UNLOCK = common dso_local global i32 0, align 4
@WDTLOCK = common dso_local global i64 0, align 8
@WDTCONTROL = common dso_local global i64 0, align 8
@LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wdt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_disable(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sp805_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.sp805_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.sp805_wdt* %5, %struct.sp805_wdt** %3, align 8
  %6 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* @UNLOCK, align 4
  %10 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %11 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WDTLOCK, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 %9, i64 %14)
  %16 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %17 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WDTCONTROL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 0, i64 %20)
  %22 = load i32, i32* @LOCK, align 4
  %23 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %24 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WDTLOCK, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 %22, i64 %27)
  %29 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %30 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WDTLOCK, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  %35 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %36 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %39 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_disable_unprepare(i32 %40)
  ret i32 0
}

declare dso_local %struct.sp805_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
