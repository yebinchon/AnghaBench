; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-vbtn.c_intel_vbtn_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-vbtn.c_intel_vbtn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_vbtn_priv = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"VBDL\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to read Intel Virtual Button driver\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to setup Intel Virtual Button\0A\00", align 1
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@notify_handler = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_vbtn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vbtn_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vbtn_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32 @ACPI_HANDLE(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @acpi_evaluate_object(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.intel_vbtn_priv* @devm_kzalloc(i32* %24, i32 4, i32 %25)
  store %struct.intel_vbtn_priv* %26, %struct.intel_vbtn_priv** %5, align 8
  %27 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %5, align 8
  %28 = icmp ne %struct.intel_vbtn_priv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %5, align 8
  %36 = call i32 @dev_set_drvdata(i32* %34, %struct.intel_vbtn_priv* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i32 @intel_vbtn_input_setup(%struct.platform_device* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %32
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i32 @detect_tablet_mode(%struct.platform_device* %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %49 = load i32, i32* @notify_handler, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @acpi_install_notify_handler(i32 %47, i32 %48, i32 %49, %struct.platform_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %44
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @device_init_wakeup(i32* %60, i32 1)
  %62 = call i32 (...) @acpi_ec_mark_gpe_for_wake()
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %55, %41, %29, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.intel_vbtn_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.intel_vbtn_priv*) #1

declare dso_local i32 @intel_vbtn_input_setup(%struct.platform_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @detect_tablet_mode(%struct.platform_device*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @acpi_ec_mark_gpe_for_wake(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
