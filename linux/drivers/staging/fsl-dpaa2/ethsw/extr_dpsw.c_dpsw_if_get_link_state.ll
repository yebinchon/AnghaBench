; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_get_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_get_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpsw_link_state = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpsw_cmd_if_get_link_state = type { i32 }
%struct.dpsw_rsp_if_get_link_state = type { i32, i32, i32 }

@DPSW_CMDID_IF_GET_LINK_STATE = common dso_local global i32 0, align 4
@UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpsw_if_get_link_state(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpsw_link_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpsw_link_state*, align 8
  %12 = alloca %struct.fsl_mc_command, align 8
  %13 = alloca %struct.dpsw_cmd_if_get_link_state*, align 8
  %14 = alloca %struct.dpsw_rsp_if_get_link_state*, align 8
  %15 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dpsw_link_state* %4, %struct.dpsw_link_state** %11, align 8
  %16 = bitcast %struct.fsl_mc_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* @DPSW_CMDID_IF_GET_LINK_STATE, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mc_encode_cmd_header(i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dpsw_cmd_if_get_link_state*
  store %struct.dpsw_cmd_if_get_link_state* %24, %struct.dpsw_cmd_if_get_link_state** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.dpsw_cmd_if_get_link_state*, %struct.dpsw_cmd_if_get_link_state** %13, align 8
  %28 = getelementptr inbounds %struct.dpsw_cmd_if_get_link_state, %struct.dpsw_cmd_if_get_link_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %7, align 8
  %30 = call i32 @mc_send_command(%struct.fsl_mc_io* %29, %struct.fsl_mc_command* %12)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  br label %58

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.dpsw_rsp_if_get_link_state*
  store %struct.dpsw_rsp_if_get_link_state* %38, %struct.dpsw_rsp_if_get_link_state** %14, align 8
  %39 = load %struct.dpsw_rsp_if_get_link_state*, %struct.dpsw_rsp_if_get_link_state** %14, align 8
  %40 = getelementptr inbounds %struct.dpsw_rsp_if_get_link_state, %struct.dpsw_rsp_if_get_link_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load %struct.dpsw_link_state*, %struct.dpsw_link_state** %11, align 8
  %44 = getelementptr inbounds %struct.dpsw_link_state, %struct.dpsw_link_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dpsw_rsp_if_get_link_state*, %struct.dpsw_rsp_if_get_link_state** %14, align 8
  %46 = getelementptr inbounds %struct.dpsw_rsp_if_get_link_state, %struct.dpsw_rsp_if_get_link_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = load %struct.dpsw_link_state*, %struct.dpsw_link_state** %11, align 8
  %50 = getelementptr inbounds %struct.dpsw_link_state, %struct.dpsw_link_state* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dpsw_rsp_if_get_link_state*, %struct.dpsw_rsp_if_get_link_state** %14, align 8
  %52 = getelementptr inbounds %struct.dpsw_rsp_if_get_link_state, %struct.dpsw_rsp_if_get_link_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UP, align 4
  %55 = call i32 @dpsw_get_field(i32 %53, i32 %54)
  %56 = load %struct.dpsw_link_state*, %struct.dpsw_link_state** %11, align 8
  %57 = getelementptr inbounds %struct.dpsw_link_state, %struct.dpsw_link_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %35, %33
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

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
