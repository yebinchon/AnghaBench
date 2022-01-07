; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_stpmic1_wdt.c_pmic_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_stpmic1_wdt.c_pmic_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.stpmic1_wdt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WCHDG_TIMER_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @pmic_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stpmic1_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.stpmic1_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.stpmic1_wdt* %7, %struct.stpmic1_wdt** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %5, align 8
  %12 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WCHDG_TIMER_CR, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub i32 %17, 1
  %19 = call i32 @regmap_write(i32 %15, i32 %16, i32 %18)
  ret i32 %19
}

declare dso_local %struct.stpmic1_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
