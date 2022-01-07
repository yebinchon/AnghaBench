; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.esb_dev = type { i32 }

@ESB_WDT_RELOAD = common dso_local global i32 0, align 4
@ESB_LOCK_REG = common dso_local global i32 0, align 4
@ESB_WDT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @esb_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esb_timer_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.esb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.esb_dev* @to_esb_dev(%struct.watchdog_device* %5)
  store %struct.esb_dev* %6, %struct.esb_dev** %3, align 8
  %7 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %8 = call i32 @esb_unlock_registers(%struct.esb_dev* %7)
  %9 = load i32, i32* @ESB_WDT_RELOAD, align 4
  %10 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %11 = call i32 @ESB_RELOAD_REG(%struct.esb_dev* %10)
  %12 = call i32 @writew(i32 %9, i32 %11)
  %13 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %14 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ESB_LOCK_REG, align 4
  %17 = call i32 @pci_write_config_byte(i32 %15, i32 %16, i32 0)
  %18 = load %struct.esb_dev*, %struct.esb_dev** %3, align 8
  %19 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ESB_LOCK_REG, align 4
  %22 = call i32 @pci_read_config_byte(i32 %20, i32 %21, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ESB_WDT_ENABLE, align 4
  %25 = and i32 %23, %24
  ret i32 %25
}

declare dso_local %struct.esb_dev* @to_esb_dev(%struct.watchdog_device*) #1

declare dso_local i32 @esb_unlock_registers(%struct.esb_dev*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @ESB_RELOAD_REG(%struct.esb_dev*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
