; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_retrieve_biosdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_retrieve_biosdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcc_acpi = type { i32, i32*, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@METHOD_HKEY_SINF = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"evaluation error HKEY.SINF\0A\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid HKEY.SINF\0A\00", align 1
@AE_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"SQTY reports bad SINF length\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid HKEY.SINF data\0A\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcc_acpi*)* @acpi_pcc_retrieve_biosdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcc_acpi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_object*, align 8
  store %struct.pcc_acpi* %0, %struct.pcc_acpi** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %10 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %union.acpi_object*
  store %union.acpi_object* %12, %union.acpi_object** %9, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %14, align 8
  store %union.acpi_object* null, %union.acpi_object** %6, align 8
  %15 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %16 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @METHOD_HKEY_SINF, align 4
  %19 = call i64 @acpi_evaluate_object(i32 %17, i32 %18, i32* null, %struct.acpi_buffer* %5)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ACPI_FAILURE(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ACPI_DB_ERROR, align 4
  %25 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([28 x i8]* @.str to i32))
  store i32 0, i32* %2, align 4
  br label %114

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %28 = load %union.acpi_object*, %union.acpi_object** %27, align 8
  store %union.acpi_object* %28, %union.acpi_object** %6, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %30 = icmp ne %union.acpi_object* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %33 = bitcast %union.acpi_object* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %26
  %38 = load i32, i32* @ACPI_DB_ERROR, align 4
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([19 x i8]* @.str.1 to i32))
  %40 = load i64, i64* @AE_ERROR, align 8
  store i64 %40, i64* %4, align 8
  br label %106

41:                                               ; preds = %31
  %42 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %43 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @ACPI_DB_ERROR, align 4
  %52 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([30 x i8]* @.str.2 to i32))
  %53 = load i64, i64* @AE_ERROR, align 8
  store i64 %53, i64* %4, align 8
  br label %106

54:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %93, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %55
  %63 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %union.acpi_object*, %union.acpi_object** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %66, i64 %68
  store %union.acpi_object* %69, %union.acpi_object** %8, align 8
  %70 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %71 = bitcast %union.acpi_object* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %62
  %79 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %80 = bitcast %union.acpi_object* %79 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %84 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  br label %92

89:                                               ; preds = %62
  %90 = load i32, i32* @ACPI_DB_ERROR, align 4
  %91 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([24 x i8]* @.str.3 to i32))
  br label %92

92:                                               ; preds = %89, %78
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %55

96:                                               ; preds = %55
  %97 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %98 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %101 = bitcast %union.acpi_object* %100 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  store i32 -1, i32* %105, align 4
  br label %106

106:                                              ; preds = %96, %50, %37
  %107 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %108 = load %union.acpi_object*, %union.acpi_object** %107, align 8
  %109 = call i32 @kfree(%union.acpi_object* %108)
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* @AE_OK, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %106, %23
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @acpi_evaluate_object(i32, i32, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
