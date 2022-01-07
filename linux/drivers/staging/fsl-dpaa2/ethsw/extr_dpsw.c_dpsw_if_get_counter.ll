; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_get_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpsw_cmd_if_get_counter = type { i32, i32 }
%struct.dpsw_rsp_if_get_counter = type { i32 }

@DPSW_CMDID_IF_GET_COUNTER = common dso_local global i32 0, align 4
@COUNTER_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpsw_if_get_counter(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_mc_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.fsl_mc_command, align 8
  %15 = alloca %struct.dpsw_cmd_if_get_counter*, align 8
  %16 = alloca %struct.dpsw_rsp_if_get_counter*, align 8
  %17 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = bitcast %struct.fsl_mc_command* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i32, i32* @DPSW_CMDID_IF_GET_COUNTER, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mc_encode_cmd_header(i32 %19, i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %14, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %14, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.dpsw_cmd_if_get_counter*
  store %struct.dpsw_cmd_if_get_counter* %26, %struct.dpsw_cmd_if_get_counter** %15, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load %struct.dpsw_cmd_if_get_counter*, %struct.dpsw_cmd_if_get_counter** %15, align 8
  %30 = getelementptr inbounds %struct.dpsw_cmd_if_get_counter, %struct.dpsw_cmd_if_get_counter* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dpsw_cmd_if_get_counter*, %struct.dpsw_cmd_if_get_counter** %15, align 8
  %32 = getelementptr inbounds %struct.dpsw_cmd_if_get_counter, %struct.dpsw_cmd_if_get_counter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @COUNTER_TYPE, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @dpsw_set_field(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %38 = call i32 @mc_send_command(%struct.fsl_mc_io* %37, %struct.fsl_mc_command* %14)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %7, align 4
  br label %52

43:                                               ; preds = %6
  %44 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %14, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.dpsw_rsp_if_get_counter*
  store %struct.dpsw_rsp_if_get_counter* %46, %struct.dpsw_rsp_if_get_counter** %16, align 8
  %47 = load %struct.dpsw_rsp_if_get_counter*, %struct.dpsw_rsp_if_get_counter** %16, align 8
  %48 = getelementptr inbounds %struct.dpsw_rsp_if_get_counter, %struct.dpsw_rsp_if_get_counter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le64_to_cpu(i32 %49)
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %43, %41
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @dpsw_set_field(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @le64_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
