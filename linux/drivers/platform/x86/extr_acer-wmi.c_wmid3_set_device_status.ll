; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_wmid3_set_device_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_wmid3_set_device_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmid3_gds_return_value = type { i32, i64, i64 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wmid3_gds_get_input_param = type { i32, i32, i32 }
%struct.acpi_buffer = type { i32, %union.acpi_object*, %struct.wmid3_gds_set_input_param* }
%struct.wmid3_gds_set_input_param = type { i32, i32, i32 }

@commun_func_bitmap = common dso_local global i32 0, align 4
@commun_fn_key_number = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@WMID_GUID3 = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unknown buffer length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Get Current Device Status failed: 0x%x - 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Set Device Status failed: 0x%x - 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @wmid3_set_device_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmid3_set_device_status(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmid3_gds_return_value, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmid3_gds_get_input_param, align 4
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca %struct.wmid3_gds_set_input_param, align 4
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca %struct.acpi_buffer, align 8
  %15 = alloca %struct.acpi_buffer, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = getelementptr inbounds %struct.wmid3_gds_get_input_param, %struct.wmid3_gds_get_input_param* %10, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.wmid3_gds_get_input_param, %struct.wmid3_gds_get_input_param* %10, i32 0, i32 1
  %18 = load i32, i32* @commun_func_bitmap, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.wmid3_gds_get_input_param, %struct.wmid3_gds_get_input_param* %10, i32 0, i32 2
  %20 = load i32, i32* @commun_fn_key_number, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  store i32 12, i32* %21, align 8
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  %23 = bitcast %struct.wmid3_gds_get_input_param* %10 to %union.acpi_object*
  store %union.acpi_object* %23, %union.acpi_object** %22, align 8
  %24 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 2
  store %struct.wmid3_gds_set_input_param* null, %struct.wmid3_gds_set_input_param** %24, align 8
  %25 = getelementptr inbounds %struct.wmid3_gds_set_input_param, %struct.wmid3_gds_set_input_param* %12, i32 0, i32 0
  store i32 2, i32* %25, align 4
  %26 = getelementptr inbounds %struct.wmid3_gds_set_input_param, %struct.wmid3_gds_set_input_param* %12, i32 0, i32 1
  %27 = load i32, i32* @commun_func_bitmap, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.wmid3_gds_set_input_param, %struct.wmid3_gds_set_input_param* %12, i32 0, i32 2
  %29 = load i32, i32* @commun_fn_key_number, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  store i32 12, i32* %30, align 8
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  %32 = bitcast %struct.wmid3_gds_set_input_param* %12 to %union.acpi_object*
  store %union.acpi_object* %32, %union.acpi_object** %31, align 8
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 2
  store %struct.wmid3_gds_set_input_param* null, %struct.wmid3_gds_set_input_param** %33, align 8
  %34 = bitcast %struct.acpi_buffer* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 24, i1 false)
  %35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %36 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %36, i32* %35, align 8
  %37 = bitcast %struct.acpi_buffer* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 24, i1 false)
  %38 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 0
  %39 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %39, i32* %38, align 8
  %40 = load i32, i32* @WMID_GUID3, align 4
  %41 = call i32 @wmi_evaluate_method(i32 %40, i32 0, i32 2, %struct.acpi_buffer* %11, %struct.acpi_buffer* %14)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %188

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  %49 = load %union.acpi_object*, %union.acpi_object** %48, align 8
  store %union.acpi_object* %49, %union.acpi_object** %8, align 8
  %50 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %51 = icmp ne %union.acpi_object* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @AE_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %188

54:                                               ; preds = %47
  %55 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %56 = bitcast %union.acpi_object* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %62 = call i32 @kfree(%union.acpi_object* %61)
  %63 = load i32, i32* @AE_ERROR, align 4
  store i32 %63, i32* %3, align 4
  br label %188

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  %66 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %67 = bitcast %union.acpi_object* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 8
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %73 = bitcast %union.acpi_object* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %78 = call i32 @kfree(%union.acpi_object* %77)
  %79 = load i32, i32* @AE_ERROR, align 4
  store i32 %79, i32* %3, align 4
  br label %188

80:                                               ; preds = %65
  %81 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %82 = bitcast %union.acpi_object* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.wmid3_gds_return_value*
  %86 = bitcast %struct.wmid3_gds_return_value* %6 to i8*
  %87 = bitcast %struct.wmid3_gds_return_value* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 24, i1 false)
  %88 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %89 = call i32 @kfree(%union.acpi_object* %88)
  %90 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93, %80
  %98 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %100, i64 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %188

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  %108 = load i64, i64* %4, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %111, %112
  br label %119

114:                                              ; preds = %105
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %5, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  br label %119

119:                                              ; preds = %114, %110
  %120 = phi i32 [ %113, %110 ], [ %118, %114 ]
  %121 = getelementptr inbounds %struct.wmid3_gds_set_input_param, %struct.wmid3_gds_set_input_param* %12, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @WMID_GUID3, align 4
  %123 = call i32 @wmi_evaluate_method(i32 %122, i32 0, i32 1, %struct.acpi_buffer* %13, %struct.acpi_buffer* %15)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @ACPI_FAILURE(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %188

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 1
  %131 = load %union.acpi_object*, %union.acpi_object** %130, align 8
  store %union.acpi_object* %131, %union.acpi_object** %8, align 8
  %132 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %133 = icmp ne %union.acpi_object* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @AE_ERROR, align 4
  store i32 %135, i32* %3, align 4
  br label %188

136:                                              ; preds = %129
  %137 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %138 = bitcast %union.acpi_object* %137 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %144 = call i32 @kfree(%union.acpi_object* %143)
  %145 = load i32, i32* @AE_ERROR, align 4
  store i32 %145, i32* %3, align 4
  br label %188

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146
  %148 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %149 = bitcast %union.acpi_object* %148 to %struct.TYPE_2__*
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 4
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %155 = bitcast %union.acpi_object* %154 to %struct.TYPE_2__*
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %157)
  %159 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %160 = call i32 @kfree(%union.acpi_object* %159)
  %161 = load i32, i32* @AE_ERROR, align 4
  store i32 %161, i32* %3, align 4
  br label %188

162:                                              ; preds = %147
  %163 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %164 = bitcast %union.acpi_object* %163 to %struct.TYPE_2__*
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to %struct.wmid3_gds_return_value*
  %168 = bitcast %struct.wmid3_gds_return_value* %6 to i8*
  %169 = bitcast %struct.wmid3_gds_return_value* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 24, i1 false)
  %170 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %171 = call i32 @kfree(%union.acpi_object* %170)
  %172 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %162
  %176 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175, %162
  %180 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.wmid3_gds_return_value, %struct.wmid3_gds_return_value* %6, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %182, i64 %184)
  br label %186

186:                                              ; preds = %179, %175
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %153, %142, %134, %127, %97, %71, %60, %52, %45
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

declare dso_local i32 @pr_warn(i8*, i32, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
