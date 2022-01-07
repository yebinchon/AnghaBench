; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_init_dsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_hid_init_dsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HID_EVENT_FILTER_UUID = common dso_local global i32 0, align 4
@intel_dsm_guid = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@intel_hid_dsm_fn_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"intel_hid_dsm_fn_mask = %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intel_hid_init_dsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hid_init_dsm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @HID_EVENT_FILTER_UUID, align 4
  %5 = call i32 @guid_parse(i32 %4, i32* @intel_dsm_guid)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %8 = call %union.acpi_object* @acpi_evaluate_dsm_typed(i32 %6, i32* @intel_dsm_guid, i32 1, i32 0, i32* null, i32 %7)
  store %union.acpi_object* %8, %union.acpi_object** %3, align 8
  %9 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %10 = icmp ne %union.acpi_object* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %13 = bitcast %union.acpi_object* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @intel_hid_dsm_fn_mask, align 4
  %17 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %18 = call i32 @ACPI_FREE(%union.acpi_object* %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @intel_hid_dsm_fn_mask, align 4
  %22 = call i32 @acpi_handle_debug(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local i32 @guid_parse(i32, i32*) #1

declare dso_local %union.acpi_object* @acpi_evaluate_dsm_typed(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
