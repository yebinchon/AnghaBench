; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_write_sset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_write_sset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcc_acpi = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_object_list = type { %union.acpi_object*, i32 }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@METHOD_HKEY_SSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcc_acpi*, i32, i32)* @acpi_pcc_write_sset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcc_write_sset(%struct.pcc_acpi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcc_acpi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %union.acpi_object], align 16
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca i64, align 8
  store %struct.pcc_acpi* %0, %struct.pcc_acpi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %7, i64 0, i64 0
  %11 = bitcast %union.acpi_object* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %15 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %10, i64 1
  %17 = bitcast %union.acpi_object* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %21 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  %23 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %7, i64 0, i64 0
  store %union.acpi_object* %23, %union.acpi_object** %22, align 8
  %24 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  %25 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %7, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(%union.acpi_object* %25)
  store i32 %26, i32* %24, align 8
  %27 = load i64, i64* @AE_OK, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %29 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @METHOD_HKEY_SSET, align 4
  %32 = call i64 @acpi_evaluate_object(i32 %30, i32 %31, %struct.acpi_object_list* %8, i32* null)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @AE_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ 0, %36 ], [ %39, %37 ]
  ret i32 %41
}

declare dso_local i32 @ARRAY_SIZE(%union.acpi_object*) #1

declare dso_local i64 @acpi_evaluate_object(i32, i32, %struct.acpi_object_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
