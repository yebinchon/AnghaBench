; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_wdd_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_wdd_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.ni903x_wdt = type { i64 }

@NIWD_CONTROL = common dso_local global i64 0, align 8
@NIWD_CONTROL_CAPTURECOUNTER = common dso_local global i32 0, align 4
@NIWD_COUNTER2 = common dso_local global i64 0, align 8
@NIWD_COUNTER1 = common dso_local global i64 0, align 8
@NIWD_COUNTER0 = common dso_local global i64 0, align 8
@NIWD_PERIOD_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @ni903x_wdd_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni903x_wdd_get_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.ni903x_wdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %10 = call %struct.ni903x_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.ni903x_wdt* %10, %struct.ni903x_wdt** %3, align 8
  %11 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %3, align 8
  %12 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NIWD_CONTROL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @NIWD_CONTROL_CAPTURECOUNTER, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %3, align 8
  %22 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NIWD_CONTROL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 %20, i64 %25)
  %27 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %3, align 8
  %28 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NIWD_COUNTER2, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %3, align 8
  %34 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NIWD_COUNTER1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inb(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %3, align 8
  %40 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NIWD_COUNTER0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb(i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 16
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @NIWD_PERIOD_NS, align 4
  %54 = sdiv i32 1000000000, %53
  %55 = sdiv i32 %52, %54
  ret i32 %55
}

declare dso_local %struct.ni903x_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
