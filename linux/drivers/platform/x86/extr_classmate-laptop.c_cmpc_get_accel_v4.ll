; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_get_accel_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_get_accel_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"ACMD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @cmpc_get_accel_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_get_accel_v4(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x %union.acpi_object], align 16
  %10 = alloca %struct.acpi_object_list, align 8
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %16 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %union.acpi_object*
  store %union.acpi_object* %18, %union.acpi_object** %15, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %22 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 0
  %23 = bitcast %union.acpi_object* %22 to i8**
  store i8* %21, i8** %23, align 16
  %24 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 0
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 16
  %27 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %28 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 1
  %29 = bitcast %union.acpi_object* %28 to i8**
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 1
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %34 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 2
  %35 = bitcast %union.acpi_object* %34 to i8**
  store i8* %33, i8** %35, align 16
  %36 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 2
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 16
  %39 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %40 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 3
  %41 = bitcast %union.acpi_object* %40 to i8**
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 3
  %43 = bitcast %union.acpi_object* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %9, i64 0, i64 0
  %47 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  store %union.acpi_object* %46, %union.acpi_object** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @acpi_evaluate_object(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, %struct.acpi_buffer* %11)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @ACPI_SUCCESS(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %55 = load %union.acpi_object*, %union.acpi_object** %54, align 8
  store %union.acpi_object* %55, %union.acpi_object** %14, align 8
  %56 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %74 = load %union.acpi_object*, %union.acpi_object** %73, align 8
  %75 = call i32 @kfree(%union.acpi_object* %74)
  br label %76

76:                                               ; preds = %53, %4
  %77 = load i32, i32* %13, align 4
  ret i32 %77
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
