; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_renesas_wdt.c_rwdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_renesas_wdt.c_rwdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rwdt_priv = type { i32 }

@RWTCSRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rwdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.rwdt_priv*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.rwdt_priv* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.rwdt_priv* %5, %struct.rwdt_priv** %3, align 8
  %6 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %7 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rwdt_priv, %struct.rwdt_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RWTCSRA, align 4
  %11 = call i32 @rwdt_write(%struct.rwdt_priv* %6, i32 %9, i32 %10)
  %12 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %13 = call i32 @rwdt_wait_cycles(%struct.rwdt_priv* %12, i32 3)
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_put(i32 %16)
  ret i32 0
}

declare dso_local %struct.rwdt_priv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @rwdt_write(%struct.rwdt_priv*, i32, i32) #1

declare dso_local i32 @rwdt_wait_cycles(%struct.rwdt_priv*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
