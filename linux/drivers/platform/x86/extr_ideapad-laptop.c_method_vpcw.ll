; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_method_vpcw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_method_vpcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { i8* }
%struct.TYPE_2__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"VPCW\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @method_vpcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_vpcw(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca [2 x %union.acpi_object], align 16
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 2, i32* %11, align 8
  %12 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  store %union.acpi_object* %12, %union.acpi_object** %13, align 8
  %14 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %15 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %16 = bitcast %union.acpi_object* %15 to i8**
  store i8* %14, i8** %16, align 16
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 0
  %19 = bitcast %union.acpi_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 16
  %21 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %22 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %23 = bitcast %union.acpi_object* %22 to i8**
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %9, i64 0, i64 1
  %26 = bitcast %union.acpi_object* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @acpi_evaluate_object(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %8, i32* null)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @AE_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
