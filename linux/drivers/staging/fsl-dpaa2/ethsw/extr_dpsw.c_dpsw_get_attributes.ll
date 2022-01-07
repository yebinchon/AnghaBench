; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_get_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpsw_attr = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpsw_rsp_get_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DPSW_CMDID_GET_ATTR = common dso_local global i32 0, align 4
@COMPONENT_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpsw_get_attributes(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpsw_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpsw_attr*, align 8
  %10 = alloca %struct.fsl_mc_command, align 8
  %11 = alloca %struct.dpsw_rsp_get_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dpsw_attr* %3, %struct.dpsw_attr** %9, align 8
  %13 = bitcast %struct.fsl_mc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPSW_CMDID_GET_ATTR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %20 = call i32 @mc_send_command(%struct.fsl_mc_io* %19, %struct.fsl_mc_command* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %105

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.dpsw_rsp_get_attr*
  store %struct.dpsw_rsp_get_attr* %28, %struct.dpsw_rsp_get_attr** %11, align 8
  %29 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %30 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %34 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %33, i32 0, i32 12
  store i8* %32, i8** %34, align 8
  %35 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %36 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %39 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %41 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %44 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %46 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %50 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %52 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le16_to_cpu(i32 %53)
  %55 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %56 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %58 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le16_to_cpu(i32 %59)
  %61 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %62 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %64 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le16_to_cpu(i32 %65)
  %67 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %68 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %70 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %74 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %76 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le16_to_cpu(i32 %77)
  %79 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %80 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %82 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @le16_to_cpu(i32 %83)
  %85 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %86 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %88 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %91 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %93 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le64_to_cpu(i32 %94)
  %96 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %97 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.dpsw_rsp_get_attr*, %struct.dpsw_rsp_get_attr** %11, align 8
  %99 = getelementptr inbounds %struct.dpsw_rsp_get_attr, %struct.dpsw_rsp_get_attr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @COMPONENT_TYPE, align 4
  %102 = call i32 @dpsw_get_field(i32 %100, i32 %101)
  %103 = load %struct.dpsw_attr*, %struct.dpsw_attr** %9, align 8
  %104 = getelementptr inbounds %struct.dpsw_attr, %struct.dpsw_attr* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %25, %23
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i32 @dpsw_get_field(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
