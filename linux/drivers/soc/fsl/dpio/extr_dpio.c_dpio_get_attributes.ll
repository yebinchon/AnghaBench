; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio.c_dpio_get_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio.c_dpio_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpio_attr = type { i32, i8*, i8*, i8*, i32, i32, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpio_rsp_get_attr = type { i32, i32, i32, i32, i32, i32, i32 }

@DPIO_CMDID_GET_ATTR = common dso_local global i32 0, align 4
@DPIO_CHANNEL_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpio_get_attributes(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpio_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpio_attr*, align 8
  %10 = alloca %struct.fsl_mc_command, align 8
  %11 = alloca %struct.dpio_rsp_get_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dpio_attr* %3, %struct.dpio_attr** %9, align 8
  %13 = bitcast %struct.fsl_mc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPIO_CMDID_GET_ATTR, align 4
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
  br label %71

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.dpio_rsp_get_attr*
  store %struct.dpio_rsp_get_attr* %28, %struct.dpio_rsp_get_attr** %11, align 8
  %29 = load %struct.dpio_rsp_get_attr*, %struct.dpio_rsp_get_attr** %11, align 8
  %30 = getelementptr inbounds %struct.dpio_rsp_get_attr, %struct.dpio_rsp_get_attr* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le32_to_cpu(i32 %31)
  %33 = load %struct.dpio_attr*, %struct.dpio_attr** %9, align 8
  %34 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.dpio_rsp_get_attr*, %struct.dpio_rsp_get_attr** %11, align 8
  %36 = getelementptr inbounds %struct.dpio_rsp_get_attr, %struct.dpio_rsp_get_attr* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load %struct.dpio_attr*, %struct.dpio_attr** %9, align 8
  %40 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dpio_rsp_get_attr*, %struct.dpio_rsp_get_attr** %11, align 8
  %42 = getelementptr inbounds %struct.dpio_rsp_get_attr, %struct.dpio_rsp_get_attr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dpio_attr*, %struct.dpio_attr** %9, align 8
  %45 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.dpio_rsp_get_attr*, %struct.dpio_rsp_get_attr** %11, align 8
  %47 = getelementptr inbounds %struct.dpio_rsp_get_attr, %struct.dpio_rsp_get_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DPIO_CHANNEL_MODE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.dpio_attr*, %struct.dpio_attr** %9, align 8
  %52 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dpio_rsp_get_attr*, %struct.dpio_rsp_get_attr** %11, align 8
  %54 = getelementptr inbounds %struct.dpio_rsp_get_attr, %struct.dpio_rsp_get_attr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le64_to_cpu(i32 %55)
  %57 = load %struct.dpio_attr*, %struct.dpio_attr** %9, align 8
  %58 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.dpio_rsp_get_attr*, %struct.dpio_rsp_get_attr** %11, align 8
  %60 = getelementptr inbounds %struct.dpio_rsp_get_attr, %struct.dpio_rsp_get_attr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le64_to_cpu(i32 %61)
  %63 = load %struct.dpio_attr*, %struct.dpio_attr** %9, align 8
  %64 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.dpio_rsp_get_attr*, %struct.dpio_rsp_get_attr** %11, align 8
  %66 = getelementptr inbounds %struct.dpio_rsp_get_attr, %struct.dpio_rsp_get_attr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = load %struct.dpio_attr*, %struct.dpio_attr** %9, align 8
  %70 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %25, %23
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i8* @le64_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
