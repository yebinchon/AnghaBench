; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_notify_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TP_ACPI_WAKEUP_UNDOCK = common dso_local global i64 0, align 8
@hotkey_wakeup_reason = common dso_local global i64 0, align 8
@TP_ACPI_WAKEUP_BAYEJ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"EMERGENCY WAKEUP: battery almost empty\0A\00", align 1
@TP_ACPI_WAKEUP_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"woke up due to a hot-unplug request...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @hotkey_notify_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_notify_wakeup(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 1, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %19 [
    i32 131, label %11
    i32 128, label %11
    i32 132, label %14
    i32 129, label %14
    i32 133, label %17
    i32 130, label %17
  ]

11:                                               ; preds = %3, %3
  %12 = load i64, i64* @TP_ACPI_WAKEUP_UNDOCK, align 8
  store i64 %12, i64* @hotkey_wakeup_reason, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 1, i32* %13, align 4
  br label %20

14:                                               ; preds = %3, %3
  %15 = load i64, i64* @TP_ACPI_WAKEUP_BAYEJ, align 8
  store i64 %15, i64* @hotkey_wakeup_reason, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 1, i32* %16, align 4
  br label %20

17:                                               ; preds = %3, %3
  %18 = call i32 @pr_alert(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

20:                                               ; preds = %17, %14, %11
  %21 = load i64, i64* @hotkey_wakeup_reason, align 8
  %22 = load i64, i64* @TP_ACPI_WAKEUP_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @hotkey_wakeup_reason_notify_change()
  br label %27

27:                                               ; preds = %24, %20
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @pr_alert(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @hotkey_wakeup_reason_notify_change(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
