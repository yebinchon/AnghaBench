; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_retu_wdt.c_retu_wdt_ping_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_retu_wdt.c_retu_wdt_ping_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retu_wdt_dev = type { i32, i32 }

@RETU_REG_WATCHDOG = common dso_local global i32 0, align 4
@RETU_WDT_MAX_TIMER = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.retu_wdt_dev*)* @retu_wdt_ping_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retu_wdt_ping_enable(%struct.retu_wdt_dev* %0) #0 {
  %2 = alloca %struct.retu_wdt_dev*, align 8
  store %struct.retu_wdt_dev* %0, %struct.retu_wdt_dev** %2, align 8
  %3 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %2, align 8
  %4 = getelementptr inbounds %struct.retu_wdt_dev, %struct.retu_wdt_dev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RETU_REG_WATCHDOG, align 4
  %7 = load i32, i32* @RETU_WDT_MAX_TIMER, align 4
  %8 = call i32 @retu_write(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %2, align 8
  %10 = getelementptr inbounds %struct.retu_wdt_dev, %struct.retu_wdt_dev* %9, i32 0, i32 0
  %11 = load i32, i32* @RETU_WDT_MAX_TIMER, align 4
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 2
  %15 = call i32 @round_jiffies_relative(i32 %14)
  %16 = call i32 @schedule_delayed_work(i32* %10, i32 %15)
  ret void
}

declare dso_local i32 @retu_write(i32, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
