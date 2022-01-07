; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c_lpc18xx_wdt_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c_lpc18xx_wdt_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.lpc18xx_wdt_dev = type { i32, i64 }

@LPC18XX_WDT_MOD = common dso_local global i64 0, align 8
@LPC18XX_WDT_MOD_WDEN = common dso_local global i32 0, align 4
@LPC18XX_WDT_MOD_WDRESET = common dso_local global i32 0, align 4
@LPC18XX_WDT_FEED_MAGIC1 = common dso_local global i32 0, align 4
@LPC18XX_WDT_FEED = common dso_local global i64 0, align 8
@LPC18XX_WDT_FEED_MAGIC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @lpc18xx_wdt_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_wdt_restart(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lpc18xx_wdt_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.lpc18xx_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.lpc18xx_wdt_dev* %11, %struct.lpc18xx_wdt_dev** %7, align 8
  %12 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %13 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %17 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LPC18XX_WDT_MOD, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @LPC18XX_WDT_MOD_WDEN, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @LPC18XX_WDT_MOD_WDRESET, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %30 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LPC18XX_WDT_MOD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i32, i32* @LPC18XX_WDT_FEED_MAGIC1, align 4
  %36 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %37 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPC18XX_WDT_FEED, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* @LPC18XX_WDT_FEED_MAGIC2, align 4
  %43 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %44 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LPC18XX_WDT_FEED, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load i32, i32* @LPC18XX_WDT_FEED_MAGIC1, align 4
  %50 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %51 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LPC18XX_WDT_FEED, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load i32, i32* @LPC18XX_WDT_FEED_MAGIC1, align 4
  %57 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %58 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LPC18XX_WDT_FEED, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %7, align 8
  %64 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  ret i32 0
}

declare dso_local %struct.lpc18xx_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
