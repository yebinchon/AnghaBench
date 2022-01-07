; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_set_tci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_if_set_tci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpsw_tci_cfg = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpsw_cmd_if_set_tci = type { i8*, i8* }

@DPSW_CMDID_IF_SET_TCI = common dso_local global i32 0, align 4
@VLAN_ID = common dso_local global i32 0, align 4
@DEI = common dso_local global i32 0, align 4
@PCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpsw_if_set_tci(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpsw_tci_cfg* %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpsw_tci_cfg*, align 8
  %11 = alloca %struct.fsl_mc_command, align 8
  %12 = alloca %struct.dpsw_cmd_if_set_tci*, align 8
  %13 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpsw_tci_cfg* %4, %struct.dpsw_tci_cfg** %10, align 8
  %14 = bitcast %struct.fsl_mc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @DPSW_CMDID_IF_SET_TCI, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mc_encode_cmd_header(i32 %15, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dpsw_cmd_if_set_tci*
  store %struct.dpsw_cmd_if_set_tci* %22, %struct.dpsw_cmd_if_set_tci** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.dpsw_cmd_if_set_tci*, %struct.dpsw_cmd_if_set_tci** %12, align 8
  %26 = getelementptr inbounds %struct.dpsw_cmd_if_set_tci, %struct.dpsw_cmd_if_set_tci* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @VLAN_ID, align 4
  %29 = load %struct.dpsw_tci_cfg*, %struct.dpsw_tci_cfg** %10, align 8
  %30 = getelementptr inbounds %struct.dpsw_tci_cfg, %struct.dpsw_tci_cfg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dpsw_set_field(i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @DEI, align 4
  %35 = load %struct.dpsw_tci_cfg*, %struct.dpsw_tci_cfg** %10, align 8
  %36 = getelementptr inbounds %struct.dpsw_tci_cfg, %struct.dpsw_tci_cfg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dpsw_set_field(i32 %33, i32 %34, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @PCP, align 4
  %41 = load %struct.dpsw_tci_cfg*, %struct.dpsw_tci_cfg** %10, align 8
  %42 = getelementptr inbounds %struct.dpsw_tci_cfg, %struct.dpsw_tci_cfg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dpsw_set_field(i32 %39, i32 %40, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.dpsw_cmd_if_set_tci*, %struct.dpsw_cmd_if_set_tci** %12, align 8
  %48 = getelementptr inbounds %struct.dpsw_cmd_if_set_tci, %struct.dpsw_cmd_if_set_tci* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %50 = call i32 @mc_send_command(%struct.fsl_mc_io* %49, %struct.fsl_mc_command* %11)
  ret i32 %50
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
