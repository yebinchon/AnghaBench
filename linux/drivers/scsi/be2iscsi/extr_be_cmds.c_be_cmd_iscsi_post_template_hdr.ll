; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_iscsi_post_template_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_iscsi_post_template_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32 }
%struct.be_dma_mem = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_post_template_pages_req = type { i32, i32, i32, i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_ADD_TEMPLATE_HEADER_BUFFERS = common dso_local global i32 0, align 4
@BEISCSI_TEMPLATE_HDR_TYPE_ISCSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_iscsi_post_template_hdr(%struct.be_ctrl_info* %0, %struct.be_dma_mem* %1) #0 {
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.be_dma_mem*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_post_template_pages_req*, align 8
  %7 = alloca i32, align 4
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %3, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %4, align 8
  %8 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %9 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %8, i32 0, i32 1
  %10 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %9)
  store %struct.be_mcc_wrb* %10, %struct.be_mcc_wrb** %5, align 8
  %11 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %12 = call %struct.be_post_template_pages_req* @embedded_payload(%struct.be_mcc_wrb* %11)
  store %struct.be_post_template_pages_req* %12, %struct.be_post_template_pages_req** %6, align 8
  %13 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %14 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %17 = call i32 @memset(%struct.be_mcc_wrb* %16, i32 0, i32 4)
  %18 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %19 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %18, i32 16, i32 1, i32 0)
  %20 = load %struct.be_post_template_pages_req*, %struct.be_post_template_pages_req** %6, align 8
  %21 = getelementptr inbounds %struct.be_post_template_pages_req, %struct.be_post_template_pages_req* %20, i32 0, i32 3
  %22 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %23 = load i32, i32* @OPCODE_COMMON_ADD_TEMPLATE_HEADER_BUFFERS, align 4
  %24 = call i32 @be_cmd_hdr_prepare(i32* %21, i32 %22, i32 %23, i32 16)
  %25 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %29 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PAGES_4K_SPANNED(i32 %27, i32 %30)
  %32 = load %struct.be_post_template_pages_req*, %struct.be_post_template_pages_req** %6, align 8
  %33 = getelementptr inbounds %struct.be_post_template_pages_req, %struct.be_post_template_pages_req* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @BEISCSI_TEMPLATE_HDR_TYPE_ISCSI, align 4
  %35 = load %struct.be_post_template_pages_req*, %struct.be_post_template_pages_req** %6, align 8
  %36 = getelementptr inbounds %struct.be_post_template_pages_req, %struct.be_post_template_pages_req* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.be_post_template_pages_req*, %struct.be_post_template_pages_req** %6, align 8
  %38 = getelementptr inbounds %struct.be_post_template_pages_req, %struct.be_post_template_pages_req* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.be_post_template_pages_req*, %struct.be_post_template_pages_req** %6, align 8
  %41 = getelementptr inbounds %struct.be_post_template_pages_req, %struct.be_post_template_pages_req* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %45 = call i32 @be_cmd_page_addrs_prepare(i32 %39, i32 %43, %struct.be_dma_mem* %44)
  %46 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %47 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %49 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_post_template_pages_req* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i32 @be_cmd_page_addrs_prepare(i32, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
