; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.dw_wdt = type { i32 }

@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @dw_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.dw_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %6 = call %struct.dw_wdt* @to_dw_wdt(%struct.watchdog_device* %5)
  store %struct.dw_wdt* %6, %struct.dw_wdt** %4, align 8
  %7 = load %struct.dw_wdt*, %struct.dw_wdt** %4, align 8
  %8 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %14 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  store i32 0, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.dw_wdt*, %struct.dw_wdt** %4, align 8
  %18 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @reset_control_assert(i32 %19)
  %21 = load %struct.dw_wdt*, %struct.dw_wdt** %4, align 8
  %22 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @reset_control_deassert(i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.dw_wdt* @to_dw_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
