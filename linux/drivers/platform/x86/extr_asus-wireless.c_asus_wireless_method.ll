; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wireless.c_asus_wireless_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wireless.c_asus_wireless_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Evaluating method %s, parameter %#x\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to eval method %s, param %#x (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s returned %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*)* @asus_wireless_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wireless_method(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.acpi_object_list, align 8
  %10 = alloca %union.acpi_object, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @acpi_handle_debug(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %17 = bitcast %union.acpi_object* %10 to i32*
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = bitcast %union.acpi_object* %10 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 1
  store %union.acpi_object* %10, %union.acpi_object** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @acpi_evaluate_integer(i32 %23, i32 %25, %struct.acpi_object_list* %9, i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @acpi_handle_err(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34, i32 %35)
  br label %43

37:                                               ; preds = %4
  %38 = load i32, i32* %5, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @acpi_handle_debug(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local i32 @acpi_handle_debug(i32, i8*, i8*, i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i32, %struct.acpi_object_list*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_handle_err(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
