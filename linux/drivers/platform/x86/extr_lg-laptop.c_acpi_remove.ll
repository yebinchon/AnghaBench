; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_acpi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_acpi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_device = type { i32 }

@pf_device = common dso_local global %struct.TYPE_5__* null, align 8
@dev_attribute_group = common dso_local global i32 0, align 4
@inited = common dso_local global i32 0, align 4
@INIT_KBD_LED = common dso_local global i32 0, align 4
@kbd_backlight = common dso_local global i32 0, align 4
@INIT_TPAD_LED = common dso_local global i32 0, align 4
@tpad_led = common dso_local global i32 0, align 4
@pf_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pf_device, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = call i32 @sysfs_remove_group(i32* %5, i32* @dev_attribute_group)
  %7 = load i32, i32* @inited, align 4
  %8 = load i32, i32* @INIT_KBD_LED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @led_classdev_unregister(i32* @kbd_backlight)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* @inited, align 4
  %15 = load i32, i32* @INIT_TPAD_LED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @led_classdev_unregister(i32* @tpad_led)
  br label %20

20:                                               ; preds = %18, %13
  %21 = call i32 (...) @wmi_input_destroy()
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pf_device, align 8
  %23 = call i32 @platform_device_unregister(%struct.TYPE_5__* %22)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @pf_device, align 8
  %24 = call i32 @platform_driver_unregister(i32* @pf_driver)
  ret i32 0
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @wmi_input_destroy(...) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
