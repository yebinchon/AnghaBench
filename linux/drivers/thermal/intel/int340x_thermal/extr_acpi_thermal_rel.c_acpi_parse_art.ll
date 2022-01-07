; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_acpi_thermal_rel.c_acpi_parse_art.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_acpi_thermal_rel.c_acpi_parse_art.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8*, i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.art = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.acpi_device = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"RRNNNNNNNNNNN\00", align 1
@__const.acpi_parse_art.art_format = private unnamed_addr constant %struct.acpi_buffer { i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, %union.acpi_object* null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_ART\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid _ART data\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"_ART package %d is invalid, ignored\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to get source ACPI device\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to get target ACPI device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_parse_art(i32 %0, i32* %1, %struct.art** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.art**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.art*, align 8
  %15 = alloca %struct.acpi_device*, align 8
  %16 = alloca %union.acpi_object*, align 8
  %17 = alloca %struct.acpi_buffer, align 8
  %18 = alloca %struct.acpi_buffer, align 8
  %19 = alloca %struct.acpi_buffer, align 8
  %20 = alloca %struct.art*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.art** %2, %struct.art*** %8, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_parse_art.art_format to i8*), i64 32, i1 false)
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
  br label %150

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
  br label %145

49:                                               ; preds = %39
  %50 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %union.acpi_object* @kcalloc(i32 %57, i32 40, i32 %58)
  %60 = bitcast %union.acpi_object* %59 to %struct.art*
  store %struct.art* %60, %struct.art** %14, align 8
  %61 = load %struct.art*, %struct.art** %14, align 8
  %62 = icmp ne %struct.art* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %145

66:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %135, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %138

72:                                               ; preds = %67
  %73 = load %struct.art*, %struct.art** %14, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.art, %struct.art* %73, i64 %77
  store %struct.art* %78, %struct.art** %20, align 8
  %79 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %18, i32 0, i32 2
  store i32 40, i32* %79, align 8
  %80 = load %struct.art*, %struct.art** %20, align 8
  %81 = bitcast %struct.art* %80 to %union.acpi_object*
  %82 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %18, i32 0, i32 3
  store %union.acpi_object* %81, %union.acpi_object** %82, align 8
  %83 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %84 = bitcast %union.acpi_object* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = call i32 @acpi_extract_package(i32* %90, %struct.acpi_buffer* %19, %struct.acpi_buffer* %18)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @ACPI_FAILURE(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %72
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %135

100:                                              ; preds = %72
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %135

104:                                              ; preds = %100
  %105 = load %struct.art*, %struct.art** %20, align 8
  %106 = getelementptr inbounds %struct.art, %struct.art* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.art*, %struct.art** %20, align 8
  %111 = getelementptr inbounds %struct.art, %struct.art* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @acpi_bus_get_device(i64 %112, %struct.acpi_device** %15)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %109
  br label %119

119:                                              ; preds = %118, %104
  %120 = load %struct.art*, %struct.art** %20, align 8
  %121 = getelementptr inbounds %struct.art, %struct.art* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.art*, %struct.art** %20, align 8
  %126 = getelementptr inbounds %struct.art, %struct.art* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @acpi_bus_get_device(i64 %127, %struct.acpi_device** %15)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %124
  br label %134

134:                                              ; preds = %133, %119
  br label %135

135:                                              ; preds = %134, %103, %95
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %67

138:                                              ; preds = %67
  %139 = load %struct.art*, %struct.art** %14, align 8
  %140 = load %struct.art**, %struct.art*** %8, align 8
  store %struct.art* %139, %struct.art** %140, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %63, %45
  %146 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %17, i32 0, i32 3
  %147 = load %union.acpi_object*, %union.acpi_object** %146, align 8
  %148 = call i32 @kfree(%union.acpi_object* %147)
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %145, %31
  %151 = load i32, i32* %5, align 4
  ret i32 %151
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

declare dso_local i32 @acpi_bus_get_device(i64, %struct.acpi_device**) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
