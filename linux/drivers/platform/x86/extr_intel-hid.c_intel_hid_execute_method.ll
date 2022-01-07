; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_execute_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_execute_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i64 }

@INTEL_HID_DSM_FN_INVALID = common dso_local global i32 0, align 4
@INTEL_HID_DSM_FN_MAX = common dso_local global i32 0, align 4
@intel_hid_dsm_fn_to_method = common dso_local global i64* null, align 8
@intel_hid_dsm_fn_mask = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@intel_dsm_guid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Exec DSM Fn code: %d[%s] success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @intel_hid_execute_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hid_execute_method(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %union.acpi_object, align 8
  %10 = alloca %union.acpi_object, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @INTEL_HID_DSM_FN_INVALID, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @INTEL_HID_DSM_FN_MAX, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %68

21:                                               ; preds = %16
  %22 = load i64*, i64** @intel_hid_dsm_fn_to_method, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %12, align 8
  %28 = load i32, i32* @intel_hid_dsm_fn_mask, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %58

33:                                               ; preds = %21
  %34 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %35 = bitcast %union.acpi_object* %10 to i32*
  store i32 %34, i32* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = bitcast %union.acpi_object* %10 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %40 = bitcast %union.acpi_object* %9 to i32*
  store i32 %39, i32* %40, align 8
  %41 = bitcast %union.acpi_object* %9 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = bitcast %union.acpi_object* %9 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store %union.acpi_object* %10, %union.acpi_object** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %45, i32* @intel_dsm_guid, i32 1, i32 %46, %union.acpi_object* %9)
  store %union.acpi_object* %47, %union.acpi_object** %8, align 8
  %48 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %49 = icmp ne %union.acpi_object* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @acpi_handle_debug(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53)
  %55 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %56 = call i32 @ACPI_FREE(%union.acpi_object* %55)
  store i32 1, i32* %4, align 4
  br label %68

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @acpi_execute_simple_method(i32 %59, i8* %60, i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @ACPI_SUCCESS(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %68

67:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %66, %50, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, %union.acpi_object*) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32, i8*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @acpi_execute_simple_method(i32, i8*, i64) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
