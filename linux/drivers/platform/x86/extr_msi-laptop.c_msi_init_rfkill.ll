; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_msi_init_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_msi_init_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@rfk_wlan = common dso_local global i64 0, align 8
@wlan_s = common dso_local global i32 0, align 4
@rfk_bluetooth = common dso_local global i64 0, align 8
@bluetooth_s = common dso_local global i32 0, align 4
@rfk_threeg = common dso_local global i64 0, align 8
@threeg_s = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @msi_init_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_init_rfkill(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %3 = load i64, i64* @rfk_wlan, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load i64, i64* @rfk_wlan, align 8
  %7 = load i32, i32* @wlan_s, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @rfkill_set_sw_state(i64 %6, i32 %10)
  %12 = load i32, i32* @wlan_s, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @rfkill_wlan_set(i32* null, i32 %15)
  br label %17

17:                                               ; preds = %5, %1
  %18 = load i64, i64* @rfk_bluetooth, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i64, i64* @rfk_bluetooth, align 8
  %22 = load i32, i32* @bluetooth_s, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @rfkill_set_sw_state(i64 %21, i32 %25)
  %27 = load i32, i32* @bluetooth_s, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @rfkill_bluetooth_set(i32* null, i32 %30)
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i64, i64* @rfk_threeg, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i64, i64* @rfk_threeg, align 8
  %37 = load i32, i32* @threeg_s, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @rfkill_set_sw_state(i64 %36, i32 %40)
  %42 = load i32, i32* @threeg_s, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @rfkill_threeg_set(i32* null, i32 %45)
  br label %47

47:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @rfkill_set_sw_state(i64, i32) #1

declare dso_local i32 @rfkill_wlan_set(i32*, i32) #1

declare dso_local i32 @rfkill_bluetooth_set(i32*, i32) #1

declare dso_local i32 @rfkill_threeg_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
