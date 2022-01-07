; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-wmi-thunderbolt.c_force_power_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-wmi-thunderbolt.c_force_power_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_buffer = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"force_power: storing %#x\0A\00", align 1
@INTEL_WMI_THUNDERBOLT_GUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"force_power: failed to evaluate ACPI method\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"force_power: unsupported mode\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @force_power_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @force_power_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_buffer, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @hex_to_bin(i8 signext %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %24, %4
  %28 = load i32, i32* @INTEL_WMI_THUNDERBOLT_GUID, align 4
  %29 = call i32 @wmi_evaluate_method(i32 %28, i32 0, i32 1, %struct.acpi_buffer* %10, i32* null)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @ENODEV, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %46

38:                                               ; preds = %27
  br label %44

39:                                               ; preds = %24
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %39, %33
  %47 = load i64, i64* %5, align 8
  ret i64 %47
}

declare dso_local i32 @hex_to_bin(i8 signext) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
