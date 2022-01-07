; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_notify_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_wmi_notify_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad event status 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DEBUG Event \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"BUFFER_TYPE - length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"STRING_TYPE - %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"INTEGER_TYPE - %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"PACKAGE_TYPE - %d elements\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"object type 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @wmi_notify_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_notify_debug(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %9 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @wmi_get_event_data(i32 %13, %struct.acpi_buffer* %5)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @AE_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %65

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %union.acpi_object*
  store %union.acpi_object* %24, %union.acpi_object** %6, align 8
  %25 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %26 = icmp ne %union.acpi_object* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %65

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %31 = bitcast %union.acpi_object* %30 to i32*
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %57 [
    i32 131, label %33
    i32 128, label %39
    i32 130, label %45
    i32 129, label %51
  ]

33:                                               ; preds = %28
  %34 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %62

39:                                               ; preds = %28
  %40 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %41 = bitcast %union.acpi_object* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %62

45:                                               ; preds = %28
  %46 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_cont(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  br label %62

51:                                               ; preds = %28
  %52 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_8__*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_cont(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  br label %62

57:                                               ; preds = %28
  %58 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %59 = bitcast %union.acpi_object* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %51, %45, %39, %33
  %63 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %64 = call i32 @kfree(%union.acpi_object* %63)
  br label %65

65:                                               ; preds = %62, %27, %18
  ret void
}

declare dso_local i64 @wmi_get_event_data(i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
