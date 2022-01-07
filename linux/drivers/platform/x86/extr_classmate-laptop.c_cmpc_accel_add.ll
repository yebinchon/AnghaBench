; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.input_dev = type { i32 }
%struct.cmpc_accel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMPC_ACCEL_SENSITIVITY_DEFAULT = common dso_local global i32 0, align 4
@cmpc_accel_sensitivity_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cmpc_accel\00", align 1
@cmpc_accel_idev_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @cmpc_accel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_accel_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.cmpc_accel*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cmpc_accel* @kmalloc(i32 4, i32 %7)
  store %struct.cmpc_accel* %8, %struct.cmpc_accel** %6, align 8
  %9 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %10 = icmp ne %struct.cmpc_accel* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load i32, i32* @CMPC_ACCEL_SENSITIVITY_DEFAULT, align 4
  %16 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %17 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %22 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cmpc_accel_set_sensitivity(i32 %20, i32 %23)
  %25 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 0
  %27 = call i32 @device_create_file(i32* %26, i32* @cmpc_accel_sensitivity_attr)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %50

31:                                               ; preds = %14
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = load i32, i32* @cmpc_accel_idev_init, align 4
  %34 = call i32 @cmpc_add_acpi_notify_device(%struct.acpi_device* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %46

38:                                               ; preds = %31
  %39 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 0
  %41 = call %struct.input_dev* @dev_get_drvdata(i32* %40)
  store %struct.input_dev* %41, %struct.input_dev** %5, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  %44 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %45 = call i32 @dev_set_drvdata(i32* %43, %struct.cmpc_accel* %44)
  store i32 0, i32* %2, align 4
  br label %54

46:                                               ; preds = %37
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 0
  %49 = call i32 @device_remove_file(i32* %48, i32* @cmpc_accel_sensitivity_attr)
  br label %50

50:                                               ; preds = %46, %30
  %51 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %52 = call i32 @kfree(%struct.cmpc_accel* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %38, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.cmpc_accel* @kmalloc(i32, i32) #1

declare dso_local i32 @cmpc_accel_set_sensitivity(i32, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @cmpc_add_acpi_notify_device(%struct.acpi_device*, i8*, i32) #1

declare dso_local %struct.input_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.cmpc_accel*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.cmpc_accel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
