; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_memory_set_cur_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_memory_set_cur_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@MEMORY_SET_BANDWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Bandwidth value was %ld: status is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @memory_set_cur_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_set_cur_bandwidth(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca %union.acpi_object, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %14 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %13, i32 0, i32 0
  %15 = load %struct.acpi_device*, %struct.acpi_device** %14, align 8
  store %struct.acpi_device* %15, %struct.acpi_device** %6, align 8
  %16 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %20 = call i64 @memory_get_max_bandwidth(%struct.thermal_cooling_device* %19, i64* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %53

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  store %union.acpi_object* %9, %union.acpi_object** %34, align 8
  %35 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %36 = bitcast %union.acpi_object* %9 to i32*
  store i32 %35, i32* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = bitcast %union.acpi_object* %9 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MEMORY_SET_BANDWIDTH, align 4
  %42 = call i32 @acpi_evaluate_integer(i32 %40, i32 %41, %struct.acpi_object_list* %8, i64* %11)
  store i32 %42, i32* %10, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %29, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @memory_get_max_bandwidth(%struct.thermal_cooling_device*, i64*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i32, %struct.acpi_object_list*, i64*) #1

declare dso_local i32 @pr_info(i8*, i64, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
