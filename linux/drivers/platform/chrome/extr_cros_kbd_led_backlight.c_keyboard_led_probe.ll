; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_kbd_led_backlight.c_keyboard_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_kbd_led_backlight.c_keyboard_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.led_classdev = type { i8*, i32, i32, i32, i32 }

@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_KEYBOARD_BACKLIGHT_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to find ACPI device %s: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"chromeos::kbd_backlight\00", align 1
@ACPI_KEYBOARD_BACKLIGHT_MAX = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@keyboard_led_set_brightness = common dso_local global i32 0, align 4
@keyboard_led_get_brightness = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @keyboard_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyboard_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %9 = load i32, i32* @ACPI_KEYBOARD_BACKLIGHT_DEVICE, align 4
  %10 = call i32 @acpi_get_handle(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @ACPI_KEYBOARD_BACKLIGHT_DEVICE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.led_classdev* @devm_kzalloc(i32* %24, i32 24, i32 %25)
  store %struct.led_classdev* %26, %struct.led_classdev** %4, align 8
  %27 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %28 = icmp ne %struct.led_classdev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %58

32:                                               ; preds = %22
  %33 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %34 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @ACPI_KEYBOARD_BACKLIGHT_MAX, align 4
  %36 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %37 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %39 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %40 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @keyboard_led_set_brightness, align 4
  %44 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %45 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @keyboard_led_get_brightness, align 4
  %47 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %48 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %52 = call i32 @devm_led_classdev_register(i32* %50, %struct.led_classdev* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %29, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local %struct.led_classdev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
