; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surfacepro3_button.c_surface_button_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surfacepro3_button.c_surface_button_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.surface_button = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@KEY_RESERVED = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Tablet mode is not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @surface_button_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surface_button_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.surface_button*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = call %struct.surface_button* @acpi_driver_data(%struct.acpi_device* %9)
  store %struct.surface_button* %10, %struct.surface_button** %5, align 8
  %11 = load i32, i32* @KEY_RESERVED, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %29 [
    i32 135, label %13
    i32 131, label %14
    i32 136, label %16
    i32 132, label %17
    i32 133, label %19
    i32 129, label %20
    i32 134, label %22
    i32 130, label %23
    i32 128, label %25
  ]

13:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %2, %13
  %15 = load i32, i32* @KEY_POWER, align 4
  store i32 %15, i32* %7, align 4
  br label %34

16:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %2, %16
  %18 = load i32, i32* @KEY_LEFTMETA, align 4
  store i32 %18, i32* %7, align 4
  br label %34

19:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %2, %19
  %21 = load i32, i32* @KEY_VOLUMEUP, align 4
  store i32 %21, i32* %7, align 4
  br label %34

22:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %2, %22
  %24 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  store i32 %24, i32* %7, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 0
  %28 = call i32 @dev_warn_once(i32* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_info_ratelimited(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %25, %23, %20, %17, %14
  %35 = load %struct.surface_button*, %struct.surface_button** %5, align 8
  %36 = getelementptr inbounds %struct.surface_button, %struct.surface_button* %35, i32 0, i32 1
  %37 = load %struct.input_dev*, %struct.input_dev** %36, align 8
  store %struct.input_dev* %37, %struct.input_dev** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @KEY_RESERVED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %68

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 0
  %48 = load %struct.surface_button*, %struct.surface_button** %5, align 8
  %49 = getelementptr inbounds %struct.surface_button, %struct.surface_button* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pm_wakeup_dev_event(i32* %47, i32 0, i64 %50)
  br label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.surface_button*, %struct.surface_button** %5, align 8
  %54 = getelementptr inbounds %struct.surface_button, %struct.surface_button* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %68

58:                                               ; preds = %52
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = call i32 @input_report_key(%struct.input_dev* %59, i32 %60, i32 %64)
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = call i32 @input_sync(%struct.input_dev* %66)
  br label %68

68:                                               ; preds = %58, %57, %41
  ret void
}

declare dso_local %struct.surface_button* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @dev_warn_once(i32*, i8*) #1

declare dso_local i32 @dev_info_ratelimited(i32*, i8*, i32) #1

declare dso_local i32 @pm_wakeup_dev_event(i32*, i32, i64) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
