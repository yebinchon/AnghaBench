; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss-platform.c_pwm_lpss_probe_platform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss-platform.c_pwm_lpss_probe_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.pwm_lpss_boardinfo = type { i32 }
%struct.acpi_device_id = type { i64 }
%struct.pwm_lpss_chip = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DPM_FLAG_SMART_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_lpss_probe_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_lpss_probe_platform(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwm_lpss_boardinfo*, align 8
  %5 = alloca %struct.acpi_device_id*, align 8
  %6 = alloca %struct.pwm_lpss_chip*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.acpi_device_id* @acpi_match_device(i32 %13, %struct.TYPE_8__* %15)
  store %struct.acpi_device_id* %16, %struct.acpi_device_id** %5, align 8
  %17 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %18 = icmp ne %struct.acpi_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.pwm_lpss_boardinfo*
  store %struct.pwm_lpss_boardinfo* %26, %struct.pwm_lpss_boardinfo** %4, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %7, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %4, align 8
  %34 = call %struct.pwm_lpss_chip* @pwm_lpss_probe(%struct.TYPE_8__* %31, %struct.resource* %32, %struct.pwm_lpss_boardinfo* %33)
  store %struct.pwm_lpss_chip* %34, %struct.pwm_lpss_chip** %6, align 8
  %35 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %6, align 8
  %36 = call i64 @IS_ERR(%struct.pwm_lpss_chip* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.pwm_lpss_chip* %39)
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %22
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %6, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.pwm_lpss_chip* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* @DPM_FLAG_SMART_PREPARE, align 4
  %48 = call i32 @dev_pm_set_driver_flags(%struct.TYPE_8__* %46, i32 %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @pm_runtime_set_active(%struct.TYPE_8__* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %41, %38, %19
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.pwm_lpss_chip* @pwm_lpss_probe(%struct.TYPE_8__*, %struct.resource*, %struct.pwm_lpss_boardinfo*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_lpss_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.pwm_lpss_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_lpss_chip*) #1

declare dso_local i32 @dev_pm_set_driver_flags(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
