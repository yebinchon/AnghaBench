; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_memory_get_cur_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_memory_get_cur_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@MEMORY_ARG_CUR_BANDWIDTH = common dso_local global i32 0, align 4
@MEMORY_GET_BANDWIDTH = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @memory_get_cur_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_get_cur_bandwidth(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_object_list, align 8
  %10 = alloca %union.acpi_object, align 4
  %11 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %13 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %12, i32 0, i32 0
  %14 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  store %struct.acpi_device* %14, %struct.acpi_device** %6, align 8
  %15 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @AE_OK, align 4
  store i32 %18, i32* %11, align 4
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 1
  store %union.acpi_object* %10, %union.acpi_object** %20, align 8
  %21 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %22 = bitcast %union.acpi_object* %10 to i32*
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @MEMORY_ARG_CUR_BANDWIDTH, align 4
  %24 = bitcast %union.acpi_object* %10 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MEMORY_GET_BANDWIDTH, align 4
  %28 = call i32 @acpi_evaluate_integer(i32 %26, i32 %27, %struct.acpi_object_list* %9, i64* %8)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i64, i64* %8, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @acpi_evaluate_integer(i32, i32, %struct.acpi_object_list*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
