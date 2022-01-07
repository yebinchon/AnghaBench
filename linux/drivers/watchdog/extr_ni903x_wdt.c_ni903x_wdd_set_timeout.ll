; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_wdd_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ni903x_wdt.c_ni903x_wdd_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.ni903x_wdt = type { i64 }

@NIWD_PERIOD_NS = common dso_local global i32 0, align 4
@NIWD_SEED2 = common dso_local global i64 0, align 8
@NIWD_SEED1 = common dso_local global i64 0, align 8
@NIWD_SEED0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @ni903x_wdd_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni903x_wdd_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni903x_wdt*, align 8
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.ni903x_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.ni903x_wdt* %8, %struct.ni903x_wdt** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NIWD_PERIOD_NS, align 4
  %11 = sdiv i32 1000000000, %10
  %12 = mul i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 16711680, %13
  %15 = ashr i32 %14, 16
  %16 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %5, align 8
  %17 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NIWD_SEED2, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %15, i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = and i32 65280, %22
  %24 = ashr i32 %23, 8
  %25 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %5, align 8
  %26 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NIWD_SEED1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %24, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = and i32 255, %31
  %33 = load %struct.ni903x_wdt*, %struct.ni903x_wdt** %5, align 8
  %34 = getelementptr inbounds %struct.ni903x_wdt, %struct.ni903x_wdt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NIWD_SEED0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 %32, i64 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %41 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret i32 0
}

declare dso_local %struct.ni903x_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
