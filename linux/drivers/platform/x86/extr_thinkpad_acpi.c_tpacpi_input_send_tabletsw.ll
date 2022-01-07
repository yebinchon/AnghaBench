; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_input_send_tabletsw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_input_send_tabletsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tpacpi_inputdev_send_mutex = common dso_local global i32 0, align 4
@tpacpi_inputdev = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tpacpi_input_send_tabletsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpacpi_input_send_tabletsw() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = call i32 @hotkey_get_tablet_mode(i32* %1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = call i32 @mutex_lock(i32* @tpacpi_inputdev_send_mutex)
  %9 = load i32, i32* @tpacpi_inputdev, align 4
  %10 = load i32, i32* @SW_TABLET_MODE, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @input_report_switch(i32 %9, i32 %10, i32 %15)
  %17 = load i32, i32* @tpacpi_inputdev, align 4
  %18 = call i32 @input_sync(i32 %17)
  %19 = call i32 @mutex_unlock(i32* @tpacpi_inputdev_send_mutex)
  br label %20

20:                                               ; preds = %7, %4, %0
  ret void
}

declare dso_local i32 @hotkey_get_tablet_mode(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
