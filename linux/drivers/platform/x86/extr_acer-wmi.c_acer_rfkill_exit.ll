; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ec_raw_mode = common dso_local global i64 0, align 8
@ACERWMID_EVENT_GUID = common dso_local global i32 0, align 4
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@ACER_CAP_THREEG = common dso_local global i32 0, align 4
@acer_rfkill_work = common dso_local global i32 0, align 4
@wireless_rfkill = common dso_local global i32 0, align 4
@bluetooth_rfkill = common dso_local global i32 0, align 4
@threeg_rfkill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acer_rfkill_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acer_rfkill_exit() #0 {
  %1 = load i64, i64* @ec_raw_mode, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @ACERWMID_EVENT_GUID, align 4
  %5 = call i32 @wmi_has_guid(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %0
  %8 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %9 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ACER_CAP_THREEG, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @has_cap(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = call i32 @cancel_delayed_work_sync(i32* @acer_rfkill_work)
  br label %17

17:                                               ; preds = %15, %7, %3
  %18 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %19 = call i64 @has_cap(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @wireless_rfkill, align 4
  %23 = call i32 @rfkill_unregister(i32 %22)
  %24 = load i32, i32* @wireless_rfkill, align 4
  %25 = call i32 @rfkill_destroy(i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %28 = call i64 @has_cap(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @bluetooth_rfkill, align 4
  %32 = call i32 @rfkill_unregister(i32 %31)
  %33 = load i32, i32* @bluetooth_rfkill, align 4
  %34 = call i32 @rfkill_destroy(i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* @ACER_CAP_THREEG, align 4
  %37 = call i64 @has_cap(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @threeg_rfkill, align 4
  %41 = call i32 @rfkill_unregister(i32 %40)
  %42 = load i32, i32* @threeg_rfkill, align 4
  %43 = call i32 @rfkill_destroy(i32 %42)
  br label %44

44:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32 @wmi_has_guid(i32) #1

declare dso_local i64 @has_cap(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rfkill_unregister(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
