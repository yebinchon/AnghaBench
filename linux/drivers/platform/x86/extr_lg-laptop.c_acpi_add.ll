; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_acpi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_acpi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_device = type { i32 }

@pf_device = common dso_local global %struct.TYPE_7__* null, align 8
@pf_driver = common dso_local global i32 0, align 4
@PLATFORM_NAME = common dso_local global i32 0, align 4
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to register platform device\0A\00", align 1
@dev_attribute_group = common dso_local global i32 0, align 4
@kbd_backlight = common dso_local global i32 0, align 4
@INIT_KBD_LED = common dso_local global i32 0, align 4
@inited = common dso_local global i32 0, align 4
@tpad_led = common dso_local global i32 0, align 4
@INIT_TPAD_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pf_device, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

8:                                                ; preds = %1
  %9 = call i32 @platform_driver_register(i32* @pf_driver)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %8
  %15 = load i32, i32* @PLATFORM_NAME, align 4
  %16 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %17 = call %struct.TYPE_7__* @platform_device_register_simple(i32 %15, i32 %16, i32* null, i32 0)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** @pf_device, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pf_device, align 8
  %19 = call i64 @IS_ERR(%struct.TYPE_7__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pf_device, align 8
  %23 = call i32 @PTR_ERR(%struct.TYPE_7__* %22)
  store i32 %23, i32* %4, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @pf_device, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %56

25:                                               ; preds = %14
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pf_device, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @sysfs_create_group(i32* %28, i32* @dev_attribute_group)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %53

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pf_device, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32 @led_classdev_register(%struct.TYPE_8__* %35, i32* @kbd_backlight)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @INIT_KBD_LED, align 4
  %40 = load i32, i32* @inited, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @inited, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pf_device, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @led_classdev_register(%struct.TYPE_8__* %44, i32* @tpad_led)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @INIT_TPAD_LED, align 4
  %49 = load i32, i32* @inited, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @inited, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = call i32 (...) @wmi_input_setup()
  store i32 0, i32* %2, align 4
  br label %59

53:                                               ; preds = %32
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pf_device, align 8
  %55 = call i32 @platform_device_unregister(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %53, %21
  %57 = call i32 @platform_driver_unregister(i32* @pf_driver)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %51, %12, %7
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @platform_driver_register(i32*) #1

declare dso_local %struct.TYPE_7__* @platform_device_register_simple(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @wmi_input_setup(...) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
