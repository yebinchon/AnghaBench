; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_acpi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_lis3lv02d_acpi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ALRD\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3lv02d*, i32, i64*)* @lis3lv02d_acpi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_acpi_read(%struct.lis3lv02d* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lis3lv02d*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %union.acpi_object, align 4
  %10 = alloca %struct.acpi_object_list, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %14 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %13, i32 0, i32 0
  %15 = load %struct.acpi_device*, %struct.acpi_device** %14, align 8
  store %struct.acpi_device* %15, %struct.acpi_device** %8, align 8
  %16 = bitcast %union.acpi_object* %9 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  store %union.acpi_object* %9, %union.acpi_object** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = bitcast %union.acpi_object* %9 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @acpi_evaluate_integer(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, i64* %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i64, i64* %11, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
