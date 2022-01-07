; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_enabledisable_warn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_enabledisable_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"procfs hotkey enable/disable\00", align 1
@tpacpi_lifecycle = common dso_local global i64 0, align 8
@TPACPI_LIFE_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [100 x i8] c"hotkey enable/disable functionality has been removed from the driver.  Hotkeys are always enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"Please remove the hotkey=enable module parameter, it is deprecated.  Hotkeys are always enabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hotkey_enabledisable_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hotkey_enabledisable_warn(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @tpacpi_log_usertask(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* @tpacpi_lifecycle, align 8
  %5 = load i64, i64* @TPACPI_LIFE_RUNNING, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @pr_fmt(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @WARN(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @tpacpi_log_usertask(i8*) #1

declare dso_local i32 @WARN(i32, i32) #1

declare dso_local i32 @pr_fmt(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
