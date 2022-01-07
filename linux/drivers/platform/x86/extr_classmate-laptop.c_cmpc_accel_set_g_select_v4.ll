; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_set_g_select_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_set_g_select_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_2__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"ACMD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cmpc_accel_set_g_select_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_accel_set_g_select_v4(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x %union.acpi_object], align 16
  %6 = alloca %struct.acpi_object_list, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %8 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 0
  %9 = bitcast %union.acpi_object* %8 to i8**
  store i8* %7, i8** %9, align 16
  %10 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 0
  %11 = bitcast %union.acpi_object* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 5, i32* %12, align 16
  %13 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %14 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 1
  %15 = bitcast %union.acpi_object* %14 to i8**
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 1
  %18 = bitcast %union.acpi_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %21 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 2
  %22 = bitcast %union.acpi_object* %21 to i8**
  store i8* %20, i8** %22, align 16
  %23 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 2
  %24 = bitcast %union.acpi_object* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 16
  %26 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %27 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 3
  %28 = bitcast %union.acpi_object* %27 to i8**
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 3
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %5, i64 0, i64 0
  %34 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 1
  store %union.acpi_object* %33, %union.acpi_object** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @acpi_evaluate_object(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %6, i32* null)
  ret i32 %36
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
