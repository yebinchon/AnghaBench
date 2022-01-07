; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm63xx_wdt.c_bcm63xx_wdt_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm63xx_wdt.c_bcm63xx_wdt_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@WDT_STOP_1 = common dso_local global i32 0, align 4
@bcm63xx_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WDT_CTL_REG = common dso_local global i64 0, align 8
@WDT_STOP_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bcm63xx_wdt_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_wdt_hw_stop() #0 {
  %1 = load i32, i32* @WDT_STOP_1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bcm63xx_wdt_device, i32 0, i32 0), align 8
  %3 = load i64, i64* @WDT_CTL_REG, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @bcm_writel(i32 %1, i64 %4)
  %6 = load i32, i32* @WDT_STOP_2, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bcm63xx_wdt_device, i32 0, i32 0), align 8
  %8 = load i64, i64* @WDT_CTL_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @bcm_writel(i32 %6, i64 %9)
  ret void
}

declare dso_local i32 @bcm_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
