; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_pre_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_pre_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orion_watchdog = type { i32, i64 }

@TIMER_A370_STATUS = common dso_local global i64 0, align 8
@TIMER1_STATUS_BIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @orion_wdt_pre_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_wdt_pre_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.orion_watchdog*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.orion_watchdog*
  store %struct.orion_watchdog* %7, %struct.orion_watchdog** %5, align 8
  %8 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %9 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TIMER_A370_STATUS, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @TIMER1_STATUS_BIT, align 4
  %14 = call i32 @atomic_io_modify(i64 %12, i32 %13, i32 0)
  %15 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %16 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %15, i32 0, i32 0
  %17 = call i32 @watchdog_notify_pretimeout(i32* %16)
  %18 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %18
}

declare dso_local i32 @atomic_io_modify(i64, i32, i32) #1

declare dso_local i32 @watchdog_notify_pretimeout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
