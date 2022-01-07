; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_start_accel_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_start_accel_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_2__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"ACMD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cmpc_start_accel_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_start_accel_v4(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x %union.acpi_object], align 16
  %4 = alloca %struct.acpi_object_list, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %7 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 0
  %8 = bitcast %union.acpi_object* %7 to i8**
  store i8* %6, i8** %8, align 16
  %9 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 0
  %10 = bitcast %union.acpi_object* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 3, i32* %11, align 16
  %12 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %13 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 1
  %14 = bitcast %union.acpi_object* %13 to i8**
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 1
  %16 = bitcast %union.acpi_object* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %19 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 2
  %20 = bitcast %union.acpi_object* %19 to i8**
  store i8* %18, i8** %20, align 16
  %21 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 2
  %22 = bitcast %union.acpi_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 16
  %24 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %25 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 3
  %26 = bitcast %union.acpi_object* %25 to i8**
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 3
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %4, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %3, i64 0, i64 0
  %32 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %4, i32 0, i32 1
  store %union.acpi_object* %31, %union.acpi_object** %32, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @acpi_evaluate_object(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %4, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
