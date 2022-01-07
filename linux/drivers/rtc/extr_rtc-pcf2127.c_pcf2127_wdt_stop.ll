; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2127.c_pcf2127_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2127.c_pcf2127_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.pcf2127 = type { i32 }

@PCF2127_REG_WD_VAL = common dso_local global i32 0, align 4
@PCF2127_WD_VAL_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @pcf2127_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf2127_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.pcf2127*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.pcf2127* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.pcf2127* %5, %struct.pcf2127** %3, align 8
  %6 = load %struct.pcf2127*, %struct.pcf2127** %3, align 8
  %7 = getelementptr inbounds %struct.pcf2127, %struct.pcf2127* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCF2127_REG_WD_VAL, align 4
  %10 = load i32, i32* @PCF2127_WD_VAL_STOP, align 4
  %11 = call i32 @regmap_write(i32 %8, i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local %struct.pcf2127* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
