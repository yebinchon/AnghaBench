; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.be_cmd_get_if_info_resp = type { i32 }
%struct.be_cmd_get_if_info_req = type { i32, i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_get_if_info_req*, i32 }
%struct.be_cmd_resp_hdr = type { i32 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_GET_IF_INFO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BG_%d : Memory Allocation Failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_if_get_info(%struct.beiscsi_hba* %0, i32 %1, %struct.be_cmd_get_if_info_resp** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_get_if_info_resp**, align 8
  %8 = alloca %struct.be_cmd_get_if_info_req*, align 8
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.be_cmd_get_if_info_resp** %2, %struct.be_cmd_get_if_info_resp*** %7, align 8
  store i32 4, i32* %10, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %13 = call i32 @beiscsi_if_get_handle(%struct.beiscsi_hba* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %108

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %105, %18
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %21 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %22 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_GET_IF_INFO, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %20, %struct.be_dma_mem* %9, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %108

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %31 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %30, align 8
  store %struct.be_cmd_get_if_info_req* %31, %struct.be_cmd_get_if_info_req** %8, align 8
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %8, align 8
  %36 = getelementptr inbounds %struct.be_cmd_get_if_info_req, %struct.be_cmd_get_if_info_req* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %8, align 8
  %39 = getelementptr inbounds %struct.be_cmd_get_if_info_req, %struct.be_cmd_get_if_info_req* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.be_cmd_get_if_info_resp* @kzalloc(i32 %40, i32 %41)
  %43 = load %struct.be_cmd_get_if_info_resp**, %struct.be_cmd_get_if_info_resp*** %7, align 8
  store %struct.be_cmd_get_if_info_resp* %42, %struct.be_cmd_get_if_info_resp** %43, align 8
  %44 = load %struct.be_cmd_get_if_info_resp**, %struct.be_cmd_get_if_info_resp*** %7, align 8
  %45 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %44, align 8
  %46 = icmp ne %struct.be_cmd_get_if_info_resp* %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %29
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %51 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @beiscsi_log(%struct.beiscsi_hba* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %55 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %62 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %61, align 8
  %63 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dma_free_coherent(i32* %58, i32 %60, %struct.be_cmd_get_if_info_req* %62, i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %108

68:                                               ; preds = %29
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %70 = load %struct.be_cmd_get_if_info_resp**, %struct.be_cmd_get_if_info_resp*** %7, align 8
  %71 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %69, %struct.be_dma_mem* %9, i32* null, %struct.be_cmd_get_if_info_resp* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %80 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %79, align 8
  %81 = bitcast %struct.be_cmd_get_if_info_req* %80 to %struct.be_cmd_resp_hdr*
  %82 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %89 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %96 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %95, align 8
  %97 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dma_free_coherent(i32* %92, i32 %94, %struct.be_cmd_get_if_info_req* %96, i32 %98)
  %100 = load %struct.be_cmd_get_if_info_resp**, %struct.be_cmd_get_if_info_resp*** %7, align 8
  %101 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %100, align 8
  %102 = call i32 @kfree(%struct.be_cmd_get_if_info_resp* %101)
  br label %104

103:                                              ; preds = %68
  br label %106

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %104
  br i1 true, label %19, label %106

106:                                              ; preds = %105, %103
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %47, %27, %16
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @beiscsi_if_get_handle(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local %struct.be_cmd_get_if_info_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_get_if_info_req*, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, %struct.be_cmd_get_if_info_resp*, i32) #1

declare dso_local i32 @kfree(%struct.be_cmd_get_if_info_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
