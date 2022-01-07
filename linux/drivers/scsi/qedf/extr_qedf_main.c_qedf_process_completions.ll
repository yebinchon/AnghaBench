; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_process_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_process_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_fastpath = type { i64, i64, %struct.qedf_ctx*, i32, %struct.qed_sb_info* }
%struct.qedf_ctx = type { i32, i32, %struct.TYPE_2__*, %struct.global_queue** }
%struct.TYPE_2__ = type { %struct.qedf_ioreq* }
%struct.qedf_ioreq = type { i32, i32 }
%struct.global_queue = type { i32, i64, %struct.fcoe_cqe* }
%struct.fcoe_cqe = type { i32 }
%struct.qed_sb_info = type { %struct.status_block_e4* }
%struct.status_block_e4 = type { i32* }
%struct.qedf_io_work = type { i32, i32*, %struct.qedf_ctx*, i32 }

@QEDF_FCOE_PARAMS_GL_RQ_PI = common dso_local global i64 0, align 8
@FCOE_CQE_CQE_TYPE_SHIFT = common dso_local global i32 0, align 4
@FCOE_CQE_CQE_TYPE_MASK = common dso_local global i32 0, align 4
@FCOE_UNSOLIC_CQE_TYPE = common dso_local global i32 0, align 4
@QEDF_LOG_UNSOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unsolicated CQE.\0A\00", align 1
@FCOE_CQE_TASK_ID_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not allocate work for I/O completion.\0A\00", align 1
@qedf_fp_io_handler = common dso_local global i32 0, align 4
@qedf_io_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_fastpath*)* @qedf_process_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_process_completions(%struct.qedf_fastpath* %0) #0 {
  %2 = alloca %struct.qedf_fastpath*, align 8
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.qed_sb_info*, align 8
  %5 = alloca %struct.status_block_e4*, align 8
  %6 = alloca %struct.global_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fcoe_cqe*, align 8
  %9 = alloca %struct.qedf_io_work*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qedf_ioreq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qedf_fastpath* %0, %struct.qedf_fastpath** %2, align 8
  %16 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %17 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %16, i32 0, i32 2
  %18 = load %struct.qedf_ctx*, %struct.qedf_ctx** %17, align 8
  store %struct.qedf_ctx* %18, %struct.qedf_ctx** %3, align 8
  %19 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %20 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %19, i32 0, i32 4
  %21 = load %struct.qed_sb_info*, %struct.qed_sb_info** %20, align 8
  store %struct.qed_sb_info* %21, %struct.qed_sb_info** %4, align 8
  %22 = load %struct.qed_sb_info*, %struct.qed_sb_info** %4, align 8
  %23 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %22, i32 0, i32 0
  %24 = load %struct.status_block_e4*, %struct.status_block_e4** %23, align 8
  store %struct.status_block_e4* %24, %struct.status_block_e4** %5, align 8
  store i32 0, i32* %10, align 4
  store %struct.qedf_ioreq* null, %struct.qedf_ioreq** %12, align 8
  %25 = load %struct.status_block_e4*, %struct.status_block_e4** %5, align 8
  %26 = getelementptr inbounds %struct.status_block_e4, %struct.status_block_e4* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @QEDF_FCOE_PARAMS_GL_RQ_PI, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %31, i32 0, i32 3
  %33 = load %struct.global_queue**, %struct.global_queue*** %32, align 8
  %34 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %35 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %33, i64 %36
  %38 = load %struct.global_queue*, %struct.global_queue** %37, align 8
  store %struct.global_queue* %38, %struct.global_queue** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %41 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %47 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  br label %57

50:                                               ; preds = %1
  %51 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %52 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 65536, %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  br label %57

57:                                               ; preds = %50, %44
  %58 = phi i32 [ %49, %44 ], [ %56, %50 ]
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %61 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %174, %132, %57
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %177

