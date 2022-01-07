; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_show_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_show_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.asus_wmi* }
%struct.asus_wmi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bios_args = type { i32, i32 }
%struct.acpi_buffer = type { i64, %struct.bios_args*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ASUS_WMI_MGMT_GUID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%#x(%#x, %#x) = %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%#x(%#x, %#x) = t:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_call(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.asus_wmi*, align 8
  %7 = alloca %struct.bios_args, align 4
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.asus_wmi*, %struct.asus_wmi** %13, align 8
  store %struct.asus_wmi* %14, %struct.asus_wmi** %6, align 8
  %15 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %7, i32 0, i32 0
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %17 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %7, i32 0, i32 1
  %21 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %22 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  store i64 8, i64* %25, align 8
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  store %struct.bios_args* %7, %struct.bios_args** %26, align 8
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %29 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store %struct.bios_args* null, %struct.bios_args** %31, align 8
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @ASUS_WMI_MGMT_GUID, align 4
  %34 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %35 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wmi_evaluate_method(i32 %33, i32 0, i32 %37, %struct.acpi_buffer* %8, %struct.acpi_buffer* %9)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %105

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %union.acpi_object*
  store %union.acpi_object* %48, %union.acpi_object** %10, align 8
  %49 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %50 = icmp ne %union.acpi_object* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %53 = bitcast %union.acpi_object* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %60 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %64 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %68 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %72 = bitcast %union.acpi_object* %71 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %66, i32 %70, i32 %75)
  br label %102

77:                                               ; preds = %51, %45
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %80 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %84 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %88 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %92 = icmp ne %union.acpi_object* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %77
  %94 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %95 = bitcast %union.acpi_object* %94 to i64*
  %96 = load i64, i64* %95, align 8
  br label %98

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i64 [ %96, %93 ], [ -1, %97 ]
  %100 = trunc i64 %99 to i32
  %101 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %86, i32 %90, i32 %100)
  br label %102

102:                                              ; preds = %98, %57
  %103 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %104 = call i32 @kfree(%union.acpi_object* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %42
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
