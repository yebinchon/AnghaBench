; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_tco_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_tco_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sp5100_tco = type { i32 }

@SP5100_WDT_START_STOP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @tco_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tco_timer_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sp5100_tco*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.sp5100_tco* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.sp5100_tco* %6, %struct.sp5100_tco** %3, align 8
  %7 = load %struct.sp5100_tco*, %struct.sp5100_tco** %3, align 8
  %8 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SP5100_WDT_CONTROL(i32 %9)
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @SP5100_WDT_START_STOP_BIT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sp5100_tco*, %struct.sp5100_tco** %3, align 8
  %18 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SP5100_WDT_CONTROL(i32 %19)
  %21 = call i32 @writel(i32 %16, i32 %20)
  ret i32 0
}

declare dso_local %struct.sp5100_tco* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @SP5100_WDT_CONTROL(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
