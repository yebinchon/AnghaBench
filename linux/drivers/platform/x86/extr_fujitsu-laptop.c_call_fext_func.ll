; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_call_fext_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_call_fext_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to evaluate FUNC\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"FUNC 0x%x (args 0x%x, 0x%x, 0x%x) returned 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32, i32, i32, i32)* @call_fext_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_fext_func(%struct.acpi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x %union.acpi_object], align 16
  %13 = alloca %struct.acpi_object_list, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %12, i64 0, i64 0
  %17 = bitcast %union.acpi_object* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %21 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %16, i64 1
  %23 = bitcast %union.acpi_object* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %27 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %22, i64 1
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %33 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %28, i64 1
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %39 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 1
  %42 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %12, i64 0, i64 0
  store %union.acpi_object* %42, %union.acpi_object** %41, align 8
  %43 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @acpi_evaluate_integer(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %13, i64* %14)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %5
  %51 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @acpi_handle_err(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %70

57:                                               ; preds = %5
  %58 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i64, i64* %14, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @acpi_handle_debug(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %64, i32 %66)
  %68 = load i64, i64* %14, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %57, %50
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_handle_err(i32, i8*) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
