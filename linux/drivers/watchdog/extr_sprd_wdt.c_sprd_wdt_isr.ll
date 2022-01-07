; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_wdt = type { i32, i64 }

@SPRD_WDT_INT_CLEAR_BIT = common dso_local global i32 0, align 4
@SPRD_WDT_INT_CLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sprd_wdt_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_wdt_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sprd_wdt*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sprd_wdt*
  store %struct.sprd_wdt* %7, %struct.sprd_wdt** %5, align 8
  %8 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %9 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @sprd_wdt_unlock(i64 %10)
  %12 = load i32, i32* @SPRD_WDT_INT_CLEAR_BIT, align 4
  %13 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %14 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPRD_WDT_INT_CLR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel_relaxed(i32 %12, i64 %17)
  %19 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %20 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @sprd_wdt_lock(i64 %21)
  %23 = load %struct.sprd_wdt*, %struct.sprd_wdt** %5, align 8
  %24 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %23, i32 0, i32 0
  %25 = call i32 @watchdog_notify_pretimeout(i32* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @sprd_wdt_unlock(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sprd_wdt_lock(i64) #1

declare dso_local i32 @watchdog_notify_pretimeout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
