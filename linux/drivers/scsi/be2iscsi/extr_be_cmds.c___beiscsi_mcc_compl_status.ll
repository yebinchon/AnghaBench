; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c___beiscsi_mcc_compl_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c___beiscsi_mcc_compl_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_dma_mem = type { i64 }
%struct.be_cmd_resp_hdr = type { i32, i32 }
%struct.be_cmd_req_hdr = type { i32, i32 }

@CQE_STATUS_MASK = common dso_local global i32 0, align 4
@CQE_STATUS_ADDL_MASK = common dso_local global i32 0, align 4
@CQE_STATUS_ADDL_SHIFT = common dso_local global i32 0, align 4
@CQE_STATUS_WRB_MASK = common dso_local global i32 0, align 4
@CQE_STATUS_WRB_SHIFT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@BEISCSI_LOG_EH = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"BC_%d : MBX Cmd Failed for Subsys : %d Opcode : %d with Status : %d and Extd_Status : %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MCC_STATUS_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"BC_%d : Insufficient Buffer Error Resp_Len : %d Actual_Resp_Len : %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__beiscsi_mcc_compl_status(%struct.beiscsi_hba* %0, i32 %1, %struct.be_mcc_wrb** %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb**, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca %struct.be_queue_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.be_cmd_resp_hdr*, align 8
  %14 = alloca %struct.be_cmd_req_hdr*, align 8
  %15 = alloca %struct.be_mcc_wrb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.be_mcc_wrb** %2, %struct.be_mcc_wrb*** %7, align 8
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %8, align 8
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.be_queue_info* %21, %struct.be_queue_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @CQE_STATUS_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @CQE_STATUS_ADDL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CQE_STATUS_ADDL_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %39 = icmp ne %struct.be_dma_mem* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %42 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.be_cmd_req_hdr*
  store %struct.be_cmd_req_hdr* %44, %struct.be_cmd_req_hdr** %14, align 8
  br label %63

45:                                               ; preds = %4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @CQE_STATUS_WRB_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @CQE_STATUS_WRB_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @queue_get_wrb(%struct.be_queue_info* %51, i32 %52)
  %54 = inttoptr i64 %53 to %struct.be_mcc_wrb*
  store %struct.be_mcc_wrb* %54, %struct.be_mcc_wrb** %15, align 8
  %55 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %56 = call %struct.be_cmd_req_hdr* @embedded_payload(%struct.be_mcc_wrb* %55)
  store %struct.be_cmd_req_hdr* %56, %struct.be_cmd_req_hdr** %14, align 8
  %57 = load %struct.be_mcc_wrb**, %struct.be_mcc_wrb*** %7, align 8
  %58 = icmp ne %struct.be_mcc_wrb** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %61 = load %struct.be_mcc_wrb**, %struct.be_mcc_wrb*** %7, align 8
  store %struct.be_mcc_wrb* %60, %struct.be_mcc_wrb** %61, align 8
  br label %62

62:                                               ; preds = %59, %45
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %111

69:                                               ; preds = %66, %63
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %71 = load i32, i32* @KERN_WARNING, align 4
  %72 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %73 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %14, align 8
  %78 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %14, align 8
  %81 = getelementptr inbounds %struct.be_cmd_req_hdr, %struct.be_cmd_req_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i32, i32, ...) @beiscsi_log(%struct.beiscsi_hba* %70, i32 %71, i32 %76, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @MCC_STATUS_INSUFFICIENT_BUFFER, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %69
  %92 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %14, align 8
  %93 = bitcast %struct.be_cmd_req_hdr* %92 to %struct.be_cmd_resp_hdr*
  store %struct.be_cmd_resp_hdr* %93, %struct.be_cmd_resp_hdr** %13, align 8
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %95 = load i32, i32* @KERN_WARNING, align 4
  %96 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %97 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %13, align 8
  %102 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %13, align 8
  %105 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i32, i32, ...) @beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i32 %100, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %91, %69
  br label %111

111:                                              ; preds = %110, %66
  %112 = load i32, i32* %17, align 4
  ret i32 %112
}

declare dso_local i64 @queue_get_wrb(%struct.be_queue_info*, i32) #1

declare dso_local %struct.be_cmd_req_hdr* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
