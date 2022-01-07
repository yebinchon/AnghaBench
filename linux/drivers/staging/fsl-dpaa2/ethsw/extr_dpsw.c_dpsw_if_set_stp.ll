; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_set_stp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_set_stp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpsw_stp_cfg = type { i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpsw_cmd_if_set_stp = type { i32, i8*, i8* }

@DPSW_CMDID_IF_SET_STP = common dso_local global i32 0, align 4
@STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpsw_if_set_stp(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpsw_stp_cfg* %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpsw_stp_cfg*, align 8
  %11 = alloca %struct.fsl_mc_command, align 8
  %12 = alloca %struct.dpsw_cmd_if_set_stp*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpsw_stp_cfg* %4, %struct.dpsw_stp_cfg** %10, align 8
  %13 = bitcast %struct.fsl_mc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPSW_CMDID_IF_SET_STP, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dpsw_cmd_if_set_stp*
  store %struct.dpsw_cmd_if_set_stp* %21, %struct.dpsw_cmd_if_set_stp** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.dpsw_cmd_if_set_stp*, %struct.dpsw_cmd_if_set_stp** %12, align 8
  %25 = getelementptr inbounds %struct.dpsw_cmd_if_set_stp, %struct.dpsw_cmd_if_set_stp* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.dpsw_stp_cfg*, %struct.dpsw_stp_cfg** %10, align 8
  %27 = getelementptr inbounds %struct.dpsw_stp_cfg, %struct.dpsw_stp_cfg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.dpsw_cmd_if_set_stp*, %struct.dpsw_cmd_if_set_stp** %12, align 8
  %31 = getelementptr inbounds %struct.dpsw_cmd_if_set_stp, %struct.dpsw_cmd_if_set_stp* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dpsw_cmd_if_set_stp*, %struct.dpsw_cmd_if_set_stp** %12, align 8
  %33 = getelementptr inbounds %struct.dpsw_cmd_if_set_stp, %struct.dpsw_cmd_if_set_stp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STATE, align 4
  %36 = load %struct.dpsw_stp_cfg*, %struct.dpsw_stp_cfg** %10, align 8
  %37 = getelementptr inbounds %struct.dpsw_stp_cfg, %struct.dpsw_stp_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dpsw_set_field(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %41 = call i32 @mc_send_command(%struct.fsl_mc_io* %40, %struct.fsl_mc_command* %11)
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @dpsw_set_field(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
