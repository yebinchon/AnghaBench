; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_get_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_get_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"ACMD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*)* @cmpc_get_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_get_accel(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %union.acpi_object], align 16
  %10 = alloca %struct.acpi_object_list, align 8
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
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
  %22 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %23 = bitcast %union.acpi_object* %22 to i8**
  store i8* %21, i8** %23, align 16
  %24 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 16
  %27 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %28 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %29 = bitcast %union.acpi_object* %28 to i8**
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %32 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  store %union.acpi_object* %31, %union.acpi_object** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @acpi_evaluate_object(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, %struct.acpi_buffer* %11)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @ACPI_SUCCESS(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %40 = load %union.acpi_object*, %union.acpi_object** %39, align 8
  store %union.acpi_object* %40, %union.acpi_object** %14, align 8
  %41 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %8, align 8
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %58 = load %union.acpi_object*, %union.acpi_object** %57, align 8
  %59 = call i32 @kfree(%union.acpi_object* %58)
  br label %60

60:                                               ; preds = %38, %4
  %61 = load i32, i32* %13, align 4
  ret i32 %61
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
