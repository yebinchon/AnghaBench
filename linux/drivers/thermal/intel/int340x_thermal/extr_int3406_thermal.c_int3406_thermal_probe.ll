; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3406_thermal.c_int3406_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3406_thermal.c_int3406_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.int3406_thermal_data = type { i32, i32, %struct.backlight_device*, i64 }
%struct.backlight_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@video_cooling_ops = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@int3406_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @int3406_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3406_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.int3406_thermal_data*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.acpi_device* @ACPI_COMPANION(i32* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i64 @ACPI_HANDLE(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %97

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.int3406_thermal_data* @devm_kzalloc(i32* %20, i32 24, i32 %21)
  store %struct.int3406_thermal_data* %22, %struct.int3406_thermal_data** %5, align 8
  %23 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %24 = icmp ne %struct.int3406_thermal_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %97

28:                                               ; preds = %18
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i64 @ACPI_HANDLE(i32* %30)
  %32 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %33 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @BACKLIGHT_RAW, align 4
  %35 = call %struct.backlight_device* @backlight_device_get_by_type(i32 %34)
  store %struct.backlight_device* %35, %struct.backlight_device** %6, align 8
  %36 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %37 = icmp ne %struct.backlight_device* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %97

41:                                               ; preds = %28
  %42 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %43 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %44 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %43, i32 0, i32 2
  store %struct.backlight_device* %42, %struct.backlight_device** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call %struct.acpi_device* @ACPI_COMPANION(i32* %46)
  %48 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %49 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %48, i32 0, i32 0
  %50 = call i32 @acpi_video_get_levels(%struct.acpi_device* %47, i32* %49, i32* null)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %97

55:                                               ; preds = %41
  %56 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %57 = call i32 @int3406_thermal_get_limit(%struct.int3406_thermal_data* %56)
  %58 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %59 = call i32 @acpi_device_bid(%struct.acpi_device* %58)
  %60 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %61 = call i32 @thermal_cooling_device_register(i32 %59, %struct.int3406_thermal_data* %60, i32* @video_cooling_ops)
  %62 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %63 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %65 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %90

70:                                               ; preds = %55
  %71 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %72 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %75 = load i32, i32* @int3406_notify, align 4
  %76 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %77 = call i32 @acpi_install_notify_handler(i32 %73, i32 %74, i32 %75, %struct.int3406_thermal_data* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %85

81:                                               ; preds = %70
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.int3406_thermal_data* %83)
  store i32 0, i32* %2, align 4
  br label %97

85:                                               ; preds = %80
  %86 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %87 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @thermal_cooling_device_unregister(i32 %88)
  br label %90

90:                                               ; preds = %85, %69
  %91 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %5, align 8
  %92 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @kfree(i32 %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %90, %81, %53, %38, %25, %15
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local %struct.int3406_thermal_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_get_by_type(i32) #1

declare dso_local i32 @acpi_video_get_levels(%struct.acpi_device*, i32*, i32*) #1

declare dso_local i32 @int3406_thermal_get_limit(%struct.int3406_thermal_data*) #1

declare dso_local i32 @thermal_cooling_device_register(i32, %struct.int3406_thermal_data*, i32*) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.int3406_thermal_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.int3406_thermal_data*) #1

declare dso_local i32 @thermal_cooling_device_unregister(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
