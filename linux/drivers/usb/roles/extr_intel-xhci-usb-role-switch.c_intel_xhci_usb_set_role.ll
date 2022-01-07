; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/roles/extr_intel-xhci-usb-role-switch.c_intel_xhci_usb_set_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/roles/extr_intel-xhci-usb-role-switch.c_intel_xhci_usb_set_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_xhci_usb_data = type { i64, i64 }

@DRD_CONFIG_DYNAMIC = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@AE_NOT_CONFIGURED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Error could not acquire lock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DUAL_ROLE_CFG0 = common dso_local global i64 0, align 8
@SW_IDPIN = common dso_local global i32 0, align 4
@SW_VBUS_VALID = common dso_local global i32 0, align 4
@DRD_CONFIG_STATIC_HOST = common dso_local global i32 0, align 4
@DRD_CONFIG_STATIC_DEVICE = common dso_local global i32 0, align 4
@SW_IDPIN_EN = common dso_local global i32 0, align 4
@DRD_CONFIG_MASK = common dso_local global i32 0, align 4
@SW_SWITCH_EN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DUAL_ROLE_CFG1_POLL_TIMEOUT = common dso_local global i32 0, align 4
@DUAL_ROLE_CFG1 = common dso_local global i64 0, align 8
@HOST_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Timeout waiting for role-switch\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @intel_xhci_usb_set_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_xhci_usb_set_role(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_xhci_usb_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.intel_xhci_usb_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.intel_xhci_usb_data* %13, %struct.intel_xhci_usb_data** %6, align 8
  %14 = load i32, i32* @DRD_CONFIG_DYNAMIC, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %16 = call i64 @acpi_acquire_global_lock(i32 %15, i32* %9)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @ACPI_FAILURE(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @AE_NOT_CONFIGURED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %133

29:                                               ; preds = %20, %2
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @pm_runtime_get_sync(%struct.device* %30)
  %32 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %33 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DUAL_ROLE_CFG0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %66 [
    i32 128, label %39
    i32 129, label %48
    i32 130, label %58
  ]

39:                                               ; preds = %29
  %40 = load i32, i32* @SW_IDPIN, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @SW_VBUS_VALID, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @DRD_CONFIG_DYNAMIC, align 4
  store i32 %47, i32* %11, align 4
  br label %66

48:                                               ; preds = %29
  %49 = load i32, i32* @SW_IDPIN, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @SW_VBUS_VALID, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @DRD_CONFIG_STATIC_HOST, align 4
  store i32 %57, i32* %11, align 4
  br label %66

58:                                               ; preds = %29
  %59 = load i32, i32* @SW_IDPIN, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @SW_VBUS_VALID, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @DRD_CONFIG_STATIC_DEVICE, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %29, %58, %48, %39
  %67 = load i32, i32* @SW_IDPIN_EN, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %71 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i32, i32* @DRD_CONFIG_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @SW_SWITCH_EN, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %74, %66
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %87 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DUAL_ROLE_CFG0, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @acpi_release_global_lock(i32 %92)
  %94 = load i64, i64* @jiffies, align 8
  %95 = load i32, i32* @DUAL_ROLE_CFG1_POLL_TIMEOUT, align 4
  %96 = call i64 @msecs_to_jiffies(i32 %95)
  %97 = add i64 %94, %96
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %121, %84
  %99 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %100 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DUAL_ROLE_CFG1, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @readl(i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @HOST_MODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 129
  %114 = zext i1 %113 to i32
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @pm_runtime_put(%struct.device* %117)
  store i32 0, i32* %3, align 4
  br label %133

119:                                              ; preds = %98
  %120 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %121

121:                                              ; preds = %119
  %122 = load i64, i64* @jiffies, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i64 @time_before(i64 %122, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %98, label %126

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @pm_runtime_put(%struct.device* %127)
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @dev_warn(%struct.device* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @ETIMEDOUT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %126, %116, %24
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.intel_xhci_usb_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @acpi_acquire_global_lock(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @acpi_release_global_lock(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
