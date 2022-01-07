; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_hid_priv = type { i64 }

@INTEL_HID_DSM_HDMM_FN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to read mode\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"platform is not in simple mode\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to setup Intel HID hotkeys\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"platform supports 5 button array\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to setup Intel 5 button array hotkeys\0A\00", align 1
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@notify_handler = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@INTEL_HID_DSM_BTNL_FN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to enable HID power button\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_hid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hid_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_hid_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @ACPI_HANDLE(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @intel_hid_init_dsm(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @INTEL_HID_DSM_HDMM_FN, align 4
  %17 = call i32 @intel_hid_evaluate_method(i32 %15, i32 %16, i64* %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %119

25:                                               ; preds = %1
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %25
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.intel_hid_priv* @devm_kzalloc(i32* %36, i32 8, i32 %37)
  store %struct.intel_hid_priv* %38, %struct.intel_hid_priv** %6, align 8
  %39 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %6, align 8
  %40 = icmp ne %struct.intel_hid_priv* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %119

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %6, align 8
  %48 = call i32 @dev_set_drvdata(i32* %46, %struct.intel_hid_priv* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i32 @intel_hid_input_setup(%struct.platform_device* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %119

56:                                               ; preds = %44
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i64 @button_array_present(%struct.platform_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = call i32 @intel_button_array_input_setup(%struct.platform_device* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %74 = load i32, i32* @notify_handler, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @acpi_install_notify_handler(i32 %72, i32 %73, i32 %74, %struct.platform_device* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @ACPI_FAILURE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %119

83:                                               ; preds = %71
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @intel_hid_set_enable(i32* %85, i32 1)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %113

90:                                               ; preds = %83
  %91 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %6, align 8
  %92 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @intel_button_array_enable(i32* %97, i32 1)
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @INTEL_HID_DSM_BTNL_FN, align 4
  %101 = call i32 @intel_hid_evaluate_method(i32 %99, i32 %100, i64* %9)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_warn(i32* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %95
  br label %108

108:                                              ; preds = %107, %90
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @device_init_wakeup(i32* %110, i32 1)
  %112 = call i32 (...) @acpi_ec_mark_gpe_for_wake()
  store i32 0, i32* %2, align 4
  br label %119

113:                                              ; preds = %89
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %116 = load i32, i32* @notify_handler, align 4
  %117 = call i32 @acpi_remove_notify_handler(i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %113, %108, %80, %53, %41, %28, %19
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i32 @intel_hid_init_dsm(i32) #1

declare dso_local i32 @intel_hid_evaluate_method(i32, i32, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.intel_hid_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.intel_hid_priv*) #1

declare dso_local i32 @intel_hid_input_setup(%struct.platform_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @button_array_present(%struct.platform_device*) #1

declare dso_local i32 @intel_button_array_input_setup(%struct.platform_device*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.platform_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @intel_hid_set_enable(i32*, i32) #1

declare dso_local i32 @intel_button_array_enable(i32*, i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @acpi_ec_mark_gpe_for_wake(...) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
