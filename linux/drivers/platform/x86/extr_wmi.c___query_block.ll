; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c___query_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c___query_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_block = type { i64, %struct.TYPE_3__*, %struct.guid_block }
%struct.TYPE_3__ = type { i32 }
%struct.guid_block = type { i64, i32, i32 }
%struct.acpi_buffer = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AE_ERROR = common dso_local global i32 0, align 4
@__const.__query_block.wc_method = private unnamed_addr constant [5 x i8] c"WC\00\00\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_WMI_EVENT = common dso_local global i32 0, align 4
@ACPI_WMI_METHOD = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_WMI_EXPENSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"WQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_block*, i64, %struct.acpi_buffer*)* @__query_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__query_block(%struct.wmi_block* %0, i64 %1, %struct.acpi_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_buffer*, align 8
  %8 = alloca %struct.guid_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_object_list, align 8
  %13 = alloca [1 x %union.acpi_object], align 8
  %14 = alloca [5 x i8], align 1
  %15 = alloca [5 x i8], align 1
  store %struct.wmi_block* %0, %struct.wmi_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.acpi_buffer* %2, %struct.acpi_buffer** %7, align 8
  store %struct.guid_block* null, %struct.guid_block** %8, align 8
  %16 = load i32, i32* @AE_ERROR, align 4
  store i32 %16, i32* %11, align 4
  %17 = bitcast [5 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.__query_block.wc_method, i32 0, i32 0), i64 5, i1 false)
  %18 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %19 = icmp ne %struct.acpi_buffer* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %21, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  %23 = load %struct.wmi_block*, %struct.wmi_block** %5, align 8
  %24 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %23, i32 0, i32 2
  store %struct.guid_block* %24, %struct.guid_block** %8, align 8
  %25 = load %struct.wmi_block*, %struct.wmi_block** %5, align 8
  %26 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %31 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %36, i32* %4, align 4
  br label %112

37:                                               ; preds = %22
  %38 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %39 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ACPI_WMI_EVENT, align 4
  %42 = load i32, i32* @ACPI_WMI_METHOD, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @AE_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %112

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %13, i64 0, i64 0
  %51 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 1
  store %union.acpi_object* %50, %union.acpi_object** %51, align 8
  %52 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %53 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %13, i64 0, i64 0
  %54 = bitcast %union.acpi_object* %53 to i32*
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %13, i64 0, i64 0
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load %struct.wmi_block*, %struct.wmi_block** %5, align 8
  %63 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %66, %61, %48
  %69 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %70 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ACPI_WMI_EXPENSIVE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %77 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %78 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @strncat(i8* %76, i32 %79, i32 2)
  %81 = load i32, i32* %9, align 4
  %82 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %83 = call i32 @acpi_execute_simple_method(i32 %81, i8* %82, i32 1)
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %86 = call i32 @strcpy(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %88 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %89 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strncat(i8* %87, i32 %90, i32 2)
  %92 = load i32, i32* %9, align 4
  %93 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %94 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %95 = call i32 @acpi_evaluate_object(i32 %92, i8* %93, %struct.acpi_object_list* %12, %struct.acpi_buffer* %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %97 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ACPI_WMI_EXPENSIVE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %84
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @ACPI_SUCCESS(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %109 = call i32 @acpi_execute_simple_method(i32 %107, i8* %108, i32 0)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %102, %84
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %46, %35, %20
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strncat(i8*, i32, i32) #2

declare dso_local i32 @acpi_execute_simple_method(i32, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_SUCCESS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
