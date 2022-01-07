; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_timer_set_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_timer_set_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.esb_dev = type { i32 }

@ESB_WDT_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @esb_timer_set_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esb_timer_set_heartbeat(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esb_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.esb_dev* @to_esb_dev(%struct.watchdog_device* %7)
  store %struct.esb_dev* %8, %struct.esb_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.esb_dev*, %struct.esb_dev** %5, align 8
  %12 = call i32 @esb_unlock_registers(%struct.esb_dev* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.esb_dev*, %struct.esb_dev** %5, align 8
  %15 = call i32 @ESB_TIMER1_REG(%struct.esb_dev* %14)
  %16 = call i32 @writel(i32 %13, i32 %15)
  %17 = load %struct.esb_dev*, %struct.esb_dev** %5, align 8
  %18 = call i32 @esb_unlock_registers(%struct.esb_dev* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.esb_dev*, %struct.esb_dev** %5, align 8
  %21 = call i32 @ESB_TIMER2_REG(%struct.esb_dev* %20)
  %22 = call i32 @writel(i32 %19, i32 %21)
  %23 = load %struct.esb_dev*, %struct.esb_dev** %5, align 8
  %24 = call i32 @esb_unlock_registers(%struct.esb_dev* %23)
  %25 = load i32, i32* @ESB_WDT_RELOAD, align 4
  %26 = load %struct.esb_dev*, %struct.esb_dev** %5, align 8
  %27 = call i32 @ESB_RELOAD_REG(%struct.esb_dev* %26)
  %28 = call i32 @writew(i32 %25, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret i32 0
}

declare dso_local %struct.esb_dev* @to_esb_dev(%struct.watchdog_device*) #1

declare dso_local i32 @esb_unlock_registers(%struct.esb_dev*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ESB_TIMER1_REG(%struct.esb_dev*) #1

declare dso_local i32 @ESB_TIMER2_REG(%struct.esb_dev*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @ESB_RELOAD_REG(%struct.esb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
