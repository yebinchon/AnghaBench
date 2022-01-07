; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_wmi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_wmi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.key_entry = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"event guid %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad event status 0x%x\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@wmi_input_dev = common dso_local global i32 0, align 4
@KE_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Type: %i    Eventcode: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @wmi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_notify(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_entry*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %11, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @wmi_get_event_data(i32 %20, %struct.acpi_buffer* %5)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %75

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %union.acpi_object*
  store %union.acpi_object* %31, %union.acpi_object** %6, align 8
  %32 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %33 = icmp ne %union.acpi_object* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %75

35:                                               ; preds = %28
  %36 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %37 = bitcast %union.acpi_object* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %43 = bitcast %union.acpi_object* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @wmi_input_dev, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %46, i32 %47)
  store %struct.key_entry* %48, %struct.key_entry** %10, align 8
  %49 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %50 = icmp ne %struct.key_entry* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %53 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KE_KEY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @wmi_input_dev, align 4
  %59 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %60 = call i32 @sparse_keymap_report_entry(i32 %58, %struct.key_entry* %59, i32 1, i32 1)
  br label %61

61:                                               ; preds = %57, %51, %41
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %64 = bitcast %union.acpi_object* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %68 = bitcast %union.acpi_object* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %66, i32 %70)
  %72 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @kfree(i64 %73)
  br label %75

75:                                               ; preds = %62, %34, %25
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @wmi_get_event_data(i32, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @sparse_keymap_report_entry(i32, %struct.key_entry*, i32, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
