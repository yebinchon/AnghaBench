; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_run_hpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_run_hpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }
%struct.hpx_type0 = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_HPP\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @acpi_run_hpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_run_hpp(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %struct.hpx_type0, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = call i32 @memset(%struct.hpx_type0* %10, i32 0, i32 20)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @acpi_evaluate_object(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %98

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %union.acpi_object*
  store %union.acpi_object* %28, %union.acpi_object** %8, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %30 = bitcast %union.acpi_object* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %25
  %41 = load i32, i32* @AE_ERROR, align 4
  store i32 %41, i32* %6, align 4
  br label %93

42:                                               ; preds = %34
  %43 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %44 = bitcast %union.acpi_object* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %union.acpi_object*, %union.acpi_object** %45, align 8
  store %union.acpi_object* %46, %union.acpi_object** %9, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %62, %42
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %51, i64 %53
  %55 = bitcast %union.acpi_object* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @AE_ERROR, align 4
  store i32 %60, i32* %6, align 4
  br label %93

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %47

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %10, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %68 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %67, i64 0
  %69 = bitcast %union.acpi_object* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %10, i32 0, i32 4
  store i32 %71, i32* %72, align 4
  %73 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %74 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %73, i64 1
  %75 = bitcast %union.acpi_object* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %10, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %80 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %79, i64 2
  %81 = bitcast %union.acpi_object* %80 to %struct.TYPE_4__*
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %10, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %86 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %85, i64 3
  %87 = bitcast %union.acpi_object* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %10, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = call i32 @program_hpx_type0(%struct.pci_dev* %91, %struct.hpx_type0* %10)
  br label %93

93:                                               ; preds = %65, %59, %40
  %94 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @kfree(i64 %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %23
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.hpx_type0*, i32, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @program_hpx_type0(%struct.pci_dev*, %struct.hpx_type0*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
