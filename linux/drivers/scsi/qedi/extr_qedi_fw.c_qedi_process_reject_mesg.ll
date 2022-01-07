; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_reject_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_process_reject_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%union.iscsi_cqe = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iscsi_reject_hdr }
%struct.iscsi_reject_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_task = type { i32 }
%struct.qedi_conn = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_reject = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_REJECT_HDR_DATA_SEG_LEN_MASK = common dso_local global i32 0, align 4
@QEDI_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@ISCSI_CQE_TYPE_UNSOLICITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.qedi_conn*, i32)* @qedi_process_reject_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_process_reject_mesg(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.qedi_conn* %3, i32 %4) #0 {
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca %union.iscsi_cqe*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.qedi_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca %struct.iscsi_session*, align 8
  %13 = alloca %struct.iscsi_reject_hdr*, align 8
  %14 = alloca %struct.iscsi_reject*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %6, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %7, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %8, align 8
  store %struct.qedi_conn* %3, %struct.qedi_conn** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %19 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %21, align 8
  store %struct.iscsi_conn* %22, %struct.iscsi_conn** %11, align 8
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 1
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %24, align 8
  store %struct.iscsi_session* %25, %struct.iscsi_session** %12, align 8
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %30 = bitcast %union.iscsi_cqe* %29 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.iscsi_reject_hdr* %32, %struct.iscsi_reject_hdr** %13, align 8
  %33 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %34 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ISCSI_REJECT_HDR_DATA_SEG_LEN_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @QEDI_BDQ_BUF_SIZE, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %16, align 4
  %41 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %42 = bitcast %union.iscsi_cqe* %41 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ISCSI_CQE_TYPE_UNSOLICITED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %5
  %48 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %17, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %53 = load %union.iscsi_cqe*, %union.iscsi_cqe** %7, align 8
  %54 = bitcast %union.iscsi_cqe* %53 to i32*
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @qedi_unsol_pdu_adjust_bdq(%struct.qedi_ctx* %52, i32* %54, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %61, i32 0, i32 0
  %63 = load i64, i64* %17, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %47, %5
  %66 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %67 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = bitcast i32* %68 to %struct.iscsi_reject*
  store %struct.iscsi_reject* %69, %struct.iscsi_reject** %14, align 8
  %70 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %71 = call i32 @memset(%struct.iscsi_reject* %70, i32 0, i32 4)
  %72 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %73 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %76 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %78 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %81 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %83 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %86 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %88 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %91 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ISCSI_REJECT_HDR_DATA_SEG_LEN_MASK, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @hton24(i32 %89, i32 %94)
  %96 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %97 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %101 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %103 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_be32(i32 %104)
  %106 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %107 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.iscsi_reject_hdr*, %struct.iscsi_reject_hdr** %13, align 8
  %109 = getelementptr inbounds %struct.iscsi_reject_hdr, %struct.iscsi_reject_hdr* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_be32(i32 %110)
  %112 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %113 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = call i8* @cpu_to_be32(i32 -1)
  %115 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %116 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %118 = load %struct.iscsi_reject*, %struct.iscsi_reject** %14, align 8
  %119 = bitcast %struct.iscsi_reject* %118 to %struct.iscsi_hdr*
  %120 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %121 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %117, %struct.iscsi_hdr* %119, i32 %122, i32 %123)
  %125 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %126 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock_bh(i32* %126)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qedi_unsol_pdu_adjust_bdq(%struct.qedi_ctx*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.iscsi_reject*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
