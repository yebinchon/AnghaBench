; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_acpi_thermal_rel.c_acpi_parse_trt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_acpi_thermal_rel.c_acpi_parse_trt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8*, i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.trt = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.acpi_device = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RRNNNNNN\00", align 1
@__const.acpi_parse_trt.trt_format = private unnamed_addr constant %struct.acpi_buffer { i32 9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, %union.acpi_object* null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_TRT\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid _TRT data\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"_TRT package %d is invalid, ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to get source ACPI device\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to get target ACPI device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_parse_trt(i32 %0, i32* %1, %struct.trt** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.trt**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.trt*, align 8
  %15 = alloca %struct.acpi_device*, align 8
  %16 = alloca %union.acpi_object*, align 8
  %17 = alloca %struct.acpi_buffer, align 8
  %18 = alloca %struct.acpi_buffer, align 8
  %19 = alloca %struct.acpi_buffer, align 8
  %20 = alloca %struct.trt*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.trt** %2, %struct.trt*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = bitcast %struct.acpi_buffer* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %17, i32 0, i32 0
  %23 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %23, i32* %22, align 8
  %24 = bitcast %struct.acpi_buffer* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 32, i1 false)
  %25 = bitcast %struct.acpi_buffer* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_parse_trt.trt_format to i8*), i64 32, i1 false)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @acpi_evaluate_object(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.acpi_buffer* %17)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %136

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %17, i32 0, i32 3
  %36 = load %union.acpi_object*, %union.acpi_object** %35, align 8
  store %union.acpi_object* %36, %union.acpi_object** %16, align 8
  %37 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %38 = icmp ne %union.acpi_object* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %41 = bitcast %union.acpi_object* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %34
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %131

49:                                               ; preds = %39
  %50 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %union.acpi_object* @kcalloc(i32 %56, i32 32, i32 %57)
  %59 = bitcast %union.acpi_object* %58 to %struct.trt*
  store %struct.trt* %59, %struct.trt** %14, align 8
  %60 = load %struct.trt*, %struct.trt** %14, align 8
  %61 = icmp ne %struct.trt* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %131

65:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %121, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %124

71:                                               ; preds = %66
  %72 = load %struct.trt*, %struct.trt** %14, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.trt, %struct.trt* %72, i64 %76
  store %struct.trt* %77, %struct.trt** %20, align 8
  %78 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %18, i32 0, i32 2
  store i32 32, i32* %78, align 8
  %79 = load %struct.trt*, %struct.trt** %20, align 8
  %80 = bitcast %struct.trt* %79 to %union.acpi_object*
  %81 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %18, i32 0, i32 3
  store %union.acpi_object* %80, %union.acpi_object** %81, align 8
  %82 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %83 = bitcast %union.acpi_object* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @acpi_extract_package(i32* %88, %struct.acpi_buffer* %19, %struct.acpi_buffer* %18)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @ACPI_FAILURE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %71
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %121

98:                                               ; preds = %71
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %121

102:                                              ; preds = %98
  %103 = load %struct.trt*, %struct.trt** %20, align 8
  %104 = getelementptr inbounds %struct.trt, %struct.trt* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @acpi_bus_get_device(i32 %105, %struct.acpi_device** %15)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %102
  %112 = load %struct.trt*, %struct.trt** %20, align 8
  %113 = getelementptr inbounds %struct.trt, %struct.trt* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @acpi_bus_get_device(i32 %114, %struct.acpi_device** %15)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %111
  br label %121

121:                                              ; preds = %120, %101, %93
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %66

124:                                              ; preds = %66
  store i32 0, i32* %11, align 4
  %125 = load %struct.trt*, %struct.trt** %14, align 8
  %126 = load %struct.trt**, %struct.trt*** %8, align 8
  store %struct.trt* %125, %struct.trt** %126, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, %127
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %124, %62, %45
  %132 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %17, i32 0, i32 3
  %133 = load %union.acpi_object*, %union.acpi_object** %132, align 8
  %134 = call i32 @kfree(%union.acpi_object* %133)
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %31
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local %union.acpi_object* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @acpi_extract_package(i32*, %struct.acpi_buffer*, %struct.acpi_buffer*) #2

declare dso_local i32 @pr_warn(i8*, ...) #2

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
