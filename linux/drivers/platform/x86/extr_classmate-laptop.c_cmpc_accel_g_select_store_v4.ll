; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_g_select_store_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_g_select_store_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_device = type { i32, i32 }
%struct.input_dev = type { i32 }
%struct.cmpc_accel = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cmpc_accel_g_select_store_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_accel_g_select_store_v4(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_device*, align 8
  %11 = alloca %struct.input_dev*, align 8
  %12 = alloca %struct.cmpc_accel*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.acpi_device* @to_acpi_device(%struct.device* %15)
  store %struct.acpi_device* %16, %struct.acpi_device** %10, align 8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 1
  %19 = call i8* @dev_get_drvdata(i32* %18)
  %20 = bitcast i8* %19 to %struct.input_dev*
  store %struct.input_dev* %20, %struct.input_dev** %11, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  %23 = call i8* @dev_get_drvdata(i32* %22)
  %24 = bitcast i8* %23 to %struct.cmpc_accel*
  store %struct.cmpc_accel* %24, %struct.cmpc_accel** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 0, i64* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %4
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %34, %31
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.cmpc_accel*, %struct.cmpc_accel** %12, align 8
  %43 = getelementptr inbounds %struct.cmpc_accel, %struct.cmpc_accel* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @cmpc_accel_set_g_select_v4(i32 %46, i64 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @strnlen(i8* %49, i64 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %40, %37, %29
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i8* @dev_get_drvdata(i32*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @cmpc_accel_set_g_select_v4(i32, i64) #1

declare dso_local i32 @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
