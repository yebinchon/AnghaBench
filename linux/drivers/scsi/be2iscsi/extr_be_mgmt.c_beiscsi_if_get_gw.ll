; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_get_gw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_get_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_def_gateway_resp = type { i32 }
%struct.be_cmd_get_def_gateway_req = type { i32 }
%struct.be_dma_mem = type { %struct.be_cmd_get_def_gateway_req* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_if_get_gw(%struct.beiscsi_hba* %0, i32 %1, %struct.be_cmd_get_def_gateway_resp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_get_def_gateway_resp*, align 8
  %8 = alloca %struct.be_cmd_get_def_gateway_req*, align 8
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.be_cmd_get_def_gateway_resp* %2, %struct.be_cmd_get_def_gateway_resp** %7, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %12 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %13 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY, align 4
  %14 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %11, %struct.be_dma_mem* %9, i32 %12, i32 %13, i32 4)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %21 = load %struct.be_cmd_get_def_gateway_req*, %struct.be_cmd_get_def_gateway_req** %20, align 8
  store %struct.be_cmd_get_def_gateway_req* %21, %struct.be_cmd_get_def_gateway_req** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.be_cmd_get_def_gateway_req*, %struct.be_cmd_get_def_gateway_req** %8, align 8
  %24 = getelementptr inbounds %struct.be_cmd_get_def_gateway_req, %struct.be_cmd_get_def_gateway_req* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %26 = load %struct.be_cmd_get_def_gateway_resp*, %struct.be_cmd_get_def_gateway_resp** %7, align 8
  %27 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %25, %struct.be_dma_mem* %9, i32* null, %struct.be_cmd_get_def_gateway_resp* %26, i32 4)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, %struct.be_cmd_get_def_gateway_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
