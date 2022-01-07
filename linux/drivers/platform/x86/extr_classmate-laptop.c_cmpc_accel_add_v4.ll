; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_add_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_add_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.input_dev = type { i32 }
%struct.cmpc_accel = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMPC_ACCEL_DEV_STATE_CLOSED = common dso_local global i32 0, align 4
@CMPC_ACCEL_SENSITIVITY_DEFAULT = common dso_local global i32 0, align 4
@cmpc_accel_sensitivity_attr_v4 = common dso_local global i32 0, align 4
@CMPC_ACCEL_G_SELECT_DEFAULT = common dso_local global i32 0, align 4
@cmpc_accel_g_select_attr_v4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmpc_accel_v4\00", align 1
@cmpc_accel_idev_init_v4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @cmpc_accel_add_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_accel_add_v4(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.cmpc_accel*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cmpc_accel* @kmalloc(i32 12, i32 %7)
  store %struct.cmpc_accel* %8, %struct.cmpc_accel** %6, align 8
  %9 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %10 = icmp ne %struct.cmpc_accel* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %78

14:                                               ; preds = %1
  %15 = load i32, i32* @CMPC_ACCEL_DEV_STATE_CLOSED, align 4
  %16 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %17 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CMPC_ACCEL_SENSITIVITY_DEFAULT, align 4
  %19 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %20 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %25 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cmpc_accel_set_sensitivity_v4(i32 %23, i32 %26)
  %28 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 0
  %30 = call i32 @device_create_file(i32* %29, i32* @cmpc_accel_sensitivity_attr_v4)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  br label %74

34:                                               ; preds = %14
  %35 = load i32, i32* @CMPC_ACCEL_G_SELECT_DEFAULT, align 4
  %36 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %37 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %42 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cmpc_accel_set_g_select_v4(i32 %40, i32 %43)
  %45 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 0
  %47 = call i32 @device_create_file(i32* %46, i32* @cmpc_accel_g_select_attr_v4)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %70

51:                                               ; preds = %34
  %52 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %53 = load i32, i32* @cmpc_accel_idev_init_v4, align 4
  %54 = call i32 @cmpc_add_acpi_notify_device(%struct.acpi_device* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %66

58:                                               ; preds = %51
  %59 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %59, i32 0, i32 0
  %61 = call %struct.input_dev* @dev_get_drvdata(i32* %60)
  store %struct.input_dev* %61, %struct.input_dev** %5, align 8
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 0
  %64 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %65 = call i32 @dev_set_drvdata(i32* %63, %struct.cmpc_accel* %64)
  store i32 0, i32* %2, align 4
  br label %78

66:                                               ; preds = %57
  %67 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 0
  %69 = call i32 @device_remove_file(i32* %68, i32* @cmpc_accel_g_select_attr_v4)
  br label %70

70:                                               ; preds = %66, %50
  %71 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %72 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 0
  %73 = call i32 @device_remove_file(i32* %72, i32* @cmpc_accel_sensitivity_attr_v4)
  br label %74

74:                                               ; preds = %70, %33
  %75 = load %struct.cmpc_accel*, %struct.cmpc_accel** %6, align 8
  %76 = call i32 @kfree(%struct.cmpc_accel* %75)
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %58, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.cmpc_accel* @kmalloc(i32, i32) #1

declare dso_local i32 @cmpc_accel_set_sensitivity_v4(i32, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @cmpc_accel_set_g_select_v4(i32, i32) #1

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
