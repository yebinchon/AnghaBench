; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_evaluate_method3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_evaluate_method3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_args = type { i64, i64, i64 }
%struct.acpi_buffer = type { i64, %struct.bios_args*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ASUS_WMI_MGMT_GUID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ASUS_WMI_UNSUPPORTED_METHOD = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64*)* @asus_wmi_evaluate_method3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_evaluate_method3(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.bios_args, align 8
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca %struct.acpi_buffer, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.acpi_object*, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %12, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %12, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %12, i32 0, i32 2
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  store i64 24, i64* %24, align 8
  %25 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store %struct.bios_args* %12, %struct.bios_args** %25, align 8
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %28 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  store %struct.bios_args* null, %struct.bios_args** %30, align 8
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 2
  store i32 0, i32* %31, align 8
  store i64 0, i64* %17, align 8
  %32 = load i32, i32* @ASUS_WMI_MGMT_GUID, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @wmi_evaluate_method(i32 %32, i32 0, i64 %33, %struct.acpi_buffer* %13, %struct.acpi_buffer* %14)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %74

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %union.acpi_object*
  store %union.acpi_object* %44, %union.acpi_object** %16, align 8
  %45 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %46 = icmp ne %union.acpi_object* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %49 = bitcast %union.acpi_object* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %53, %47, %41
  %59 = load i64*, i64** %11, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* %17, align 8
  %63 = load i64*, i64** %11, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %66 = call i32 @kfree(%union.acpi_object* %65)
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* @ASUS_WMI_UNSUPPORTED_METHOD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %70, %38
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @wmi_evaluate_method(i32, i32, i64, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
