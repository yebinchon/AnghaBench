; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_ggov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_ggov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i64 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@SB_GGOV_METHOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Cannot get handle\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"GGOV: call failed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ggov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ggov(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %union.acpi_object], align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %union.acpi_object*
  store %union.acpi_object* %14, %union.acpi_object** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %18 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %4, i64 0, i64 0
  %19 = bitcast %union.acpi_object* %18 to i64*
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %4, i64 0, i64 0
  %22 = bitcast %union.acpi_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i64, i64* @SB_GGOV_METHOD, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @acpi_get_handle(i32* null, i32 %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %4, i64 0, i64 0
  %37 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  store %union.acpi_object* %36, %union.acpi_object** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @acpi_evaluate_object(i32 %38, i32* null, %struct.acpi_object_list* %8, %struct.acpi_buffer* %9)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @acpi_handle_err(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %69

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %50 = load %union.acpi_object*, %union.acpi_object** %49, align 8
  store %union.acpi_object* %50, %union.acpi_object** %5, align 8
  %51 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %52 = bitcast %union.acpi_object* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %58 = call i32 @kfree(%union.acpi_object* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %69

61:                                               ; preds = %48
  %62 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %10, align 4
  %66 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %67 = call i32 @kfree(%union.acpi_object* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %61, %56, %43, %30
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @acpi_get_handle(i32*, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i32 @acpi_handle_err(i32, i8*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
