; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_lg_wmab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_lg_wmab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@WMAB_METHOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Cannot get handle\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"WMAB: call failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (i8*, i8*, i8*)* @lg_wmab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @lg_wmab(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x %union.acpi_object], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_object_list, align 8
  %12 = alloca %struct.acpi_buffer, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %union.acpi_object*
  store %union.acpi_object* %16, %union.acpi_object** %13, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %20 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %21 = bitcast %union.acpi_object* %20 to i8**
  store i8* %19, i8** %21, align 16
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %24 = bitcast %union.acpi_object* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 16
  %26 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %27 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 1
  %28 = bitcast %union.acpi_object* %27 to i8**
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 1
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %34 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %35 = bitcast %union.acpi_object* %34 to i8**
  store i8* %33, i8** %35, align 16
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 16
  %40 = load i64, i64* @WMAB_METHOD, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @acpi_get_handle(i32* null, i32 %41, i32* %10)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  br label %63

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 0
  store i32 3, i32* %49, align 8
  %50 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %51 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  store %union.acpi_object* %50, %union.acpi_object** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @acpi_evaluate_object(i32 %52, i32* null, %struct.acpi_object_list* %11, %struct.acpi_buffer* %12)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @acpi_handle_err(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  br label %63

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  %62 = load %union.acpi_object*, %union.acpi_object** %61, align 8
  store %union.acpi_object* %62, %union.acpi_object** %4, align 8
  br label %63

63:                                               ; preds = %60, %57, %46
  %64 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  ret %union.acpi_object* %64
}

declare dso_local i32 @acpi_get_handle(i32*, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i32 @acpi_handle_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
