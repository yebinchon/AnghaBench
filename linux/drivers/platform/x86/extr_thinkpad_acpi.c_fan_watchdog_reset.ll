; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_watchdog_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_watchdog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fan_control_access_mode = common dso_local global i64 0, align 8
@TPACPI_FAN_WR_NONE = common dso_local global i64 0, align 8
@fan_watchdog_maxinterval = common dso_local global i32 0, align 4
@tpacpi_lifecycle = common dso_local global i64 0, align 8
@TPACPI_LIFE_EXITING = common dso_local global i64 0, align 8
@tpacpi_wq = common dso_local global i32 0, align 4
@fan_watchdog_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fan_watchdog_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fan_watchdog_reset() #0 {
  %1 = load i64, i64* @fan_control_access_mode, align 8
  %2 = load i64, i64* @TPACPI_FAN_WR_NONE, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %20

5:                                                ; preds = %0
  %6 = load i32, i32* @fan_watchdog_maxinterval, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i64, i64* @tpacpi_lifecycle, align 8
  %10 = load i64, i64* @TPACPI_LIFE_EXITING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @tpacpi_wq, align 4
  %14 = load i32, i32* @fan_watchdog_maxinterval, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = call i32 @msecs_to_jiffies(i32 %15)
  %17 = call i32 @mod_delayed_work(i32 %13, i32* @fan_watchdog_task, i32 %16)
  br label %20

18:                                               ; preds = %8, %5
  %19 = call i32 @cancel_delayed_work(i32* @fan_watchdog_task)
  br label %20

20:                                               ; preds = %4, %18, %12
  ret void
}

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
