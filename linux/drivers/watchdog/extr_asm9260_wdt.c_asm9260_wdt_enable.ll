; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.asm9260_wdt_priv = type { i64, i64 }

@HW_RESET = common dso_local global i64 0, align 8
@BM_MOD_WDRESET = common dso_local global i32 0, align 4
@BM_MOD_WDEN = common dso_local global i32 0, align 4
@HW_WDMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @asm9260_wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_wdt_enable(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.asm9260_wdt_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.asm9260_wdt_priv* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.asm9260_wdt_priv* %6, %struct.asm9260_wdt_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %8 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HW_RESET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @BM_MOD_WDRESET, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* @BM_MOD_WDEN, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %3, align 8
  %19 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HW_WDMOD, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite32(i32 %17, i64 %22)
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %25 = call i32 @asm9260_wdt_updatetimeout(%struct.watchdog_device* %24)
  %26 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %27 = call i32 @asm9260_wdt_feed(%struct.watchdog_device* %26)
  ret i32 0
}

declare dso_local %struct.asm9260_wdt_priv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @asm9260_wdt_updatetimeout(%struct.watchdog_device*) #1

declare dso_local i32 @asm9260_wdt_feed(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
