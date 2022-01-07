; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_renesas_wdt.c_rwdt_init_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_renesas_wdt.c_rwdt_init_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rwdt_priv = type { i32 }

@RWTCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rwdt_init_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwdt_init_timeout(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.rwdt_priv*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.rwdt_priv* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.rwdt_priv* %5, %struct.rwdt_priv** %3, align 8
  %6 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %7 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %9 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @MUL_BY_CLKS_PER_SEC(%struct.rwdt_priv* %7, i32 %10)
  %12 = sub nsw i64 65536, %11
  %13 = load i32, i32* @RWTCNT, align 4
  %14 = call i32 @rwdt_write(%struct.rwdt_priv* %6, i64 %12, i32 %13)
  ret i32 0
}

declare dso_local %struct.rwdt_priv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @rwdt_write(%struct.rwdt_priv*, i64, i32) #1

declare dso_local i64 @MUL_BY_CLKS_PER_SEC(%struct.rwdt_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
