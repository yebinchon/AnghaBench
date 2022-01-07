; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.dw_wdt = type { i64 }

@WDOG_TIMEOUT_RANGE_REG_OFFSET = common dso_local global i64 0, align 8
@WDOG_COUNTER_RESTART_KICK_VALUE = common dso_local global i32 0, align 4
@WDOG_COUNTER_RESTART_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @dw_wdt_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_wdt_restart(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dw_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %9 = call %struct.dw_wdt* @to_dw_wdt(%struct.watchdog_device* %8)
  store %struct.dw_wdt* %9, %struct.dw_wdt** %7, align 8
  %10 = load %struct.dw_wdt*, %struct.dw_wdt** %7, align 8
  %11 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WDOG_TIMEOUT_RANGE_REG_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 0, i64 %14)
  %16 = load %struct.dw_wdt*, %struct.dw_wdt** %7, align 8
  %17 = call i64 @dw_wdt_is_enabled(%struct.dw_wdt* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @WDOG_COUNTER_RESTART_KICK_VALUE, align 4
  %21 = load %struct.dw_wdt*, %struct.dw_wdt** %7, align 8
  %22 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WDOG_COUNTER_RESTART_REG_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.dw_wdt*, %struct.dw_wdt** %7, align 8
  %29 = call i32 @dw_wdt_arm_system_reset(%struct.dw_wdt* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = call i32 @mdelay(i32 500)
  ret i32 0
}

declare dso_local %struct.dw_wdt* @to_dw_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @dw_wdt_is_enabled(%struct.dw_wdt*) #1

declare dso_local i32 @dw_wdt_arm_system_reset(%struct.dw_wdt*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
