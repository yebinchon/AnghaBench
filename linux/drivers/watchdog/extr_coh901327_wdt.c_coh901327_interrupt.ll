; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_coh901327_wdt.c_coh901327_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_coh901327_wdt.c_coh901327_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtbase = common dso_local global i64 0, align 8
@U300_WDOG_IER = common dso_local global i64 0, align 8
@U300_WDOG_IER_WILL_BARK_IRQ_EVENT_IND = common dso_local global i64 0, align 8
@U300_WDOG_IER_WILL_BARK_IRQ_ACK_ENABLE = common dso_local global i32 0, align 4
@U300_WDOG_IMR = common dso_local global i64 0, align 8
@parent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"watchdog is barking!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @coh901327_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coh901327_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* @virtbase, align 8
  %7 = load i64, i64* @U300_WDOG_IER, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @readw(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @U300_WDOG_IER_WILL_BARK_IRQ_EVENT_IND, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @U300_WDOG_IER_WILL_BARK_IRQ_ACK_ENABLE, align 4
  %15 = load i64, i64* @virtbase, align 8
  %16 = load i64, i64* @U300_WDOG_IER, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writew(i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i64, i64* @virtbase, align 8
  %21 = load i64, i64* @U300_WDOG_IMR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writew(i32 0, i64 %22)
  %24 = load i32, i32* @parent, align 4
  %25 = call i32 @dev_crit(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i64 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
