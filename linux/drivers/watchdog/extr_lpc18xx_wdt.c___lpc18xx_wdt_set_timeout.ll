; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c___lpc18xx_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c___lpc18xx_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc18xx_wdt_dev = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LPC18XX_WDT_CLK_DIV = common dso_local global i32 0, align 4
@LPC18XX_WDT_TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc18xx_wdt_dev*)* @__lpc18xx_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpc18xx_wdt_set_timeout(%struct.lpc18xx_wdt_dev* %0) #0 {
  %2 = alloca %struct.lpc18xx_wdt_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.lpc18xx_wdt_dev* %0, %struct.lpc18xx_wdt_dev** %2, align 8
  %4 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %2, align 8
  %5 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %2, align 8
  %9 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %7, %10
  %12 = load i32, i32* @LPC18XX_WDT_CLK_DIV, align 4
  %13 = call i32 @DIV_ROUND_UP(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %2, align 8
  %16 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LPC18XX_WDT_TC, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
