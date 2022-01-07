; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_driver_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_driver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ibm_backlight_device = common dso_local global i64 0, align 8
@alsa_card = common dso_local global i64 0, align 8
@tp_features = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TP_HKEY_EV_KBD_LIGHT = common dso_local global i32 0, align 4
@kbdlight_mutex = common dso_local global i32 0, align 4
@kbdlight_brightness = common dso_local global i32 0, align 4
@tpacpi_led_kbdlight = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tpacpi_driver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpacpi_driver_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @ibm_backlight_device, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %10 [
    i32 131, label %8
    i32 132, label %8
  ]

8:                                                ; preds = %6, %6
  %9 = call i32 (...) @tpacpi_brightness_notify_change()
  br label %10

10:                                               ; preds = %8, %6
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i64, i64* @alsa_card, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %18 [
    i32 128, label %16
    i32 130, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %14, %14, %14
  %17 = call i32 (...) @volume_alsa_notify_change()
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tp_features, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @TP_HKEY_EV_KBD_LIGHT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = call i32 @mutex_lock(i32* @kbdlight_mutex)
  %28 = call i32 @kbdlight_sysfs_get(i32* null)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @kbdlight_brightness, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* @kbdlight_brightness, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @led_classdev_notify_brightness_hw_changed(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tpacpi_led_kbdlight, i32 0, i32 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = call i32 @mutex_unlock(i32* @kbdlight_mutex)
  br label %38

38:                                               ; preds = %36, %22, %19
  ret void
}

declare dso_local i32 @tpacpi_brightness_notify_change(...) #1

declare dso_local i32 @volume_alsa_notify_change(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kbdlight_sysfs_get(i32*) #1

declare dso_local i32 @led_classdev_notify_brightness_hw_changed(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
