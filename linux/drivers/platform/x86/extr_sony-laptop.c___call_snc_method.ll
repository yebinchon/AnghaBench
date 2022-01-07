; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___call_snc_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___call_snc_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"__call_snc_method: [%s:0x%.8x%.8x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"__call_snc_method: [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to evaluate [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"No return object [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (i32, i8*, i32*)* @__call_snc_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @__call_snc_method(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_object_list, align 8
  %12 = alloca %union.acpi_object, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %union.acpi_object* null, %union.acpi_object** %8, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %14 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %22 = bitcast %union.acpi_object* %12 to i32*
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = bitcast %union.acpi_object* %12 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  store %union.acpi_object* %12, %union.acpi_object** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @acpi_evaluate_object(i32 %29, i8* %30, %struct.acpi_object_list* %11, %struct.acpi_buffer* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 32
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35, i32 %37)
  br label %45

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @acpi_evaluate_object(i32 %40, i8* %41, %struct.acpi_object_list* null, %struct.acpi_buffer* %9)
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %39, %20
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  store %union.acpi_object* null, %union.acpi_object** %4, align 8
  br label %63

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %union.acpi_object*
  store %union.acpi_object* %55, %union.acpi_object** %8, align 8
  %56 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %57 = icmp ne %union.acpi_object* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  store %union.acpi_object* %62, %union.acpi_object** %4, align 8
  br label %63

63:                                               ; preds = %61, %49
  %64 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  ret %union.acpi_object* %64
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i32 @dprintk(i8*, i8*, ...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
