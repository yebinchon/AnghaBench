; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_buffer_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_buffer_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Invalid acpi_object: expected 0x%x got 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i8*, i64)* @sony_nc_buffer_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_buffer_call(i32 %0, i8* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call %union.acpi_object* @__call_snc_method(i32 %15, i8* %16, i32* %17)
  store %union.acpi_object* %18, %union.acpi_object** %14, align 8
  %19 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %20 = icmp ne %union.acpi_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %72

24:                                               ; preds = %5
  %25 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %26 = bitcast %union.acpi_object* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i64, i64* %11, align 8
  %32 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %33 = bitcast %union.acpi_object* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @MIN(i64 %31, i32 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @memcpy(i8* %37, i32* %41, i64 %42)
  br label %68

44:                                               ; preds = %24
  %45 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %46 = bitcast %union.acpi_object* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @MIN(i64 %51, i32 4)
  store i64 %52, i64* %13, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @memcpy(i8* %53, i32* %56, i64 %57)
  br label %67

59:                                               ; preds = %44
  %60 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %61 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %62 = bitcast %union.acpi_object* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %59, %50
  br label %68

68:                                               ; preds = %67, %30
  %69 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %70 = call i32 @kfree(%union.acpi_object* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %21
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %union.acpi_object* @__call_snc_method(i32, i8*, i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
