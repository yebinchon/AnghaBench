; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_async_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_async_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%union.iscsi_cqe = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iscsi_async_msg_hdr }
%struct.iscsi_async_msg_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.iscsi_task = type { i32 }
%struct.qedi_conn = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_async = type { i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@QEDI_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@ISCSI_ASYNC_MSG_HDR_DATA_SEG_LEN_MASK = common dso_local global i32 0, align 4
@ISCSI_CQE_TYPE_UNSOLICITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*, i32)* @qedi_process_async_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_process_async_mesg(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3, i32 %4) #0 {
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca %union.iscsi_cqe*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.qedi_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca %struct.iscsi_session*, align 8
  %13 = alloca %struct.iscsi_async_msg_hdr*, align 8
  %14 = alloca %struct.iscsi_async*, align 8
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %6, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %7, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %8, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %22 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %24, align 8
  store %struct.iscsi_conn* %25, %struct.iscsi_conn** %11, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %27, align 8
  store %struct.iscsi_session* %28, %struct.iscsi_session** %12, align 8
  %29 = load i32, i32* @QEDI_BDQ_BUF_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %18, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %34 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %37 = bitcast %union.iscsi_cqe* %36 to %struct.TYPE_8__*
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.iscsi_async_msg_hdr* %39, %struct.iscsi_async_msg_hdr** %13, align 8
  %40 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %41 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ISCSI_ASYNC_MSG_HDR_DATA_SEG_LEN_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @QEDI_BDQ_BUF_SIZE, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %17, align 4
  %48 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %49 = bitcast %union.iscsi_cqe* %48 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ISCSI_CQE_TYPE_UNSOLICITED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %5
  %55 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %55, i32 0, i32 0
  %57 = load i64, i64* %20, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %60 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %61 = bitcast %union.iscsi_cqe* %60 to i32*
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @qedi_unsol_pdu_adjust_bdq(%struct.qedi_ctx* %59, i32* %61, i32 %62, i32 %63, i8* %32)
  %65 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %20, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %54, %5
  %70 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %71 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = bitcast i32* %72 to %struct.iscsi_async*
  store %struct.iscsi_async* %73, %struct.iscsi_async** %14, align 8
  %74 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %75 = call i32 @memset(%struct.iscsi_async* %74, i32 0, i32 4)
  %76 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %77 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %80 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 4
  %81 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %82 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %81, i32 0, i32 0
  store i32 128, i32* %82, align 8
  %83 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %84 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %88, i32* %89, align 4
  %90 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %91 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %98 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %97, i32 0, i32 9
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %100 = call i32 @memcpy(i32* %98, i32* %99, i32 4)
  %101 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %102 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %106 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %105, i32 0, i32 8
  store i8* %104, i8** %106, align 8
  %107 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %108 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %112 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %114 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @cpu_to_be32(i32 %115)
  %117 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %118 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %120 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %123 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %125 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %128 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %130 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cpu_to_be16(i32 %131)
  %133 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %134 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %136 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @cpu_to_be16(i32 %137)
  %139 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %140 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.iscsi_async_msg_hdr*, %struct.iscsi_async_msg_hdr** %13, align 8
  %142 = getelementptr inbounds %struct.iscsi_async_msg_hdr, %struct.iscsi_async_msg_hdr* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @cpu_to_be16(i32 %143)
  %145 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %146 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %148 = load %struct.iscsi_async*, %struct.iscsi_async** %14, align 8
  %149 = bitcast %struct.iscsi_async* %148 to %struct.iscsi_hdr*
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %147, %struct.iscsi_hdr* %149, i8* %32, i32 %150)
  %152 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %153 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %152, i32 0, i32 0
  %154 = call i32 @spin_unlock_bh(i32* %153)
  %155 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %155)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @qedi_unsol_pdu_adjust_bdq(%struct.qedi_ctx*, i32*, i32, i32, i8*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @memset(%struct.iscsi_async*, i32, i32) #2

declare dso_local i8* @cpu_to_be32(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i8* @cpu_to_be16(i32) #2

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
