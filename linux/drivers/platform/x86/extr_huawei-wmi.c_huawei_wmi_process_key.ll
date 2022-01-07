; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_process_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_process_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.huawei_wmi_priv = type { i32 }
%struct.key_entry = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@WMI0_EXPENSIVE_GUID = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unknown key pressed, code: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi_device*, i32)* @huawei_wmi_process_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @huawei_wmi_process_key(%struct.wmi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.wmi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.huawei_wmi_priv*, align 8
  %6 = alloca %struct.key_entry*, align 8
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  store %struct.wmi_device* %0, %struct.wmi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %11 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %10, i32 0, i32 0
  %12 = call %struct.huawei_wmi_priv* @dev_get_drvdata(i32* %11)
  store %struct.huawei_wmi_priv* %12, %struct.huawei_wmi_priv** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %17 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* @WMI0_EXPENSIVE_GUID, align 4
  %22 = call i32 @wmi_query_block(i32 %21, i32 0, %struct.acpi_buffer* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %67

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %union.acpi_object*
  store %union.acpi_object* %30, %union.acpi_object** %8, align 8
  %31 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %32 = icmp ne %union.acpi_object* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %35 = bitcast %union.acpi_object* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %41 = bitcast %union.acpi_object* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %33, %27
  %45 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @kfree(i64 %46)
  br label %48

48:                                               ; preds = %44, %2
  %49 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %5, align 8
  %50 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %51, i32 %52)
  store %struct.key_entry* %53, %struct.key_entry** %6, align 8
  %54 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %55 = icmp ne %struct.key_entry* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %58 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %67

61:                                               ; preds = %48
  %62 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %5, align 8
  %63 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %66 = call i32 @sparse_keymap_report_entry(i32 %64, %struct.key_entry* %65, i32 1, i32 1)
  br label %67

67:                                               ; preds = %61, %56, %26
  ret void
}

declare dso_local %struct.huawei_wmi_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @wmi_query_block(i32, i32, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @sparse_keymap_report_entry(i32, %struct.key_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
