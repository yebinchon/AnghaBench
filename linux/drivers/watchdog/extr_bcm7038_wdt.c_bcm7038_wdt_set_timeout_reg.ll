; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm7038_wdt.c_bcm7038_wdt_set_timeout_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm7038_wdt.c_bcm7038_wdt_set_timeout_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.bcm7038_watchdog = type { i32, i64 }

@WDT_TIMEOUT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.watchdog_device*)* @bcm7038_wdt_set_timeout_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm7038_wdt_set_timeout_reg(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.bcm7038_watchdog*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.bcm7038_watchdog* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.bcm7038_watchdog* %6, %struct.bcm7038_watchdog** %3, align 8
  %7 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %3, align 8
  %8 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %3, align 8
  %16 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WDT_TIMEOUT_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  ret void
}

declare dso_local %struct.bcm7038_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
