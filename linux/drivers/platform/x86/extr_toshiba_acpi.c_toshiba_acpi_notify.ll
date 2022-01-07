; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.toshiba_acpi_dev = type { i32, i32, i32, i32, i32 }

@TOSHIBA_WMI_EVENT_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Dock event received %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Thermal event received\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SATA power event received %x\0A\00", align 1
@toshiba_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unable to update sysfs entries\0A\00", align 1
@SCI_KBD_MODE_AUTO = common dso_local global i32 0, align 4
@SCI_KBD_MODE_ON = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown event received %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @toshiba_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_acpi_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.toshiba_acpi_dev*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.toshiba_acpi_dev* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.toshiba_acpi_dev* %7, %struct.toshiba_acpi_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %64 [
    i32 128, label %9
    i32 129, label %17
    i32 130, label %17
    i32 131, label %17
    i32 136, label %20
    i32 143, label %22
    i32 144, label %22
    i32 140, label %23
    i32 139, label %23
    i32 146, label %26
    i32 133, label %63
    i32 141, label %63
    i32 142, label %63
    i32 148, label %63
    i32 149, label %63
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @TOSHIBA_WMI_EVENT_GUID, align 4
  %11 = call i32 @wmi_has_guid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %86

14:                                               ; preds = %9
  %15 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %16 = call i32 @toshiba_acpi_process_hotkeys(%struct.toshiba_acpi_dev* %15)
  br label %67

17:                                               ; preds = %2, %2, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %67

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %67

22:                                               ; preds = %2, %2
  br label %67

23:                                               ; preds = %2, %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %67

26:                                               ; preds = %2
  %27 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %28 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @sysfs_update_group(i32* %31, i32* @toshiba_attr_group)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %26
  %37 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %38 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %43 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SCI_KBD_MODE_AUTO, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %49 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %48, i32 0, i32 4
  %50 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %51 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCI_KBD_MODE_ON, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @LED_FULL, align 4
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @LED_OFF, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @led_classdev_notify_brightness_hw_changed(i32* %49, i32 %60)
  br label %62

62:                                               ; preds = %59, %41, %36
  br label %67

63:                                               ; preds = %2, %2, %2, %2, %2
  br label %64

64:                                               ; preds = %2, %63
  %65 = load i32, i32* %4, align 4
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %62, %23, %22, %20, %17, %14
  %68 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 0
  %74 = call i32 @dev_name(%struct.TYPE_4__* %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %80 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  br label %83

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ 0, %82 ]
  %85 = call i32 @acpi_bus_generate_netlink_event(i32 %71, i32 %74, i32 %75, i32 %84)
  br label %86

86:                                               ; preds = %83, %13
  ret void
}

declare dso_local %struct.toshiba_acpi_dev* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @wmi_has_guid(i32) #1

declare dso_local i32 @toshiba_acpi_process_hotkeys(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @sysfs_update_group(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @led_classdev_notify_brightness_hw_changed(i32*, i32) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
