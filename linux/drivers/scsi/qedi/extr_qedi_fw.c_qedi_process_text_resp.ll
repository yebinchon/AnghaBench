; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_text_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_text_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32 }
%union.iscsi_cqe = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iscsi_text_response_hdr }
%struct.iscsi_text_response_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_task = type { i64 }
%struct.qedi_conn = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32 }
%struct.e4_iscsi_task_context = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i32 }
%struct.iscsi_text_rsp = type { i8*, i8*, i8*, i32, i32, i32, i64, i32, i32 }
%struct.qedi_cmd = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_TEXT_RESPONSE_HDR_DATA_SEG_LEN_MASK = common dso_local global i32 0, align 4
@QEDI_LOG_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Freeing tid=0x%x for cid=0x%x\0A\00", align 1
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Active cmd list node already deleted, tid=0x%x, cid=0x%x, io_cmd_node=%p\0A\00", align 1
@RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*)* @qedi_process_text_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_process_text_resp(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %union.iscsi_cqe*, align 8
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca %struct.qedi_conn*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.e4_iscsi_task_context*, align 8
  %12 = alloca %struct.iscsi_text_rsp*, align 8
  %13 = alloca %struct.iscsi_text_response_hdr*, align 8
  %14 = alloca %struct.qedi_cmd*, align 8
  %15 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %6, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %7, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %8, align 8
  %16 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %17 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %19, align 8
  store %struct.iscsi_conn* %20, %struct.iscsi_conn** %9, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %22, align 8
  store %struct.iscsi_session* %23, %struct.iscsi_session** %10, align 8
  %24 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %25 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %27, %struct.qedi_cmd** %14, align 8
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 1
  %30 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %31 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.iscsi_text_rsp* @qedi_get_task_mem(i32* %29, i32 %32)
  %34 = bitcast %struct.iscsi_text_rsp* %33 to %struct.e4_iscsi_task_context*
  store %struct.e4_iscsi_task_context* %34, %struct.e4_iscsi_task_context** %11, align 8
  %35 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %36 = bitcast %union.iscsi_cqe* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store %struct.iscsi_text_response_hdr* %38, %struct.iscsi_text_response_hdr** %13, align 8
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %43 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = bitcast i32* %44 to %struct.iscsi_text_rsp*
  store %struct.iscsi_text_rsp* %45, %struct.iscsi_text_rsp** %12, align 8
  %46 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %47 = call i32 @memset(%struct.iscsi_text_rsp* %46, i8 signext 0, i32 4)
  %48 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %49 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %52 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %54 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %57 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %59 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %61 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %64 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ISCSI_TEXT_RESPONSE_HDR_DATA_SEG_LEN_MASK, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @hton24(i32 %62, i32 %67)
  %69 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %70 = bitcast %union.iscsi_cqe* %69 to %struct.TYPE_9__*
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %74 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %73, i32 0, i32 0
  %75 = load %struct.iscsi_session*, %struct.iscsi_session** %74, align 8
  %76 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @build_itt(i32 %72, i32 %77)
  %79 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %80 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %82 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %85 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %87 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_be32(i32 %88)
  %90 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %91 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %93 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be32(i32 %94)
  %96 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %97 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %99 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %103 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load %struct.iscsi_text_response_hdr*, %struct.iscsi_text_response_hdr** %13, align 8
  %105 = getelementptr inbounds %struct.iscsi_text_response_hdr, %struct.iscsi_text_response_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ISCSI_TEXT_RESPONSE_HDR_DATA_SEG_LEN_MASK, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %15, align 4
  %109 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %110 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %117 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %11, align 8
  %120 = bitcast %struct.e4_iscsi_task_context* %119 to %struct.iscsi_text_rsp*
  %121 = call i32 @memset(%struct.iscsi_text_rsp* %120, i8 signext 0, i32 56)
  %122 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %123 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %122, i32 0, i32 0
  %124 = load i32, i32* @QEDI_LOG_TID, align 4
  %125 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %126 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %129 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32*, i32, i8*, i32, i32, ...) @QEDI_INFO(i32* %123, i32 %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %130)
  %132 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %133 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @likely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %4
  %138 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %139 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %138, i32 0, i32 0
  store i32 0, i32* %139, align 4
  %140 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %141 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %140, i32 0, i32 3
  %142 = call i32 @list_del_init(i32* %141)
  %143 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %144 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 4
  br label %160

147:                                              ; preds = %4
  %148 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %149 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %148, i32 0, i32 0
  %150 = load i32, i32* @QEDI_LOG_INFO, align 4
  %151 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %152 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %155 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %158 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %157, i32 0, i32 3
  %159 = call i32 (i32*, i32, i8*, i32, i32, ...) @QEDI_INFO(i32* %149, i32 %150, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %156, i32* %158)
  br label %160

160:                                              ; preds = %147, %137
  %161 = load i32, i32* @RESPONSE_RECEIVED, align 4
  %162 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %163 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %165 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %166 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @qedi_clear_task_idx(%struct.qedi_ctx* %164, i32 %167)
  %169 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %170 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %12, align 8
  %171 = bitcast %struct.iscsi_text_rsp* %170 to %struct.iscsi_hdr*
  %172 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %173 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %177 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %181 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %179, %183
  %185 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %169, %struct.iscsi_hdr* %171, i64 %175, i64 %184)
  %186 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %187 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %186, i32 0, i32 0
  %188 = call i32 @spin_unlock(i32* %187)
  ret void
}

declare dso_local %struct.iscsi_text_rsp* @qedi_get_task_mem(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.iscsi_text_rsp*, i8 signext, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @build_itt(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @qedi_clear_task_idx(%struct.qedi_ctx*, i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
