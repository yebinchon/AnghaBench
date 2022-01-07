; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.beiscsi_hba = type { %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { %struct.wrb_handle** }
%struct.wrb_handle = type { %struct.iscsi_task* }
%struct.iscsi_task = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sol_cqe = type { i32 }
%struct.common_sol_cqe = type { i64, i32, i32 }
%struct.beiscsi_io_task = type { i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@ISCSI_OP_NOOP_OUT = common dso_local global i32 0, align 4
@ISCSI_OP_LOGOUT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"BM_%d :\09\09 No HWH_TYPE_LOGIN Expected in hwi_complete_cmd- Solicited path\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"BM_%d : In hwi_complete_cmd, unknown type = %dwrb_index 0x%x CID 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_conn*, %struct.beiscsi_hba*, %struct.sol_cqe*)* @hwi_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_complete_cmd(%struct.beiscsi_conn* %0, %struct.beiscsi_hba* %1, %struct.sol_cqe* %2) #0 {
  %4 = alloca %struct.beiscsi_conn*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.sol_cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca %struct.common_sol_cqe, align 8
  %10 = alloca %struct.hwi_wrb_context*, align 8
  %11 = alloca %struct.hwi_controller*, align 8
  %12 = alloca %struct.wrb_handle*, align 8
  %13 = alloca %struct.iscsi_task*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.beiscsi_conn* %0, %struct.beiscsi_conn** %4, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %5, align 8
  store %struct.sol_cqe* %2, %struct.sol_cqe** %6, align 8
  %16 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %17 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %7, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %20, align 8
  store %struct.iscsi_session* %21, %struct.iscsi_session** %8, align 8
  %22 = bitcast %struct.common_sol_cqe* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  store i64 0, i64* %14, align 8
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 0
  %25 = load %struct.hwi_controller*, %struct.hwi_controller** %24, align 8
  store %struct.hwi_controller* %25, %struct.hwi_controller** %11, align 8
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %27 = load %struct.sol_cqe*, %struct.sol_cqe** %6, align 8
  %28 = call i32 @adapter_get_sol_cqe(%struct.beiscsi_hba* %26, %struct.sol_cqe* %27, %struct.common_sol_cqe* %9)
  %29 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @BE_GET_CRI_FROM_CID(i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %33 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %32, i32 0, i32 0
  %34 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %34, i64 %35
  store %struct.hwi_wrb_context* %36, %struct.hwi_wrb_context** %10, align 8
  %37 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %10, align 8
  %38 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %37, i32 0, i32 0
  %39 = load %struct.wrb_handle**, %struct.wrb_handle*** %38, align 8
  %40 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %39, i64 %41
  %43 = load %struct.wrb_handle*, %struct.wrb_handle** %42, align 8
  store %struct.wrb_handle* %43, %struct.wrb_handle** %12, align 8
  %44 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %45 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load %struct.wrb_handle*, %struct.wrb_handle** %12, align 8
  %48 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %47, i32 0, i32 0
  %49 = load %struct.iscsi_task*, %struct.iscsi_task** %48, align 8
  store %struct.iscsi_task* %49, %struct.iscsi_task** %13, align 8
  %50 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %51 = icmp ne %struct.iscsi_task* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %3
  %53 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %54 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  br label %129

56:                                               ; preds = %3
  %57 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %58 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.beiscsi_io_task*
  %61 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  switch i32 %63, label %113 [
    i32 132, label %64
    i32 131, label %64
    i32 129, label %83
    i32 130, label %102
    i32 128, label %109
  ]

64:                                               ; preds = %56, %56
  %65 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %66 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @ISCSI_OP_NOOP_OUT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %76 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %77 = call i32 @be_complete_nopin_resp(%struct.beiscsi_conn* %75, %struct.iscsi_task* %76, %struct.common_sol_cqe* %9)
  br label %82

78:                                               ; preds = %64
  %79 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %80 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %81 = call i32 @be_complete_io(%struct.beiscsi_conn* %79, %struct.iscsi_task* %80, %struct.common_sol_cqe* %9)
  br label %82

82:                                               ; preds = %78, %74
  br label %125

83:                                               ; preds = %56
  %84 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %85 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @ISCSI_OP_LOGOUT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %95 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %96 = call i32 @be_complete_logout(%struct.beiscsi_conn* %94, %struct.iscsi_task* %95, %struct.common_sol_cqe* %9)
  br label %101

97:                                               ; preds = %83
  %98 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %99 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %100 = call i32 @be_complete_tmf(%struct.beiscsi_conn* %98, %struct.iscsi_task* %99, %struct.common_sol_cqe* %9)
  br label %101

101:                                              ; preds = %97, %93
  br label %125

102:                                              ; preds = %56
  %103 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %106 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %107 = or i32 %105, %106
  %108 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %103, i32 %104, i32 %107, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %125

109:                                              ; preds = %56
  %110 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %111 = load %struct.iscsi_task*, %struct.iscsi_task** %13, align 8
  %112 = call i32 @be_complete_nopin_resp(%struct.beiscsi_conn* %110, %struct.iscsi_task* %111, %struct.common_sol_cqe* %9)
  br label %125

113:                                              ; preds = %56
  %114 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %115 = load i32, i32* @KERN_WARNING, align 4
  %116 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %117 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %15, align 4
  %120 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %9, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %9, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %114, i32 %115, i32 %118, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %119, i64 %121, i32 %123)
  br label %125

125:                                              ; preds = %113, %109, %102, %101, %82
  %126 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %127 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock_bh(i32* %127)
  br label %129

129:                                              ; preds = %125, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @adapter_get_sol_cqe(%struct.beiscsi_hba*, %struct.sol_cqe*, %struct.common_sol_cqe*) #2

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @be_complete_nopin_resp(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @be_complete_io(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @be_complete_logout(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @be_complete_tmf(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
