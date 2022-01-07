; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_open_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_open_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32 }
%struct.cmpc_accel = type { i32, i32, i32 }

@CMPC_ACCEL_DEV_STATE_OPEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @cmpc_accel_open_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_accel_open_v4(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.cmpc_accel*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.acpi_device* @to_acpi_device(i32 %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %4, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0
  %13 = call %struct.cmpc_accel* @dev_get_drvdata(%struct.TYPE_2__* %12)
  store %struct.cmpc_accel* %13, %struct.cmpc_accel** %5, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cmpc_accel*, %struct.cmpc_accel** %5, align 8
  %18 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cmpc_accel_set_sensitivity_v4(i32 %16, i32 %19)
  %21 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cmpc_accel*, %struct.cmpc_accel** %5, align 8
  %25 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cmpc_accel_set_g_select_v4(i32 %23, i32 %26)
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cmpc_start_accel_v4(i32 %30)
  %32 = call i64 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @CMPC_ACCEL_DEV_STATE_OPEN, align 4
  %36 = load %struct.cmpc_accel*, %struct.cmpc_accel** %5, align 8
  %37 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %2, align 4
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.acpi_device* @to_acpi_device(i32) #1

declare dso_local %struct.cmpc_accel* @dev_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i32 @cmpc_accel_set_sensitivity_v4(i32, i32) #1

declare dso_local i32 @cmpc_accel_set_g_select_v4(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @cmpc_start_accel_v4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
