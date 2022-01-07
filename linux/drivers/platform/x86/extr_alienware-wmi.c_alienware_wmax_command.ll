; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_alienware_wmax_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_alienware_wmax_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmax_basic_args = type { i32 }
%union.acpi_object = type { i64 }
%struct.acpi_buffer = type { %struct.wmax_basic_args*, i64 }
%struct.TYPE_2__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i64 0, align 8
@WMAX_CONTROL_GUID = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmax_basic_args*, i32, i32*)* @alienware_wmax_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alienware_wmax_command(%struct.wmax_basic_args* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.wmax_basic_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %struct.acpi_buffer, align 8
  store %struct.wmax_basic_args* %0, %struct.wmax_basic_args** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i64 4, i64* %11, align 8
  %12 = load %struct.wmax_basic_args*, %struct.wmax_basic_args** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  store %struct.wmax_basic_args* %12, %struct.wmax_basic_args** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load i64, i64* @ACPI_ALLOCATE_BUFFER, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  store %struct.wmax_basic_args* null, %struct.wmax_basic_args** %19, align 8
  %20 = load i32, i32* @WMAX_CONTROL_GUID, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @wmi_evaluate_method(i32 %20, i32 0, i32 %21, %struct.acpi_buffer* %9, %struct.acpi_buffer* %10)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @ACPI_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  %28 = load %struct.wmax_basic_args*, %struct.wmax_basic_args** %27, align 8
  %29 = bitcast %struct.wmax_basic_args* %28 to %union.acpi_object*
  store %union.acpi_object* %29, %union.acpi_object** %8, align 8
  %30 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %31 = icmp ne %union.acpi_object* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %34 = bitcast %union.acpi_object* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %40 = bitcast %union.acpi_object* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %32, %26
  br label %46

46:                                               ; preds = %45, %16
  %47 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  %48 = load %struct.wmax_basic_args*, %struct.wmax_basic_args** %47, align 8
  %49 = call i32 @kfree(%struct.wmax_basic_args* %48)
  br label %54

50:                                               ; preds = %3
  %51 = load i32, i32* @WMAX_CONTROL_GUID, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @wmi_evaluate_method(i32 %51, i32 0, i32 %52, %struct.acpi_buffer* %9, %struct.acpi_buffer* null)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @kfree(%struct.wmax_basic_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
