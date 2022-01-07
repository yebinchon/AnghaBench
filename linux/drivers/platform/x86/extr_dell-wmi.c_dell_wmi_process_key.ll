; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_process_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_process_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.dell_wmi_priv = type { i32 }
%struct.key_entry = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"Unknown key with type 0x%04x and code 0x%04x pressed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Key with type 0x%04x and code 0x%04x pressed\0A\00", align 1
@KEY_BRIGHTNESSUP = common dso_local global i64 0, align 8
@KEY_BRIGHTNESSDOWN = common dso_local global i64 0, align 8
@wmi_requires_smbios_request = common dso_local global i32 0, align 4
@KEY_KBDILLUMTOGGLE = common dso_local global i64 0, align 8
@DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi_device*, i32, i32)* @dell_wmi_process_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dell_wmi_process_key(%struct.wmi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wmi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dell_wmi_priv*, align 8
  %8 = alloca %struct.key_entry*, align 8
  store %struct.wmi_device* %0, %struct.wmi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %10 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %9, i32 0, i32 0
  %11 = call %struct.dell_wmi_priv* @dev_get_drvdata(i32* %10)
  store %struct.dell_wmi_priv* %11, %struct.dell_wmi_priv** %7, align 8
  %12 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %7, align 8
  %13 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 16
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %14, i32 %18)
  store %struct.key_entry* %19, %struct.key_entry** %8, align 8
  %20 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %21 = icmp ne %struct.key_entry* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %70

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %31 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @KEY_BRIGHTNESSUP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %37 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KEY_BRIGHTNESSDOWN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %26
  %42 = call i64 (...) @acpi_video_handles_brightness_key_presses()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %70

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 57381
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @wmi_requires_smbios_request, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %70

55:                                               ; preds = %51, %48, %45
  %56 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %57 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @KEY_KBDILLUMTOGGLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @DELL_LAPTOP_KBD_BACKLIGHT_BRIGHTNESS_CHANGED, align 4
  %63 = call i32 @dell_laptop_call_notifier(i32 %62, i32* null)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %7, align 8
  %66 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.key_entry*, %struct.key_entry** %8, align 8
  %69 = call i32 @sparse_keymap_report_entry(i32 %67, %struct.key_entry* %68, i32 1, i32 1)
  br label %70

70:                                               ; preds = %64, %54, %44, %22
  ret void
}

declare dso_local %struct.dell_wmi_priv* @dev_get_drvdata(i32*) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i64 @acpi_video_handles_brightness_key_presses(...) #1

declare dso_local i32 @dell_laptop_call_notifier(i32, i32*) #1

declare dso_local i32 @sparse_keymap_report_entry(i32, %struct.key_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
