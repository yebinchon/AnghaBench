; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_int_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_int_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Invalid acpi_object: expected 0x%x got 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32*)* @sony_nc_int_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_int_call(i32 %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %union.acpi_object* null, %union.acpi_object** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call %union.acpi_object* @__call_snc_method(i32 %17, i8* %18, i32* %11)
  store %union.acpi_object* %19, %union.acpi_object** %10, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call %union.acpi_object* @__call_snc_method(i32 %21, i8* %22, i32* null)
  store %union.acpi_object* %23, %union.acpi_object** %10, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %26 = icmp ne %union.acpi_object* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %58

30:                                               ; preds = %24
  %31 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %32 = bitcast %union.acpi_object* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %38 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %39 = bitcast %union.acpi_object* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40)
  %42 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %43 = call i32 @kfree(%union.acpi_object* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %58

46:                                               ; preds = %30
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %57 = call i32 @kfree(%union.acpi_object* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %36, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %union.acpi_object* @__call_snc_method(i32, i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
