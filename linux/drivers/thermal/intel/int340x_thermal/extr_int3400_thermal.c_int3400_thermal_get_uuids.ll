; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_get_uuids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_get_uuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3400_thermal_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, %union.acpi_object* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IDSP\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@INT3400_THERMAL_MAXIMUM_UUID = common dso_local global i32 0, align 4
@int3400_thermal_uuids = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.int3400_thermal_priv*)* @int3400_thermal_get_uuids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3400_thermal_get_uuids(%struct.int3400_thermal_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.int3400_thermal_priv*, align 8
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.int3400_thermal_priv* %0, %struct.int3400_thermal_priv** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 2
  store i32 0, i32* %16, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %18 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @acpi_evaluate_object(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %4)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %114

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %union.acpi_object*
  store %union.acpi_object* %32, %union.acpi_object** %5, align 8
  %33 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %34 = bitcast %union.acpi_object* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %109

41:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %105, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %108

49:                                               ; preds = %42
  %50 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %union.acpi_object*, %union.acpi_object** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %53, i64 %55
  store %union.acpi_object* %56, %union.acpi_object** %6, align 8
  %57 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %58 = bitcast %union.acpi_object* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %109

65:                                               ; preds = %49
  %66 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %67 = bitcast %union.acpi_object* %66 to %struct.TYPE_6__*
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 16
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %109

74:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @INT3400_THERMAL_MAXIMUM_UUID, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32*, i32** @int3400_thermal_uuids, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @guid_parse(i32 %84, i32* %11)
  %86 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %87 = bitcast %union.acpi_object* %86 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = call i64 @guid_equal(i32* %90, i32* %11)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 1, %94
  %96 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %3, align 8
  %97 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %104

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %75

104:                                              ; preds = %93, %75
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %42

108:                                              ; preds = %42
  br label %109

109:                                              ; preds = %108, %71, %62, %38
  %110 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @kfree(i64 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %26
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @guid_parse(i32, i32*) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
