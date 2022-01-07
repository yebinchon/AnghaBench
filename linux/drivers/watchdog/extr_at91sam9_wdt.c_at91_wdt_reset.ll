; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91wdt = type { i32 }

@AT91_WDT_CR = common dso_local global i32 0, align 4
@AT91_WDT_KEY = common dso_local global i32 0, align 4
@AT91_WDT_WDRSTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91wdt*)* @at91_wdt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_wdt_reset(%struct.at91wdt* %0) #0 {
  %2 = alloca %struct.at91wdt*, align 8
  store %struct.at91wdt* %0, %struct.at91wdt** %2, align 8
  %3 = load %struct.at91wdt*, %struct.at91wdt** %2, align 8
  %4 = load i32, i32* @AT91_WDT_CR, align 4
  %5 = load i32, i32* @AT91_WDT_KEY, align 4
  %6 = load i32, i32* @AT91_WDT_WDRSTT, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @wdt_write(%struct.at91wdt* %3, i32 %4, i32 %7)
  ret void
}

declare dso_local i32 @wdt_write(%struct.at91wdt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
