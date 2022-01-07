; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_evaluate_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_evaluate_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@INTEL_HID_DSM_FN_INVALID = common dso_local global i32 0, align 4
@INTEL_HID_DSM_FN_MAX = common dso_local global i32 0, align 4
@intel_hid_dsm_fn_to_method = common dso_local global i64* null, align 8
@intel_hid_dsm_fn_mask = common dso_local global i32 0, align 4
@intel_dsm_guid = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Eval DSM Fn code: %d[%s] results: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*)* @intel_hid_evaluate_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hid_evaluate_method(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @INTEL_HID_DSM_FN_INVALID, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @INTEL_HID_DSM_FN_MAX, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %63

19:                                               ; preds = %14
  %20 = load i64*, i64** @intel_hid_dsm_fn_to_method, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %10, align 8
  %26 = load i32, i32* @intel_hid_dsm_fn_mask, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %53

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %35 = call %union.acpi_object* @acpi_evaluate_dsm_typed(i32 %32, i32* @intel_dsm_guid, i32 1, i32 %33, i32* null, i32 %34)
  store %union.acpi_object* %35, %union.acpi_object** %8, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %37 = icmp ne %union.acpi_object* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %40 = bitcast %union.acpi_object* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @acpi_handle_debug(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %46, i64 %48)
  %50 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %51 = call i32 @ACPI_FREE(%union.acpi_object* %50)
  store i32 1, i32* %4, align 4
  br label %63

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = call i32 @acpi_evaluate_integer(i32 %54, i8* %55, i32* null, i64* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @ACPI_SUCCESS(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %38, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm_typed(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
