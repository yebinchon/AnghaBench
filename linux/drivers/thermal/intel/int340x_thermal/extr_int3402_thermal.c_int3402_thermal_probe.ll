; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3402_thermal.c_int3402_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3402_thermal.c_int3402_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.int3402_thermal_data = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@int3402_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @int3402_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3402_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.int3402_thermal_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.acpi_device* @ACPI_COMPANION(i32* %8)
  store %struct.acpi_device* %9, %struct.acpi_device** %4, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @acpi_has_method(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.int3402_thermal_data* @devm_kzalloc(i32* %20, i32 8, i32 %21)
  store %struct.int3402_thermal_data* %22, %struct.int3402_thermal_data** %5, align 8
  %23 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %24 = icmp ne %struct.int3402_thermal_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %18
  %29 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %30 = call i32 @int340x_thermal_zone_add(%struct.acpi_device* %29, i32* null)
  %31 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %32 = getelementptr inbounds %struct.int3402_thermal_data, %struct.int3402_thermal_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %34 = getelementptr inbounds %struct.int3402_thermal_data, %struct.int3402_thermal_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %40 = getelementptr inbounds %struct.int3402_thermal_data, %struct.int3402_thermal_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %28
  %44 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %48 = load i32, i32* @int3402_notify, align 4
  %49 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %50 = call i32 @acpi_install_notify_handler(i32 %46, i32 %47, i32 %48, %struct.int3402_thermal_data* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %55 = getelementptr inbounds %struct.int3402_thermal_data, %struct.int3402_thermal_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @int340x_thermal_zone_remove(i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %43
  %60 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %64 = getelementptr inbounds %struct.int3402_thermal_data, %struct.int3402_thermal_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.int3402_thermal_data*, %struct.int3402_thermal_data** %5, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.int3402_thermal_data* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %53, %38, %25, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @acpi_has_method(i32, i8*) #1

declare dso_local %struct.int3402_thermal_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @int340x_thermal_zone_add(%struct.acpi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.int3402_thermal_data*) #1

declare dso_local i32 @int340x_thermal_zone_remove(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.int3402_thermal_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
