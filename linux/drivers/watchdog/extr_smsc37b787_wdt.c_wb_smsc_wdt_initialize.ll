; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_smsc37b787_wdt.c_wb_smsc_wdt_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_smsc37b787_wdt.c_wb_smsc_wdt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_lock = common dso_local global i32 0, align 4
@IODEV_NO = common dso_local global i32 0, align 4
@unit = common dso_local global i64 0, align 8
@UNIT_SECOND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wb_smsc_wdt_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_smsc_wdt_initialize() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @spin_lock(i32* @io_lock)
  %3 = call i32 (...) @open_io_config()
  %4 = load i32, i32* @IODEV_NO, align 4
  %5 = call i32 @select_io_device(i32 %4)
  %6 = call i32 @gpio_bit13(i32 8)
  %7 = call i32 @gpio_bit12(i32 10)
  %8 = call i32 @wdt_timeout_value(i32 0)
  %9 = call i32 @wdt_timer_ctrl(i32 0)
  %10 = call i32 @wdt_timer_conf(i32 0)
  %11 = call i32 @read_io_cr(i32 241)
  %12 = and i32 %11, 127
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %1, align 1
  %14 = load i64, i64* @unit, align 8
  %15 = load i64, i64* @UNIT_SECOND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i8, i8* %1, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, 128
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %1, align 1
  br label %22

22:                                               ; preds = %17, %0
  %23 = load i8, i8* %1, align 1
  %24 = call i32 @wdt_timer_units(i8 zeroext %23)
  %25 = call i32 (...) @close_io_config()
  %26 = call i32 @spin_unlock(i32* @io_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @open_io_config(...) #1

declare dso_local i32 @select_io_device(i32) #1

declare dso_local i32 @gpio_bit13(i32) #1

declare dso_local i32 @gpio_bit12(i32) #1

declare dso_local i32 @wdt_timeout_value(i32) #1

declare dso_local i32 @wdt_timer_ctrl(i32) #1

declare dso_local i32 @wdt_timer_conf(i32) #1

declare dso_local i32 @read_io_cr(i32) #1

declare dso_local i32 @wdt_timer_units(i8 zeroext) #1

declare dso_local i32 @close_io_config(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
