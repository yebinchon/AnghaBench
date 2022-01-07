; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm2835_wdt.c___bcm2835_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm2835_wdt.c___bcm2835_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_wdt = type { i64 }

@PM_PASSWORD = common dso_local global i32 0, align 4
@PM_WDOG = common dso_local global i64 0, align 8
@PM_RSTC = common dso_local global i64 0, align 8
@PM_RSTC_WRCFG_CLR = common dso_local global i32 0, align 4
@PM_RSTC_WRCFG_FULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_wdt*)* @__bcm2835_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bcm2835_restart(%struct.bcm2835_wdt* %0) #0 {
  %2 = alloca %struct.bcm2835_wdt*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835_wdt* %0, %struct.bcm2835_wdt** %2, align 8
  %4 = load i32, i32* @PM_PASSWORD, align 4
  %5 = or i32 10, %4
  %6 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %2, align 8
  %7 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PM_WDOG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel_relaxed(i32 %5, i64 %10)
  %12 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %2, align 8
  %13 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PM_RSTC, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @PM_RSTC_WRCFG_CLR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @PM_PASSWORD, align 4
  %22 = load i32, i32* @PM_RSTC_WRCFG_FULL_RESET, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %2, align 8
  %28 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PM_RSTC, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  %33 = call i32 @mdelay(i32 1)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
