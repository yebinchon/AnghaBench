; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_logout_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_logout_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%union.iscsi_cqe = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iscsi_logout_response_hdr }
%struct.iscsi_logout_response_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_task = type { i64 }
%struct.qedi_conn = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32 }
%struct.iscsi_logout_rsp = type { i8*, i8*, i8*, i8*, i8*, i32, i64, i32, i32 }
%struct.qedi_cmd = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.iscsi_hdr = type { i32 }

@QEDI_LOG_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Freeing tid=0x%x for cid=0x%x\0A\00", align 1
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Active cmd list node already deleted, tid=0x%x, cid=0x%x, io_cmd_node=%p\0A\00", align 1
@RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*)* @qedi_process_logout_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_process_logout_resp(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %union.iscsi_cqe*, align 8
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca %struct.qedi_conn*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_logout_rsp*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  %12 = alloca %struct.iscsi_logout_response_hdr*, align 8
  %13 = alloca %struct.qedi_cmd*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %6, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %7, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %8, align 8
  %14 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %15 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %9, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %20, align 8
  store %struct.iscsi_session* %21, %struct.iscsi_session** %11, align 8
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %23 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %25, %struct.qedi_cmd** %13, align 8
  %26 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %27 = bitcast %union.iscsi_cqe* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store %struct.iscsi_logout_response_hdr* %29, %struct.iscsi_logout_response_hdr** %12, align 8
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %34 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.iscsi_logout_rsp*
  store %struct.iscsi_logout_rsp* %36, %struct.iscsi_logout_rsp** %10, align 8
  %37 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %38 = call i32 @memset(%struct.iscsi_logout_rsp* %37, i32 0, i32 4)
  %39 = load %struct.iscsi_logout_response_hdr*, %struct.iscsi_logout_response_hdr** %12, align 8
  %40 = getelementptr inbounds %struct.iscsi_logout_response_hdr, %struct.iscsi_logout_response_hdr* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %43 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load %struct.iscsi_logout_response_hdr*, %struct.iscsi_logout_response_hdr** %12, align 8
  %45 = getelementptr inbounds %struct.iscsi_logout_response_hdr, %struct.iscsi_logout_response_hdr* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %48 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %50 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %52 = bitcast %union.iscsi_cqe* %51 to %struct.TYPE_10__*
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %56 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %55, i32 0, i32 0
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %56, align 8
  %58 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @build_itt(i32 %54, i32 %59)
  %61 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %62 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.iscsi_logout_response_hdr*, %struct.iscsi_logout_response_hdr** %12, align 8
  %64 = getelementptr inbounds %struct.iscsi_logout_response_hdr, %struct.iscsi_logout_response_hdr* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %68 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load %struct.iscsi_logout_response_hdr*, %struct.iscsi_logout_response_hdr** %12, align 8
  %70 = getelementptr inbounds %struct.iscsi_logout_response_hdr, %struct.iscsi_logout_response_hdr* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_be32(i32 %71)
  %73 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %74 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.iscsi_logout_response_hdr*, %struct.iscsi_logout_response_hdr** %12, align 8
  %76 = getelementptr inbounds %struct.iscsi_logout_response_hdr, %struct.iscsi_logout_response_hdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_be32(i32 %77)
  %79 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %80 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.iscsi_logout_response_hdr*, %struct.iscsi_logout_response_hdr** %12, align 8
  %82 = getelementptr inbounds %struct.iscsi_logout_response_hdr, %struct.iscsi_logout_response_hdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %86 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.iscsi_logout_response_hdr*, %struct.iscsi_logout_response_hdr** %12, align 8
  %88 = getelementptr inbounds %struct.iscsi_logout_response_hdr, %struct.iscsi_logout_response_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_be32(i32 %89)
  %91 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %92 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* @QEDI_LOG_TID, align 4
  %96 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %97 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %100 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32*, i32, i8*, i32, i32, ...) @QEDI_INFO(i32* %94, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %104 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @likely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %4
  %109 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %110 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %112 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %111, i32 0, i32 3
  %113 = call i32 @list_del_init(i32* %112)
  %114 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %115 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  br label %131

118:                                              ; preds = %4
  %119 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %119, i32 0, i32 0
  %121 = load i32, i32* @QEDI_LOG_INFO, align 4
  %122 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %123 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %126 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %129 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %128, i32 0, i32 3
  %130 = call i32 (i32*, i32, i8*, i32, i32, ...) @QEDI_INFO(i32* %120, i32 %121, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %118, %108
  %132 = load i32, i32* @RESPONSE_RECEIVED, align 4
  %133 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %134 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %136 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %137 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @qedi_clear_task_idx(%struct.qedi_ctx* %135, i32 %138)
  %140 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %141 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %142 = bitcast %struct.iscsi_logout_rsp* %141 to %struct.iscsi_hdr*
  %143 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %140, %struct.iscsi_hdr* %142, i32* null, i32 0)
  %144 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %145 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock(i32* %145)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.iscsi_logout_rsp*, i32, i32) #1

declare dso_local i32 @build_itt(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @qedi_clear_task_idx(%struct.qedi_ctx*, i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
