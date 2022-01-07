; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_tmf_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_tmf_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32 }
%union.iscsi_cqe = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iscsi_tmf_response_hdr }
%struct.iscsi_tmf_response_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_task = type { %struct.qedi_cmd* }
%struct.qedi_cmd = type { i32, i32, i32, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.qedi_conn = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32 }
%struct.iscsi_tm_rsp = type { i8*, i8*, i8*, i32, i32, i64, i32, i32, i32 }
%struct.iscsi_tm = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iscsi_hdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate resp buf, cid=0x%x\0A\00", align 1
@ISCSI_TMF_RESPONSE_HDR_DATA_SEG_LEN_MASK = common dso_local global i32 0, align 4
@ISCSI_FLAG_TM_FUNC_MASK = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_LOGICAL_UNIT_RESET = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_TARGET_WARM_RESET = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_TARGET_COLD_RESET = common dso_local global i32 0, align 4
@qedi_tmf_resp_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*)* @qedi_process_tmf_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_process_tmf_resp(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %union.iscsi_cqe*, align 8
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca %struct.qedi_conn*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.iscsi_tmf_response_hdr*, align 8
  %12 = alloca %struct.iscsi_tm_rsp*, align 8
  %13 = alloca %struct.iscsi_tm*, align 8
  %14 = alloca %struct.qedi_cmd*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %6, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %7, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %8, align 8
  %15 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %16 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %18, align 8
  store %struct.iscsi_conn* %19, %struct.iscsi_conn** %9, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %21, align 8
  store %struct.iscsi_session* %22, %struct.iscsi_session** %10, align 8
  store %struct.qedi_cmd* null, %struct.qedi_cmd** %14, align 8
  %23 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %24 = bitcast %union.iscsi_cqe* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.iscsi_tmf_response_hdr* %26, %struct.iscsi_tmf_response_hdr** %11, align 8
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %27, i32 0, i32 0
  %29 = load %struct.qedi_cmd*, %struct.qedi_cmd** %28, align 8
  store %struct.qedi_cmd* %29, %struct.qedi_cmd** %14, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i64 @kzalloc(i32 56, i32 %30)
  %32 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %33 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %35 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %4
  %39 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %39, i32 0, i32 1
  %41 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %42 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @QEDI_ERR(i32* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %183

45:                                               ; preds = %4
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %47 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %50 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.iscsi_tm_rsp*
  store %struct.iscsi_tm_rsp* %52, %struct.iscsi_tm_rsp** %12, align 8
  %53 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %54 = call i32 @memset(%struct.iscsi_tm_rsp* %53, i32 0, i32 56)
  %55 = load %struct.iscsi_tmf_response_hdr*, %struct.iscsi_tmf_response_hdr** %11, align 8
  %56 = getelementptr inbounds %struct.iscsi_tmf_response_hdr, %struct.iscsi_tmf_response_hdr* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %59 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load %struct.iscsi_tmf_response_hdr*, %struct.iscsi_tmf_response_hdr** %11, align 8
  %61 = getelementptr inbounds %struct.iscsi_tmf_response_hdr, %struct.iscsi_tmf_response_hdr* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %64 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.iscsi_tmf_response_hdr*, %struct.iscsi_tmf_response_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.iscsi_tmf_response_hdr, %struct.iscsi_tmf_response_hdr* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %69 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %71 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %73 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iscsi_tmf_response_hdr*, %struct.iscsi_tmf_response_hdr** %11, align 8
  %76 = getelementptr inbounds %struct.iscsi_tmf_response_hdr, %struct.iscsi_tmf_response_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ISCSI_TMF_RESPONSE_HDR_DATA_SEG_LEN_MASK, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @hton24(i32 %74, i32 %79)
  %81 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %82 = bitcast %union.iscsi_cqe* %81 to %struct.TYPE_9__*
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %86 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %85, i32 0, i32 0
  %87 = load %struct.iscsi_session*, %struct.iscsi_session** %86, align 8
  %88 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @build_itt(i32 %84, i32 %89)
  %91 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %92 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.iscsi_tmf_response_hdr*, %struct.iscsi_tmf_response_hdr** %11, align 8
  %94 = getelementptr inbounds %struct.iscsi_tmf_response_hdr, %struct.iscsi_tmf_response_hdr* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %98 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.iscsi_tmf_response_hdr*, %struct.iscsi_tmf_response_hdr** %11, align 8
  %100 = getelementptr inbounds %struct.iscsi_tmf_response_hdr, %struct.iscsi_tmf_response_hdr* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_be32(i32 %101)
  %103 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %104 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.iscsi_tmf_response_hdr*, %struct.iscsi_tmf_response_hdr** %11, align 8
  %106 = getelementptr inbounds %struct.iscsi_tmf_response_hdr, %struct.iscsi_tmf_response_hdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @cpu_to_be32(i32 %107)
  %109 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %110 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %112 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %111, i32 0, i32 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.iscsi_tm*
  store %struct.iscsi_tm* %116, %struct.iscsi_tm** %13, align 8
  %117 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %118 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @likely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %45
  %123 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %124 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %126 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %125, i32 0, i32 3
  %127 = call i32 @list_del_init(i32* %126)
  %128 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %129 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %122, %45
  %133 = load %struct.iscsi_tm*, %struct.iscsi_tm** %13, align 8
  %134 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @ISCSI_TM_FUNC_LOGICAL_UNIT_RESET, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %156, label %140

140:                                              ; preds = %132
  %141 = load %struct.iscsi_tm*, %struct.iscsi_tm** %13, align 8
  %142 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @ISCSI_TM_FUNC_TARGET_WARM_RESET, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %140
  %149 = load %struct.iscsi_tm*, %struct.iscsi_tm** %13, align 8
  %150 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @ISCSI_TM_FUNC_TARGET_COLD_RESET, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %148, %140, %132
  %157 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %158 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %157, i32 0, i32 2
  %159 = load i32, i32* @qedi_tmf_resp_work, align 4
  %160 = call i32 @INIT_WORK(i32* %158, i32 %159)
  %161 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %162 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %165 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %164, i32 0, i32 2
  %166 = call i32 @queue_work(i32 %163, i32* %165)
  br label %179

167:                                              ; preds = %148
  %168 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %169 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %170 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @qedi_clear_task_idx(%struct.qedi_ctx* %168, i32 %171)
  %173 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %174 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %175 = bitcast %struct.iscsi_tm_rsp* %174 to %struct.iscsi_hdr*
  %176 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %173, %struct.iscsi_hdr* %175, i32* null, i32 0)
  %177 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %12, align 8
  %178 = call i32 @kfree(%struct.iscsi_tm_rsp* %177)
  br label %179

179:                                              ; preds = %167, %156
  %180 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %181 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %180, i32 0, i32 0
  %182 = call i32 @spin_unlock(i32* %181)
  br label %183

183:                                              ; preds = %179, %38
  ret void
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.iscsi_tm_rsp*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @build_itt(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @qedi_clear_task_idx(%struct.qedi_ctx*, i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.iscsi_tm_rsp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
