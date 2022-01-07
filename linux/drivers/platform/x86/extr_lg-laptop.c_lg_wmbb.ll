; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_lg_wmbb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_lg_wmbb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i64, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@WMBB_METHOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Cannot get handle\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"WMAB: call failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (i32, i32, i32)* @lg_wmbb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @lg_wmbb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x %union.acpi_object], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_object_list, align 8
  %12 = alloca %struct.acpi_buffer, align 8
  %13 = alloca [32 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  %15 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %26 = getelementptr inbounds i32, i32* %25, i64 16
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %28 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %29 = bitcast %union.acpi_object* %28 to i8**
  store i8* %27, i8** %29, align 16
  %30 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 16
  %33 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %34 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 1
  %35 = bitcast %union.acpi_object* %34 to i8**
  store i8* %33, i8** %35, align 16
  %36 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 1
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 16
  %39 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %40 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %41 = bitcast %union.acpi_object* %40 to i8**
  store i8* %39, i8** %41, align 16
  %42 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %43 = bitcast %union.acpi_object* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 32, i32* %44, align 16
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %46 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 2
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32* %45, i32** %48, align 8
  %49 = load i64, i64* @WMBB_METHOD, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @acpi_get_handle(i32* null, i32 %50, i32* %10)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %3
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  br label %73

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 0
  store i32 3, i32* %58, align 8
  %59 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %8, i64 0, i64 0
  %60 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  store %union.acpi_object* %59, %union.acpi_object** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @acpi_evaluate_object(i32 %61, i32* null, %struct.acpi_object_list* %11, %struct.acpi_buffer* %12)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @ACPI_FAILURE(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @acpi_handle_err(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  br label %73

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %union.acpi_object*
  store %union.acpi_object* %72, %union.acpi_object** %4, align 8
  br label %73

73:                                               ; preds = %69, %66, %55
  %74 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  ret %union.acpi_object* %74
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
