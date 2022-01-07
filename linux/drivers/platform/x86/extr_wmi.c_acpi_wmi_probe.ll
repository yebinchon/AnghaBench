; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_acpi_wmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_acpi_wmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ACPI companion is missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_EC = common dso_local global i32 0, align 4
@acpi_wmi_ec_space_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error installing EC region handler\0A\00", align 1
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_wmi_notify_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Error installing notify handler\0A\00", align 1
@wmi_bus_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"wmi_bus-%s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to parse WDG method\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @acpi_wmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_wmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.acpi_device* @ACPI_COMPANION(i32* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %4, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %12 = icmp ne %struct.acpi_device* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ACPI_ADR_SPACE_EC, align 4
  %24 = call i32 @acpi_install_address_space_handler(i32 %22, i32 %23, i32* @acpi_wmi_ec_space_handler, i32* null, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %19
  %35 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %39 = load i32, i32* @acpi_wmi_notify_handler, align 4
  %40 = call i32 @acpi_install_notify_handler(i32 %37, i32 %38, i32 %39, i32* null)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %87

50:                                               ; preds = %34
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @MKDEV(i32 0, i32 0)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_name(i32* %55)
  %57 = call %struct.device* @device_create(i32* @wmi_bus_class, i32* %52, i32 %53, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  store %struct.device* %57, %struct.device** %5, align 8
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call i64 @IS_ERR(%struct.device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 @PTR_ERR(%struct.device* %62)
  store i32 %63, i32* %7, align 4
  br label %80

64:                                               ; preds = %50
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @dev_set_drvdata(i32* %66, %struct.device* %67)
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %71 = call i32 @parse_wdg(%struct.device* %69, %struct.acpi_device* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %77

76:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %94

77:                                               ; preds = %74
  %78 = call i32 @MKDEV(i32 0, i32 0)
  %79 = call i32 @device_destroy(i32* @wmi_bus_class, i32 %78)
  br label %80

80:                                               ; preds = %77, %61
  %81 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %82 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %85 = load i32, i32* @acpi_wmi_notify_handler, align 4
  %86 = call i32 @acpi_remove_notify_handler(i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %44
  %88 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %89 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ACPI_ADR_SPACE_EC, align 4
  %92 = call i32 @acpi_remove_address_space_handler(i32 %90, i32 %91, i32* @acpi_wmi_ec_space_handler)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %76, %28, %13
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @acpi_install_address_space_handler(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, i32*) #1

declare dso_local %struct.device* @device_create(i32*, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.device*) #1

declare dso_local i32 @parse_wdg(%struct.device*, %struct.acpi_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @device_destroy(i32*, i32) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @acpi_remove_address_space_handler(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
