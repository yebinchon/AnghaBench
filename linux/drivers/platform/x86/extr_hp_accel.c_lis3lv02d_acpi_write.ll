; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_acpi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_acpi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%union.acpi_object = type { i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_2__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"ALWR\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3lv02d*, i32, i32)* @lis3lv02d_acpi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_acpi_write(%struct.lis3lv02d* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lis3lv02d*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x %union.acpi_object], align 16
  %11 = alloca %struct.acpi_object_list, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %13 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %12, i32 0, i32 0
  %14 = load %struct.acpi_device*, %struct.acpi_device** %13, align 8
  store %struct.acpi_device* %14, %struct.acpi_device** %8, align 8
  %15 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 0
  store i32 2, i32* %15, align 8
  %16 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  %17 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 0
  store %union.acpi_object* %17, %union.acpi_object** %16, align 8
  %18 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %19 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 0
  %20 = bitcast %union.acpi_object* %19 to i8**
  store i8* %18, i8** %20, align 16
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 0
  %23 = bitcast %union.acpi_object* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 16
  %25 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %26 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 1
  %27 = bitcast %union.acpi_object* %26 to i8**
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 1
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @acpi_evaluate_integer(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %11, i64* %9)
  %36 = load i64, i64* @AE_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
