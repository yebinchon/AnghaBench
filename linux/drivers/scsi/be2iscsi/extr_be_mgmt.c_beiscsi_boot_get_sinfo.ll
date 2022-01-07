; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_get_sinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_get_sinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_5__, %struct.be_ctrl_info }
%struct.TYPE_5__ = type { i32, i32, %struct.be_dma_mem }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_get_session_req* }
%struct.be_cmd_get_session_req = type { i32, i32 }
%struct.be_ctrl_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_SESSION_GET_A_SESSION = common dso_local global i32 0, align 4
@MCC_TAG_STATE_ASYNC = common dso_local global i32 0, align 4
@beiscsi_boot_process_compl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_boot_get_sinfo(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.be_cmd_get_session_req*, align 8
  %6 = alloca %struct.be_dma_mem*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_sge*, align 8
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 1
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %4, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %15, i32* %9)
  store %struct.be_mcc_wrb* %16, %struct.be_mcc_wrb** %7, align 8
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %18 = icmp ne %struct.be_mcc_wrb* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %21 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  store i32 0, i32* %2, align 4
  br label %119

23:                                               ; preds = %1
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store %struct.be_dma_mem* %26, %struct.be_dma_mem** %6, align 8
  %27 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %27, i32 0, i32 0
  store i32 4, i32* %28, align 8
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.be_cmd_get_session_req* @dma_alloc_coherent(i32* %33, i32 %36, i32* %38, i32 %39)
  %41 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %42 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %41, i32 0, i32 2
  store %struct.be_cmd_get_session_req* %40, %struct.be_cmd_get_session_req** %42, align 8
  %43 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %44 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %43, i32 0, i32 2
  %45 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %44, align 8
  %46 = icmp ne %struct.be_cmd_get_session_req* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %23
  %48 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %49 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %2, align 4
  br label %119

51:                                               ; preds = %23
  %52 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %53 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %52, i32 0, i32 2
  %54 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %53, align 8
  store %struct.be_cmd_get_session_req* %54, %struct.be_cmd_get_session_req** %5, align 8
  %55 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %5, align 8
  %56 = call i32 @memset(%struct.be_cmd_get_session_req* %55, i32 0, i32 8)
  %57 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %58 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %57)
  store %struct.be_sge* %58, %struct.be_sge** %8, align 8
  %59 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %60 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %59, i32 8, i32 0, i32 1)
  %61 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %5, align 8
  %62 = getelementptr inbounds %struct.be_cmd_get_session_req, %struct.be_cmd_get_session_req* %61, i32 0, i32 1
  %63 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %64 = load i32, i32* @OPCODE_ISCSI_INI_SESSION_GET_A_SESSION, align 4
  %65 = call i32 @be_cmd_hdr_prepare(i32* %62, i32 %63, i32 %64, i32 4)
  %66 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %67 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %5, align 8
  %71 = getelementptr inbounds %struct.be_cmd_get_session_req, %struct.be_cmd_get_session_req* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %73 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @upper_32_bits(i32 %74)
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.be_sge*, %struct.be_sge** %8, align 8
  %78 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.be_sge*, %struct.be_sge** %8, align 8
  %84 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %86 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.be_sge*, %struct.be_sge** %8, align 8
  %90 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %93 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @MCC_TAG_STATE_ASYNC, align 4
  %96 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %97 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = call i32 @set_bit(i32 %95, i32* %102)
  %104 = load i32, i32* @beiscsi_boot_process_compl, align 4
  %105 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %106 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %104, i32* %111, align 4
  %112 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %112, i32 %113)
  %115 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %116 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %51, %47, %19
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_cmd_get_session_req* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.be_cmd_get_session_req*, i32, i32) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
