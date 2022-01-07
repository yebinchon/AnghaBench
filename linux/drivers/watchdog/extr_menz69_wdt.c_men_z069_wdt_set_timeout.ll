; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.men_z069_drv = type { i64 }

@MEN_Z069_TIMER_FREQ = common dso_local global i32 0, align 4
@MEN_Z069_WVR = common dso_local global i64 0, align 8
@MEN_Z069_WTR_WDEN = common dso_local global i32 0, align 4
@MEN_Z069_WTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @men_z069_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z069_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.men_z069_drv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = call %struct.men_z069_drv* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.men_z069_drv* %10, %struct.men_z069_drv** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %13 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MEN_Z069_TIMER_FREQ, align 4
  %16 = mul i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.men_z069_drv*, %struct.men_z069_drv** %5, align 8
  %18 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MEN_Z069_WVR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readw(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MEN_Z069_WTR_WDEN, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.men_z069_drv*, %struct.men_z069_drv** %5, align 8
  %31 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MEN_Z069_WTR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i32 %29, i64 %34)
  ret i32 0
}

declare dso_local %struct.men_z069_drv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
