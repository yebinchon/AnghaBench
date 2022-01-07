; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_wrbq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_wrbq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32, i32 }
%struct.be_dma_mem = type { i32, i32 }
%struct.be_queue_info = type { i32, i32 }
%struct.hwi_wrb_context = type { i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_wrbq_create_req = type { i32, i32, i32, i32, i32 }
%struct.be_wrbq_create_resp = type { i32, i32, i32 }
%struct.beiscsi_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_WRBQ_CREATE = common dso_local global i32 0, align 4
@BEISCSI_DUAL_ULP_AWARE_BIT = common dso_local global i32 0, align 4
@BEISCSI_BIND_Q_TO_ULP_BIT = common dso_local global i32 0, align 4
@DB_TXULP0_OFFSET = common dso_local global i32 0, align 4
@BEISCSI_ULP0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_wrbq_create(%struct.be_ctrl_info* %0, %struct.be_dma_mem* %1, %struct.be_queue_info* %2, %struct.hwi_wrb_context* %3, i32 %4) #0 {
  %6 = alloca %struct.be_ctrl_info*, align 8
  %7 = alloca %struct.be_dma_mem*, align 8
  %8 = alloca %struct.be_queue_info*, align 8
  %9 = alloca %struct.hwi_wrb_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca %struct.be_wrbq_create_req*, align 8
  %13 = alloca %struct.be_wrbq_create_resp*, align 8
  %14 = alloca %struct.beiscsi_hba*, align 8
  %15 = alloca i32, align 4
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %6, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %7, align 8
  store %struct.be_queue_info* %2, %struct.be_queue_info** %8, align 8
  store %struct.hwi_wrb_context* %3, %struct.hwi_wrb_context** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %17 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %16, i32 0, i32 2
  %18 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %17)
  store %struct.be_mcc_wrb* %18, %struct.be_mcc_wrb** %11, align 8
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %20 = call i8* @embedded_payload(%struct.be_mcc_wrb* %19)
  %21 = bitcast i8* %20 to %struct.be_wrbq_create_req*
  store %struct.be_wrbq_create_req* %21, %struct.be_wrbq_create_req** %12, align 8
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %23 = call i8* @embedded_payload(%struct.be_mcc_wrb* %22)
  %24 = bitcast i8* %23 to %struct.be_wrbq_create_resp*
  store %struct.be_wrbq_create_resp* %24, %struct.be_wrbq_create_resp** %13, align 8
  %25 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %26 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.beiscsi_hba* @pci_get_drvdata(i32 %27)
  store %struct.beiscsi_hba* %28, %struct.beiscsi_hba** %14, align 8
  %29 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %30 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %33 = call i32 @memset(%struct.be_mcc_wrb* %32, i32 0, i32 4)
  %34 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %35 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %34, i32 20, i32 1, i32 0)
  %36 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %12, align 8
  %37 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %36, i32 0, i32 4
  %38 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %39 = load i32, i32* @OPCODE_COMMON_ISCSI_WRBQ_CREATE, align 4
  %40 = call i32 @be_cmd_hdr_prepare(i32* %37, i32 %38, i32 %39, i32 20)
  %41 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %42 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %45 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PAGES_4K_SPANNED(i32 %43, i32 %46)
  %48 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %12, align 8
  %49 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %14, align 8
  %51 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %5
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %12, align 8
  %58 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @BEISCSI_DUAL_ULP_AWARE_BIT, align 4
  %60 = shl i32 1, %59
  %61 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %12, align 8
  %62 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @BEISCSI_BIND_Q_TO_ULP_BIT, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %12, align 8
  %68 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %55, %5
  %72 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %12, align 8
  %73 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %12, align 8
  %76 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %80 = call i32 @be_cmd_page_addrs_prepare(i32 %74, i32 %78, %struct.be_dma_mem* %79)
  %81 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %82 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %123, label %85

85:                                               ; preds = %71
  %86 = load %struct.be_wrbq_create_resp*, %struct.be_wrbq_create_resp** %13, align 8
  %87 = getelementptr inbounds %struct.be_wrbq_create_resp, %struct.be_wrbq_create_resp* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %91 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %93 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %95 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %98 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %14, align 8
  %100 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %85
  %105 = load i32, i32* @DB_TXULP0_OFFSET, align 4
  %106 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %107 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @BEISCSI_ULP0, align 4
  %109 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %110 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %122

111:                                              ; preds = %85
  %112 = load %struct.be_wrbq_create_resp*, %struct.be_wrbq_create_resp** %13, align 8
  %113 = getelementptr inbounds %struct.be_wrbq_create_resp, %struct.be_wrbq_create_resp* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %116 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.be_wrbq_create_resp*, %struct.be_wrbq_create_resp** %13, align 8
  %118 = getelementptr inbounds %struct.be_wrbq_create_resp, %struct.be_wrbq_create_resp* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %9, align 8
  %121 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %111, %104
  br label %123

123:                                              ; preds = %122, %71
  %124 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %125 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %15, align 4
  ret i32 %127
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local %struct.beiscsi_hba* @pci_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i32 @be_cmd_page_addrs_prepare(i32, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