65:                                               ; preds = %62
  %66 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %67 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %73 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %72, i32 0, i32 2
  %74 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %73, align 8
  %75 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %76 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %74, i64 %77
  store %struct.fcoe_cqe* %78, %struct.fcoe_cqe** %8, align 8
  %79 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %8, align 8
  %80 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FCOE_CQE_CQE_TYPE_SHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* @FCOE_CQE_CQE_TYPE_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @FCOE_UNSOLIC_CQE_TYPE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %65
  %90 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* @QEDF_LOG_UNSOL, align 4
  %93 = call i32 @QEDF_INFO(i32* %91, i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %95 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %96 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %8, align 8
  %99 = call i32 @qedf_process_unsol_compl(%struct.qedf_ctx* %94, i64 %97, %struct.fcoe_cqe* %98)
  br label %159

100:                                              ; preds = %65
  %101 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %8, align 8
  %102 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FCOE_CQE_TASK_ID_MASK, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %13, align 4
  %106 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %110, i64 %112
  store %struct.qedf_ioreq* %113, %struct.qedf_ioreq** %12, align 8
  %114 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %12, align 8
  %115 = icmp ne %struct.qedf_ioreq* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %124

117:                                              ; preds = %100
  %118 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %12, align 8
  %119 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %11, align 4
  %121 = call i32 (...) @smp_processor_id()
  %122 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %12, align 8
  %123 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %116
  %125 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GFP_ATOMIC, align 4
  %129 = call %struct.qedf_io_work* @mempool_alloc(i32 %127, i32 %128)
  store %struct.qedf_io_work* %129, %struct.qedf_io_work** %9, align 8
  %130 = load %struct.qedf_io_work*, %struct.qedf_io_work** %9, align 8
  %131 = icmp ne %struct.qedf_io_work* %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %124
  %133 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %133, i32 0, i32 0
  %135 = call i32 @QEDF_WARN(i32* %134, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %62

136:                                              ; preds = %124
  %137 = load %struct.qedf_io_work*, %struct.qedf_io_work** %9, align 8
  %138 = call i32 @memset(%struct.qedf_io_work* %137, i32 0, i32 32)
  %139 = load %struct.qedf_io_work*, %struct.qedf_io_work** %9, align 8
  %140 = getelementptr inbounds %struct.qedf_io_work, %struct.qedf_io_work* %139, i32 0, i32 0
  %141 = load i32, i32* @qedf_fp_io_handler, align 4
  %142 = call i32 @INIT_WORK(i32* %140, i32 %141)
  %143 = load %struct.qedf_io_work*, %struct.qedf_io_work** %9, align 8
  %144 = getelementptr inbounds %struct.qedf_io_work, %struct.qedf_io_work* %143, i32 0, i32 3
  %145 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %8, align 8
  %146 = call i32 @memcpy(i32* %144, %struct.fcoe_cqe* %145, i32 4)
  %147 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %148 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %147, i32 0, i32 2
  %149 = load %struct.qedf_ctx*, %struct.qedf_ctx** %148, align 8
  %150 = load %struct.qedf_io_work*, %struct.qedf_io_work** %9, align 8
  %151 = getelementptr inbounds %struct.qedf_io_work, %struct.qedf_io_work* %150, i32 0, i32 2
  store %struct.qedf_ctx* %149, %struct.qedf_ctx** %151, align 8
  %152 = load %struct.qedf_io_work*, %struct.qedf_io_work** %9, align 8
  %153 = getelementptr inbounds %struct.qedf_io_work, %struct.qedf_io_work* %152, i32 0, i32 1
  store i32* null, i32** %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @qedf_io_wq, align 4
  %156 = load %struct.qedf_io_work*, %struct.qedf_io_work** %9, align 8
  %157 = getelementptr inbounds %struct.qedf_io_work, %struct.qedf_io_work* %156, i32 0, i32 0
  %158 = call i32 @queue_work_on(i32 %154, i32 %155, i32* %157)
  br label %159

159:                                              ; preds = %136, %89
  %160 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %161 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %161, align 8
  %164 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %165 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %168 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %159
  %172 = load %struct.global_queue*, %struct.global_queue** %6, align 8
  %173 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %171, %159
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %14, align 4
  br label %62

177:                                              ; preds = %62
  ret i32 1
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @qedf_process_unsol_compl(%struct.qedf_ctx*, i64, %struct.fcoe_cqe*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.qedf_io_work* @mempool_alloc(i32, i32) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*) #1

declare dso_local i32 @memset(%struct.qedf_io_work*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_cqe*, i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
