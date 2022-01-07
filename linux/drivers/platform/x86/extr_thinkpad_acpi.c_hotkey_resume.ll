; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@hotkey_acpi_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"error while attempting to reset the event firmware interface\0A\00", align 1
@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hkey_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"STRW\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@adaptive_keyboard_prev_mode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Cannot set adaptive keyboard mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hotkey_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hotkey_resume() #0 {
  %1 = call i32 (...) @tpacpi_disable_brightness_delay()
  %2 = call i64 @hotkey_status_set(i32 1)
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @hotkey_acpi_mask, align 4
  %6 = call i64 @hotkey_mask_set(i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4, %0
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %4
  %11 = call i32 (...) @tpacpi_send_radiosw_update()
  %12 = call i32 (...) @hotkey_tablet_mode_notify_change()
  %13 = call i32 (...) @hotkey_wakeup_reason_notify_change()
  %14 = call i32 (...) @hotkey_wakeup_hotunplug_complete_notify_change()
  %15 = call i32 @hotkey_poll_setup_safe(i32 0)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load i32, i32* @hkey_handle, align 4
  %20 = load i32, i32* @adaptive_keyboard_prev_mode, align 4
  %21 = call i32 @acpi_evalf(i32 %19, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @tpacpi_disable_brightness_delay(...) #1

declare dso_local i64 @hotkey_status_set(i32) #1

declare dso_local i64 @hotkey_mask_set(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @tpacpi_send_radiosw_update(...) #1

declare dso_local i32 @hotkey_tablet_mode_notify_change(...) #1

declare dso_local i32 @hotkey_wakeup_reason_notify_change(...) #1

declare dso_local i32 @hotkey_wakeup_hotunplug_complete_notify_change(...) #1

declare dso_local i32 @hotkey_poll_setup_safe(i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
