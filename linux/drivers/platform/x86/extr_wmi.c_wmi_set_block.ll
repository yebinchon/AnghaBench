; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_set_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i32 }
%struct.guid_block = type { i64, i32, i32 }
%struct.wmi_block = type { %struct.TYPE_4__*, %struct.guid_block }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@__const.wmi_set_block.method = private unnamed_addr constant [5 x i8] c"WS\00\00\00", align 1
@AE_BAD_DATA = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_WMI_EVENT = common dso_local global i32 0, align 4
@ACPI_WMI_METHOD = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_WMI_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_set_block(i8* %0, i64 %1, %struct.acpi_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_buffer*, align 8
  %8 = alloca %struct.guid_block*, align 8
  %9 = alloca %struct.wmi_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_object_list, align 8
  %12 = alloca [2 x %union.acpi_object], align 16
  %13 = alloca [5 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.acpi_buffer* %2, %struct.acpi_buffer** %7, align 8
  store %struct.guid_block* null, %struct.guid_block** %8, align 8
  store %struct.wmi_block* null, %struct.wmi_block** %9, align 8
  %14 = bitcast [5 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.wmi_set_block.method, i32 0, i32 0), i64 5, i1 false)
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %19 = icmp ne %struct.acpi_buffer* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %21, i32* %4, align 4
  br label %100

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @find_guid(i8* %23, %struct.wmi_block** %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @AE_ERROR, align 4
  store i32 %27, i32* %4, align 4
  br label %100

28:                                               ; preds = %22
  %29 = load %struct.wmi_block*, %struct.wmi_block** %9, align 8
  %30 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %29, i32 0, i32 1
  store %struct.guid_block* %30, %struct.guid_block** %8, align 8
  %31 = load %struct.wmi_block*, %struct.wmi_block** %9, align 8
  %32 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %37 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %42, i32* %4, align 4
  br label %100

43:                                               ; preds = %28
  %44 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %45 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ACPI_WMI_EVENT, align 4
  %48 = load i32, i32* @ACPI_WMI_METHOD, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @AE_ERROR, align 4
  store i32 %53, i32* %4, align 4
  br label %100

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 0
  store i32 2, i32* %55, align 8
  %56 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 0
  %57 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  store %union.acpi_object* %56, %union.acpi_object** %57, align 8
  %58 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %59 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 0
  %60 = bitcast %union.acpi_object* %59 to i32*
  store i32 %58, i32* %60, align 16
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 0
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 16
  %65 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %66 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ACPI_WMI_STRING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %54
  %72 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %73 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %74 = bitcast %union.acpi_object* %73 to i32*
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %54
  %76 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %77 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %78 = bitcast %union.acpi_object* %77 to i32*
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %81 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %84 = bitcast %union.acpi_object* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %87 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %90 = bitcast %union.acpi_object* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %93 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %94 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strncat(i8* %92, i32 %95, i32 2)
  %97 = load i32, i32* %10, align 4
  %98 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %99 = call i32 @acpi_evaluate_object(i32 %97, i8* %98, %struct.acpi_object_list* %11, i32* null)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %79, %52, %41, %26, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_guid(i8*, %struct.wmi_block**) #2

declare dso_local i32 @strncat(i8*, i32, i32) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
